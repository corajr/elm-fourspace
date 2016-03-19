module Four where

import Effects exposing (Effects)
import Four.Common exposing (..)
import Four.Render exposing (makeFourTransform, vertexShader, fragmentShader)
import Math.Vector3 exposing (..)
import Math.Vector4 exposing (..)
import Math.Matrix4 exposing (..)
import WebGL exposing (..)
import Debug exposing (log)
import Html exposing (div, button, text, fromElement)

type alias Model =
  { mesh : Drawable Vertex
  , angle3 : Float
  , angle4 : Float
  , viewport : (Int, Int)
  }

type Action = Rotate Float

init : Drawable Vertex -> (Model, Effects action)
init mesh =
  ({ mesh = mesh, angle3 = degrees 45, angle4 = degrees 45, viewport = (400, 400) }
  , Effects.none)

uniforms : Model -> Uniforms
uniforms model =
  let t = model.angle3
      fourFrom = vec4 4 0 0 0
      fourTo = vec4 0 0 0 0
      fourUp = vec4 0 1 0 0
      fourOver = vec4 0 0 1 0
  in { fourFrom = fourFrom
     , fourTangent = tan (model.angle4 / 2.0)
     , fourTransform = makeFourTransform fourFrom fourTo fourUp fourOver
     , rotation = mul (makeRotate (3*t) (vec3 0 1 0)) (makeRotate (2*t) (vec3 1 0 0))
     , perspective = makePerspective 45 1 0.01 100
     , camera = makeLookAt (vec3 3 1 2) (vec3 0 0 0) (vec3 0 1 0)
     , near = 1.0
     , far = 5.0
     , opacity = 0.3
     }

scene : Model -> List Renderable
scene model =
  [ render vertexShader fragmentShader model.mesh (uniforms model) ]

glConfig =
  defaultConfiguration ++ [ Enable Blend
                          , BlendFunc (SrcAlpha, OneMinusSrcAlpha)
                          ]

view address model =
  div []
      [ fromElement <| webglWithConfig glConfig model.viewport (scene model)
      ]

update action model =
  case action of
    Rotate t ->
      let angle3 = pi * t
      in ({ model | angle3 = angle3 }, Effects.none)
