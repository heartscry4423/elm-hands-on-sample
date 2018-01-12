module Main exposing (..)

import Model exposing (Model)
import Msg exposing (Msg)
import Update exposing (update, init)
import View exposing (view)
import Html exposing (Html)

main : Program Never Model Msg
main =
    Html.program
        { init = init
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
