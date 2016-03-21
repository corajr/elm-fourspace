module Test.Four.Math where

import ElmTest exposing (..)
import Four.Math exposing (concatColumns, cross4, toList)
import Math.Vector4 exposing (vec4, toTuple)
import Math.Matrix4 exposing (transpose)

identity1 = Math.Matrix4.identity

identityList = [ 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

identity' = concatColumns (vec4 1 0 0 0) (vec4 0 1 0 0) (vec4 0 0 1 0) (vec4 0 0 0 1)

toListSuite : Test
toListSuite =
  suite "toList"
    [ test "identity" (assertEqual (toList identity1) identityList) ]

concatColumnsSuite : Test
concatColumnsSuite =
  suite "concatColumns"
    [ test "should return identity matrix" (assertEqual (toList identity1) (toList identity'))
    ]

cross4Suite : Test
cross4Suite =
  let u = vec4 1 0 0 0
      v = vec4 0 1 0 0
      w = vec4 0 0 1 0
  in suite "cross4"
       [ test "3 axes" (assertEqual (0, 0, 0, -1) (toTuple <| cross4 u v w))
       ]

all : Test
all =
  suite "Four.Math"
    [ toListSuite
    , concatColumnsSuite
    , cross4Suite
    ]
