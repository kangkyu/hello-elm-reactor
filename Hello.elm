module Hello where

import Graphics.Element exposing (Element, container, middle, centered)
import Window
import Text exposing (Text, typeface, fromString)

helloText : Text
helloText =
  "Hello Elm Reactor!"
    |> fromString
    |> typeface ["Verdana"]
    |> Text.height 36

showMiddle : Int -> Int -> Element
showMiddle w h =
  helloText
    |> centered
    |> container w h middle

main : Signal Element
main =
  Signal.map2 showMiddle Window.width Window.height
