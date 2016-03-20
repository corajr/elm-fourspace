module Main where

import Effects exposing (Never)
import Four exposing (init, update, view, Action(..), Mesh(..))
import Four.Geometry exposing (..)
import Char
import Mouse
import Keyboard
import Window
import StartApp
import Task

app =
  StartApp.start
    { init = init Cell8
    , update = update
    , view = view
    , inputs = [ mousePos, keyboard ]
    }

mousePos : Signal Action
mousePos =
  Signal.map Rotate <|
  Signal.map2 (\x w -> toFloat x / toFloat w) Mouse.x Window.width

keyboard : Signal Action
keyboard =
  let f keyCode =
        case (Char.fromCode keyCode) of
          '1' -> ChangeMesh Cell5
          '2' -> ChangeMesh Cell8
          '3' -> ChangeMesh Cell16
          '4' -> ChangeMesh Cell24
          '5' -> ChangeMesh Cell120
          '6' -> ChangeMesh Cell600
          'w' -> ToggleWireframe
          _ -> NoOp
  in Signal.map f Keyboard.presses

main =
  app.html


port tasks : Signal (Task.Task Never ())
port tasks =
  app.tasks
