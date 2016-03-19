module Main where

import Effects exposing (Never)
import Four exposing (init, update, view, Action(..))
import Four.Geometry exposing (..)
import Mouse
import Window
import StartApp
import Task

app =
  StartApp.start
    { init = init cell8Wireframe
    , update = update
    , view = view
    , inputs = [ mousePos ]
    }

mousePos : Signal Action
mousePos =
  Signal.map Rotate <|
  Signal.map2 (\x w -> toFloat x / toFloat w) Mouse.x Window.width

main =
  app.html


port tasks : Signal (Task.Task Never ())
port tasks =
  app.tasks
