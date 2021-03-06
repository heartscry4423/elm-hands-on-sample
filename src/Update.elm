module Update exposing (..)

import Model exposing (Model, initialModel)
import Msg exposing (Msg(..))
import Models.Talk as Talk exposing (Talk)
import Date
import Time
import Task


init : ( Model, Cmd Msg )
init =
    initialModel ! []


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ChangeInput text ->
            { model | field = text } ! []

        MightAdd ->
            model ! [ Task.perform Add Time.now ]

        Add time ->
            let
                nextTalkId =
                    "t" ++ toString model.nextTalkIdNum

                newTalk =
                    Talk nextTalkId model.myselfId model.field False time
            in
            { model
                | talks = model.talks ++ [ newTalk ]
                , field = ""
                , nextTalkIdNum = model.nextTalkIdNum + 1
            } ! []

        Edit id isEditing ->
            let
                updateTalk talk =
                    if talk.id == id then
                        Talk.updateIsEditing isEditing talk
                    else
                        talk
            in
            { model | talks = List.map updateTalk model.talks } ! []

        UpdateMessage id text ->
            let
                updateTalk talk =
                    if talk.id == id then
                        Talk.updateMessage text talk
                    else
                        talk
            in
            { model | talks = List.map updateTalk model.talks } ! []

        Delete id ->
            { model | talks = model.talks |> List.filter (\talk -> talk.id /= id) } ! []
