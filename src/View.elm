module View exposing (..)

import Model exposing (Model)
import Msg exposing (Msg(..))
import Html exposing (Html, h2, div, img, text, textarea, button, Attribute)
import Html.Attributes exposing (src, value)
import Html.Events exposing (onClick, onInput, on, keyCode)
import Styles as Styles
import Models.Member as Member exposing (Member)
import Models.Talk exposing (Talk)
import Utils.Date as ExDate
import Json.Decode as Json


view : Model -> Html Msg
view model =
    div [ Styles.mainWrap ]
        [ viewPostForm model
        , div [ Styles.talks ]
            <| List.map (\talk -> viewTalk talk model) model.talks
        ]


viewPostForm : Model -> Html Msg
viewPostForm model =
    let
        myself =
            Member.memberById model.myselfId model.members
    in
    div [ Styles.postForm ]
        [ div [ Styles.formLeft ]
            [ img [ Styles.selfImg, src myself.imageUrl ] []
            ]
        , div [ Styles.formRight ]
            [ textarea [ Styles.formArea, value model.field, onInput ChangeInput ] []
            , button [ Styles.postButton, onClick MightAdd ] [ text "投稿！" ]
            ]
        ]


viewTalk : Talk -> Model -> Html Msg
viewTalk talk model =
    let
        member =
            Member.memberById talk.memberId model.members
    in
    div [ Styles.talk ]
        [ div [ Styles.talkLeft ]
            [ img [ Styles.posterImg, src <| member.imageUrl ] [] ]
        , div [ Styles.talkRight ]
            [ div [ Styles.posterName ] [ text member.name ]
            , viewMessage talk
            , div [ Styles.talkFooter ]
                [ text <| ExDate.formatYmdms talk.createdAt
                , viewButtons talk model
                ]
            ]
        ]


viewMessage : Talk -> Html Msg
viewMessage talk =
    if talk.isEditing then
        textarea [ Styles.editingMessage, value talk.message, onInput <| UpdateMessage talk.id, onEnter <| Edit talk.id False ] []
    else
        div [ Styles.message ] [ text talk.message ]


onEnter : msg -> Attribute msg
onEnter msg =
    let
        msgIfEnter key =
            if key == 13 then
                Json.succeed msg
            else
                Json.fail "not enter"
    in
    on "keydown" (Json.andThen msgIfEnter keyCode)


viewButtons : Talk -> Model -> Html Msg
viewButtons talk model =
    let
        editButtonText =
            if talk.isEditing then
                "完了"
            else
                "編集"
    in
    if model.myselfId == talk.memberId then
        div [ Styles.buttons ]
            [ button [ Styles.editButton, onClick <| Edit talk.id ( not talk.isEditing ) ] [ text editButtonText ]
            , button [ Styles.deleteButton, onClick <| Delete talk.id ] [ text "削除" ]
            ]
    else
        div [] []
