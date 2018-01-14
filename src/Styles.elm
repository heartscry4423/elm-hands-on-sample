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
        [ ( "height", "100px" )
        , ( "border-bottom", "solid 1px" )
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


selfName : Attribute msg
selfName =
    style
        [ ( "font-size", "14px" )
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
        ]


postButton : Attribute msg
postButton =
    style
        [ ( "margin-top", "8px" )
        , ( "margin-right", "16px" )
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
        [ ( "min-height", "140px" )
        , ( "border-bottom", "solid 1px" )
        ]


talkLeft : Attribute msg
talkLeft =
    style
        [ ( "padding-top", "12px" )
        , ( "padding-left", "12px" )
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
        [ ( "padding-top", "12px" )
        , ( "padding-left", "12px" )
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


talkFooter : Attribute msg
talkFooter =
    style
        [ ( "font-size", "12px" )
        ]


deleteButton : Attribute msg
deleteButton =
    style
        [ ("float", "right") ]