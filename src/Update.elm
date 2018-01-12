module Update exposing (..)

import Model exposing (Model, initialModel)
import Msg exposing (Msg(..))


init : Model
init =
    initialModel


update : Model -> Msg -> ( Model, Cmd Msg )
update model msg =
    case msg of
        Initial ->
            model ! []


