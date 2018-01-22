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
                nextTalkId =
                    "t" ++ toString model.nextTalkIdNum

                newTalk =
                    Talk nextTalkId model.myselfId model.field False 1000000500000
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
                        { talk | isEditing = isEditing }
                    else
                        talk
            in
            { model | talks = List.map updateTalk model.talks } ! []

        UpdateMessage id text ->
            let
                updateTalk talk =
                    if talk.id == id then
                        { talk | message = text }
                    else
                        talk
            in
            { model | talks = List.map updateTalk model.talks } ! []

        Delete id ->
            { model | talks = model.talks |> List.filter (\talk -> talk.id /= id) } ! []

