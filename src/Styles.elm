module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


mainWrap : Attribute msg
mainWrap =
    style
        [ ( "margin-top", "40px" )
        , ( "margin-left", "auto" )
        , ( "margin-right", "auto" )
        , ( "width", "600px" )
        ]


postForm : Attribute msg
postForm =
    style
        [ ( "min-height", "120px" )
        , ( "border-bottom", "solid 2px #c4c4c4" )
        ]


formLeft : Attribute msg
formLeft =
    style
        [ ( "float", "left" )
        , ( "width", "84px" )
        ]


selfImg : Attribute msg
selfImg =
    style
        [ ( "margin-top", "8px" )
        , ( "margin-left", "8px" )
        , ( "width", "48px" )
        , ( "height", "48px" )
        ]


formRight : Attribute msg
formRight =
    style
        [ ( "width", "100%" )
        ]


formArea : Attribute msg
formArea =
    style
        [ ( "margin-top", "8px" )
        , ( "width", "500px" )
        , ( "height", "48px" )
        , ( "resize", "none" )
        , ( "border", "solid 2px #c4c4c4" )
        ]


postButton : Attribute msg
postButton =
    style
        [ ( "margin-top", "8px" )
        , ( "margin-right", "16px" )
        , ( "width", "84px" )
        , ( "height", "28px" )
        , ( "float", "right" )
        ]


talks : Attribute msg
talks =
    style
        [ ( "margin-top", "20px" )
        ]


talk : Attribute msg
talk =
    style
        [ ( "min-height", "120px" )
        , ( "margin-top", "20px" )
        , ( "border-bottom", "solid 1px #c4c4c4" )
        ]


talkLeft : Attribute msg
talkLeft =
    style
        [ ( "padding-left", "12px" )
        , ( "padding-right", "12px" )
        , ( "height", "120px" )
        , ( "float", "left" )
        ]


posterImg : Attribute msg
posterImg =
    style
        [ ( "width", "48px" )
        , ( "height", "48px" )
        ]


talkRight : Attribute msg
talkRight =
    style
        [ ( "padding-left", "12px" )
        , ( "padding-right", "12px" )
        ]


posterName : Attribute msg
posterName =
    style
        [ ( "margin-bottom", "8px" )
        , ( "font-weight", "600" )
        ]


message : Attribute msg
message =
    style
        [ ( "margin-left", "72px" )
        , ( "margin-bottom", "16px" )
        ]


editingMessage : Attribute msg
editingMessage =
    style
        [ ( "margin-left", "0px" )
        , ( "width", "500px" )
        , ( "height", "28px" )
        , ( "resize", "none" )
        ]


talkFooter : Attribute msg
talkFooter =
    style
        [ ( "font-size", "12px" )
        , ( "margin-top", "8px" )
        ]


buttons : Attribute msg
buttons =
    style
        [ ("float", "right") ]


editButton : Attribute msg
editButton =
    style
        [ ("margin-right", "8px") ]


deleteButton : Attribute msg
deleteButton =
    style
        []
