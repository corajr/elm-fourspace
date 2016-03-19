module Four.Geometry where

import Four.Common exposing (..)
import Four.Geometry.Index exposing (fromVerticesAndFaces, fromVerticesAndEdges)
import Four.Geometry.Cell5 exposing (..)
import Four.Geometry.Cell8 exposing (..)
import Four.Geometry.Cell16 exposing (..)
import Four.Geometry.Cell24 exposing (..)
import Four.Geometry.Cell120 exposing (..)
import Four.Geometry.Cell600 exposing (..)
import Math.Vector3 exposing (..)
import Math.Vector4 exposing (..)
import WebGL exposing (..)

cell5 = fromVerticesAndFaces cell5Vertices cell5Faces
cell5Wireframe = fromVerticesAndEdges cell5Vertices cell5Edges

cell8 = fromVerticesAndFaces cell8Vertices cell8Faces
cell8Wireframe = fromVerticesAndEdges cell8Vertices cell8Edges

cell16 = fromVerticesAndFaces cell16Vertices cell16Faces
cell16Wireframe = fromVerticesAndEdges cell16Vertices cell16Edges

cell24 = fromVerticesAndFaces cell24Vertices cell24Faces
cell24Wireframe = fromVerticesAndEdges cell24Vertices cell24Edges

cell120 = fromVerticesAndFaces cell120Vertices cell120Faces
cell120Wireframe = fromVerticesAndEdges cell120Vertices cell120Edges

cell600 = fromVerticesAndFaces cell600Vertices cell600Faces
cell600Wireframe = fromVerticesAndEdges cell600Vertices cell600Edges
