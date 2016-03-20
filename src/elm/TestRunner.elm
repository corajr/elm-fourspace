module Main where

import ElmTest exposing (..)
import Graphics.Element exposing (Element)

import Test.Four
import Test.Four.Math

allTests : Test
allTests =
  suite "All tests"
    [ Test.Four.all
    , Test.Four.Math.all
    ]

main : Element
main =
  elementRunner allTests
