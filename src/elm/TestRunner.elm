module Main where

import ElmTest exposing (..)
import Graphics.Element exposing (Element)

import Test.Four

allTests : Test
allTests =
  suite "All tests"
    [ Four.all
    ]

main : Element
main =
  elementRunner allTests
