module Test.Four where

import ElmTest exposing (..)

makeFourProjectionSuite : Test
makeFourProjectionSuite =
  suite "makeFourProjection"
        [ test "" (assertEqual zero)
        ]

all : Test
all =
  suite "Four"
         [ makeFourProjectionSuite
         ]
