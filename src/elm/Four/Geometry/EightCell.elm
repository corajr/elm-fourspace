module Four.Geometry.EightCell where

import Math.Vector4 exposing (..)
import Array

eightCellVertices = Array.fromList
  [ vec4 -1.0 -1.0 -1.0 -1.0
  , vec4 -1.0 -1.0 -1.0 1.0
  , vec4 -1.0 -1.0 1.0 -1.0
  , vec4 -1.0 -1.0 1.0 1.0
  , vec4 -1.0 1.0 -1.0 -1.0
  , vec4 -1.0 1.0 -1.0 1.0
  , vec4 -1.0 1.0 1.0 -1.0
  , vec4 -1.0 1.0 1.0 1.0
  , vec4 1.0 -1.0 -1.0 -1.0
  , vec4 1.0 -1.0 -1.0 1.0
  , vec4 1.0 -1.0 1.0 -1.0
  , vec4 1.0 -1.0 1.0 1.0
  , vec4 1.0 1.0 -1.0 -1.0
  , vec4 1.0 1.0 -1.0 1.0
  , vec4 1.0 1.0 1.0 -1.0
  , vec4 1.0 1.0 1.0 1.0
  ]

eightCellEdges =
  [ (0,2)
  , (2,3)
  , (3,1)
  , (1,0)
  , (0,4)
  , (4,5)
  , (5,1)
  , (4,6)
  , (6,2)
  , (0,8)
  , (8,9)
  , (9,1)
  , (8,10)
  , (10,2)
  , (8,12)
  , (12,4)
  , (6,7)
  , (7,5)
  , (7,3)
  , (10,11)
  , (11,3)
  , (9,11)
  , (9,13)
  , (13,5)
  , (12,13)
  , (12,14)
  , (14,10)
  , (14,6)
  , (14,15)
  , (15,13)
  , (15,11)
  , (15,7)
  ]

eightCellFaces =
  [ (4,0,2)
  , (0,2,3)
  , (2,3,1)
  , (3,1,4)
  , (4,0,4)
  , (0,4,5)
  , (4,5,1)
  , (5,1,4)
  , (4,0,4)
  , (0,4,6)
  , (4,6,2)
  , (6,2,4)
  , (4,0,8)
  , (0,8,9)
  , (8,9,1)
  , (9,1,4)
  , (4,0,8)
  , (0,8,10)
  , (8,10,2)
  , (10,2,4)
  , (4,0,8)
  , (0,8,12)
  , (8,12,4)
  , (12,4,4)
  , (4,4,6)
  , (4,6,7)
  , (6,7,5)
  , (7,5,4)
  , (4,2,6)
  , (2,6,7)
  , (6,7,3)
  , (7,3,4)
  , (4,1,5)
  , (1,5,7)
  , (5,7,3)
  , (7,3,4)
  , (4,2,10)
  , (2,10,11)
  , (10,11,3)
  , (11,3,4)
  , (4,1,9)
  , (1,9,11)
  , (9,11,3)
  , (11,3,4)
  , (4,1,9)
  , (1,9,13)
  , (9,13,5)
  , (13,5,4)
  , (4,8,10)
  , (8,10,11)
  , (10,11,9)
  , (11,9,4)
  , (4,8,12)
  , (8,12,13)
  , (12,13,9)
  , (13,9,4)
  , (4,8,12)
  , (8,12,14)
  , (12,14,10)
  , (14,10,4)
  , (4,4,12)
  , (4,12,13)
  , (12,13,5)
  , (13,5,4)
  , (4,4,12)
  , (4,12,14)
  , (12,14,6)
  , (14,6,4)
  , (4,2,10)
  , (2,10,14)
  , (10,14,6)
  , (14,6,4)
  , (4,12,14)
  , (12,14,15)
  , (14,15,13)
  , (15,13,4)
  , (4,10,14)
  , (10,14,15)
  , (14,15,11)
  , (15,11,4)
  , (4,9,13)
  , (9,13,15)
  , (13,15,11)
  , (15,11,4)
  , (4,6,14)
  , (6,14,15)
  , (14,15,7)
  , (15,7,4)
  , (4,5,13)
  , (5,13,15)
  , (13,15,7)
  , (15,7,4)
  , (4,3,11)
  , (3,11,15)
  , (11,15,7)
  , (15,7,4)
  ]

