module Four.Common where

import Math.Vector3 exposing (..)
import Math.Vector4 exposing (..)
import Math.Matrix4 exposing (..)

type alias Vertex =
  { position : Vec4
  , color : Vec3 }

type alias Uniforms =
  { fourFrom : Vec4
  , fourTangent : Float
  , fourTransform : Mat4
  , rotation : Mat4
  , perspective : Mat4
  , camera : Mat4
  , shade : Float }
