module Update exposing (..)

import Model exposing (Model, initialModel)
import Msg exposing (Msg(..))
import Talk exposing (Talk)
import Date


init : ( Model, Cmd Msg )
init =
    initialModel ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeInput text ->
            { model | field = text } ! []

        Add ->
            let
                newTalk =
                    Talk "t6" model.myselfId model.field 1000000500000
            in
            { model
                | talks = model.talks ++ [ newTalk ]
                , field = ""
            } ! []

        Delete id ->
            { model | talks = model.talks |> List.filter (\talk -> talk.id /= id) } ! []

