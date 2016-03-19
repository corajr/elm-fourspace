module Four.Geometry.Index where

import Four.Common exposing (..)
import Array exposing (Array)
import WebGL exposing (..)
import Math.Vector3 exposing (Vec3, vec3)
import Math.Vector4 exposing (Vec4, vec4)

fromVerticesAndEdges : Array Vec4 -> List (Int, Int) -> Drawable Vertex
fromVerticesAndEdges vertices edges =
  Lines <| List.filterMap (getEdge vertices) edges

fromVerticesAndFaces : Array Vec4 -> List (Int, Int, Int) -> Drawable Vertex
fromVerticesAndFaces vertices faces =
  Triangle <| List.filterMap (getFace vertices) faces

getEdge : Array Vec4 -> (Int, Int) -> Maybe (Vertex, Vertex)
getEdge vertices (a,b) =
  Maybe.map2 (\a b -> (Vertex a (vec3 0 0 0), Vertex b (vec3 0 0 0)))
       (Array.get a vertices)
       (Array.get b vertices)

getFace : Array Vec4 -> (Int, Int, Int) -> Maybe (Vertex, Vertex, Vertex)
getFace vertices (a,b,c) =
  Maybe.map3 (\a b c-> ( Vertex a (vec3 0 0 0)
                      , Vertex b (vec3 0 0 0)
                      , Vertex c (vec3 0 0 0)))
         (Array.get a vertices)
         (Array.get b vertices)
         (Array.get c vertices)

