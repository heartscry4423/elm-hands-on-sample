module View exposing (..)

import Model exposing (Model)
import Msg exposing (Msg(..))
import Html exposing (Html, h2, div, img, text, textarea, button)
import Html.Attributes exposing (src, value)
import Html.Events exposing (onClick, onInput)
import Styles as Styles
import Member exposing (Member)
import Talk exposing (Talk)
import ExDate


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
            , div [ Styles.selfName ] [ text myself.name ]
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
        textarea [ Styles.editingMessage, value talk.message, onInput <| UpdateMessage talk.id ] []
    else
    div [ Styles.message ] [ text talk.message ]


viewButtons : Talk -> Model -> Html Msg
viewButtons talk model =
    if model.myselfId == talk.memberId then
        div [ Styles.buttons ]
            [ button [ onClick <| Edit talk.id ( not talk.isEditing ) ] [ text "編集" ]
            , button [ onClick <| Delete talk.id ] [ text "削除" ]
            ]
    else
        div [] []
