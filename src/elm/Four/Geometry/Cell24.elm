module Four.Geometry.Cell24 where

import Math.Vector4 exposing (..)
import Array

cell24Vertices = Array.fromList
  [ vec4 -2.0 0.0 0.0 0.0
  , vec4 0.0 -2.0 0.0 0.0
  , vec4 0.0 0.0 -2.0 0.0
  , vec4 0.0 0.0 0.0 -2.0
  , vec4 2.0 0.0 0.0 0.0
  , vec4 0.0 2.0 0.0 0.0
  , vec4 0.0 0.0 2.0 0.0
  , vec4 0.0 0.0 0.0 2.0
  , vec4 -1.0 -1.0 -1.0 -1.0
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

cell24Edges =
  [ (0,8)
  , (8,9)
  , (9,0)
  , (8,10)
  , (10,0)
  , (1,8)
  , (9,1)
  , (10,1)
  , (10,11)
  , (11,0)
  , (9,11)
  , (11,1)
  , (8,12)
  , (12,0)
  , (2,8)
  , (9,2)
  , (12,2)
  , (12,13)
  , (13,0)
  , (9,13)
  , (13,2)
  , (3,8)
  , (10,3)
  , (12,3)
  , (12,14)
  , (14,0)
  , (10,14)
  , (14,3)
  , (8,16)
  , (16,1)
  , (16,2)
  , (9,17)
  , (17,1)
  , (17,2)
  , (16,17)
  , (16,3)
  , (10,18)
  , (18,1)
  , (16,18)
  , (18,3)
  , (16,20)
  , (20,2)
  , (20,3)
  , (12,20)
  , (14,15)
  , (15,0)
  , (13,15)
  , (5,12)
  , (13,5)
  , (14,5)
  , (15,5)
  , (11,15)
  , (6,10)
  , (11,6)
  , (14,6)
  , (15,6)
  , (7,9)
  , (11,7)
  , (13,7)
  , (15,7)
  , (11,19)
  , (19,1)
  , (18,19)
  , (18,6)
  , (19,6)
  , (17,7)
  , (17,19)
  , (19,7)
  , (17,21)
  , (21,2)
  , (13,21)
  , (21,7)
  , (4,16)
  , (17,4)
  , (18,4)
  , (19,4)
  , (20,4)
  , (20,21)
  , (21,4)
  , (20,22)
  , (22,3)
  , (18,22)
  , (22,4)
  , (20,5)
  , (21,5)
  , (14,22)
  , (22,5)
  , (22,6)
  , (22,23)
  , (23,4)
  , (21,23)
  , (23,5)
  , (19,23)
  , (23,6)
  , (23,7)
  , (15,23)
  ]

cell24Faces =
  [ (3,0,8)
  , (0,8,9)
  , (8,9,3)
  , (3,0,8)
  , (0,8,10)
  , (8,10,3)
  , (3,1,8)
  , (1,8,9)
  , (8,9,3)
  , (3,1,8)
  , (1,8,10)
  , (8,10,3)
  , (3,0,10)
  , (0,10,11)
  , (10,11,3)
  , (3,0,9)
  , (0,9,11)
  , (9,11,3)
  , (3,1,10)
  , (1,10,11)
  , (10,11,3)
  , (3,1,9)
  , (1,9,11)
  , (9,11,3)
  , (3,0,8)
  , (0,8,12)
  , (8,12,3)
  , (3,2,8)
  , (2,8,9)
  , (8,9,3)
  , (3,2,8)
  , (2,8,12)
  , (8,12,3)
  , (3,0,12)
  , (0,12,13)
  , (12,13,3)
  , (3,0,9)
  , (0,9,13)
  , (9,13,3)
  , (3,2,9)
  , (2,9,13)
  , (9,13,3)
  , (3,2,12)
  , (2,12,13)
  , (12,13,3)
  , (3,3,8)
  , (3,8,10)
  , (8,10,3)
  , (3,3,8)
  , (3,8,12)
  , (8,12,3)
  , (3,0,12)
  , (0,12,14)
  , (12,14,3)
  , (3,0,10)
  , (0,10,14)
  , (10,14,3)
  , (3,3,12)
  , (3,12,14)
  , (12,14,3)
  , (3,3,10)
  , (3,10,14)
  , (10,14,3)
  , (3,1,8)
  , (1,8,16)
  , (8,16,3)
  , (3,2,8)
  , (2,8,16)
  , (8,16,3)
  , (3,1,9)
  , (1,9,17)
  , (9,17,3)
  , (3,2,9)
  , (2,9,17)
  , (9,17,3)
  , (3,1,16)
  , (1,16,17)
  , (16,17,3)
  , (3,2,16)
  , (2,16,17)
  , (16,17,3)
  , (3,3,8)
  , (3,8,16)
  , (8,16,3)
  , (3,1,10)
  , (1,10,18)
  , (10,18,3)
  , (3,1,16)
  , (1,16,18)
  , (16,18,3)
  , (3,3,16)
  , (3,16,18)
  , (16,18,3)
  , (3,3,10)
  , (3,10,18)
  , (10,18,3)
  , (3,2,16)
  , (2,16,20)
  , (16,20,3)
  , (3,3,16)
  , (3,16,20)
  , (16,20,3)
  , (3,2,12)
  , (2,12,20)
  , (12,20,3)
  , (3,3,12)
  , (3,12,20)
  , (12,20,3)
  , (3,0,14)
  , (0,14,15)
  , (14,15,3)
  , (3,0,13)
  , (0,13,15)
  , (13,15,3)
  , (3,5,12)
  , (5,12,13)
  , (12,13,3)
  , (3,5,12)
  , (5,12,14)
  , (12,14,3)
  , (3,5,14)
  , (5,14,15)
  , (14,15,3)
  , (3,5,13)
  , (5,13,15)
  , (13,15,3)
  , (3,0,11)
  , (0,11,15)
  , (11,15,3)
  , (3,6,10)
  , (6,10,11)
  , (10,11,3)
  , (3,6,10)
  , (6,10,14)
  , (10,14,3)
  , (3,6,14)
  , (6,14,15)
  , (14,15,3)
  , (3,6,11)
  , (6,11,15)
  , (11,15,3)
  , (3,7,9)
  , (7,9,11)
  , (9,11,3)
  , (3,7,9)
  , (7,9,13)
  , (9,13,3)
  , (3,7,13)
  , (7,13,15)
  , (13,15,3)
  , (3,7,11)
  , (7,11,15)
  , (11,15,3)
  , (3,1,11)
  , (1,11,19)
  , (11,19,3)
  , (3,1,18)
  , (1,18,19)
  , (18,19,3)
  , (3,6,10)
  , (6,10,18)
  , (10,18,3)
  , (3,6,18)
  , (6,18,19)
  , (18,19,3)
  , (3,6,11)
  , (6,11,19)
  , (11,19,3)
  , (3,7,9)
  , (7,9,17)
  , (9,17,3)
  , (3,1,17)
  , (1,17,19)
  , (17,19,3)
  , (3,7,17)
  , (7,17,19)
  , (17,19,3)
  , (3,7,11)
  , (7,11,19)
  , (11,19,3)
  , (3,2,17)
  , (2,17,21)
  , (17,21,3)
  , (3,2,13)
  , (2,13,21)
  , (13,21,3)
  , (3,7,17)
  , (7,17,21)
  , (17,21,3)
  , (3,7,13)
  , (7,13,21)
  , (13,21,3)
  , (3,4,16)
  , (4,16,17)
  , (16,17,3)
  , (3,4,16)
  , (4,16,18)
  , (16,18,3)
  , (3,4,18)
  , (4,18,19)
  , (18,19,3)
  , (3,4,17)
  , (4,17,19)
  , (17,19,3)
  , (3,4,16)
  , (4,16,20)
  , (16,20,3)
  , (3,2,20)
  , (2,20,21)
  , (20,21,3)
  , (3,4,20)
  , (4,20,21)
  , (20,21,3)
  , (3,4,17)
  , (4,17,21)
  , (17,21,3)
  , (3,3,20)
  , (3,20,22)
  , (20,22,3)
  , (3,3,18)
  , (3,18,22)
  , (18,22,3)
  , (3,4,20)
  , (4,20,22)
  , (20,22,3)
  , (3,4,18)
  , (4,18,22)
  , (18,22,3)
  , (3,5,12)
  , (5,12,20)
  , (12,20,3)
  , (3,5,20)
  , (5,20,21)
  , (20,21,3)
  , (3,5,13)
  , (5,13,21)
  , (13,21,3)
  , (3,3,14)
  , (3,14,22)
  , (14,22,3)
  , (3,5,20)
  , (5,20,22)
  , (20,22,3)
  , (3,5,14)
  , (5,14,22)
  , (14,22,3)
  , (3,6,18)
  , (6,18,22)
  , (18,22,3)
  , (3,6,14)
  , (6,14,22)
  , (14,22,3)
  , (3,4,22)
  , (4,22,23)
  , (22,23,3)
  , (3,4,21)
  , (4,21,23)
  , (21,23,3)
  , (3,5,22)
  , (5,22,23)
  , (22,23,3)
  , (3,5,21)
  , (5,21,23)
  , (21,23,3)
  , (3,4,19)
  , (4,19,23)
  , (19,23,3)
  , (3,6,22)
  , (6,22,23)
  , (22,23,3)
  , (3,6,19)
  , (6,19,23)
  , (19,23,3)
  , (3,7,21)
  , (7,21,23)
  , (21,23,3)
  , (3,7,19)
  , (7,19,23)
  , (19,23,3)
  , (3,5,15)
  , (5,15,23)
  , (15,23,3)
  , (3,6,15)
  , (6,15,23)
  , (15,23,3)
  , (3,7,15)
  , (7,15,23)
  , (15,23,3)
  ]
