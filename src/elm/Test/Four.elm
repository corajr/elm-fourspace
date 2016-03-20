module Test.Four where

import ElmTest exposing (..)

makeFourProjectionSuite : Test
makeFourProjectionSuite =
  suite ""
        [ test "" (assertEqual 0 0)
        ]

all : Test
all =
  suite "Four"
         [ 
         ]
