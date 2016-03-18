module Four.Geometry where

import Four.Common exposing (..)
import Math.Vector3 exposing (..)
import Math.Vector4 exposing (..)
import WebGL exposing (..)

hypercube : Drawable Vertex
hypercube =
  let points =
        [ (-1, -1, -1, -1)
        , (-1, -1, -1, 1)
        , (-1, -1, 1, -1)
        , (-1, -1, 1, 1)
        , (-1, 1, -1, -1)
        , (-1, 1, -1, 1)
        , (-1, 1, 1, -1)
        , (-1, 1, 1, 1)
        , (1, -1, -1, -1)
        , (1, -1, -1, 1)
        , (1, -1, 1, -1)
        , (1, -1, 1, 1)
        , (1, 1, -1, -1)
        , (1, 1, -1, 1)
        , (1, 1, 1, -1)
        , (1, 1, 1, 1)
        ]
      vex (a,b,c,d) = Vertex (vec4 a b c d) (vec3 1 0 0)
  in LineLoop <| List.map vex points
