module Test.Four.Math where

import ElmTest exposing (..)
import Four.Math exposing (concatColumns, cross4)
import Math.Vector4 exposing (vec4)
import Math.Matrix4

concatColumnsSuite : Test
concatColumnsSuite =
  suite "concatColumns"
    [ test "should return identity matrix" (assertEqual Math.Matrix4.identity (concatColumns (vec4 1 0 0 0) (vec4 0 1 0 0) (vec4 0 0 1 0) (vec4 0 0 0 1)))
    ]

all : Test
all =
  suite "Four.Math"
    [ concatColumnsSuite
    ]
