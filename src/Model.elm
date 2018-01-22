module Model exposing (..)

import Member exposing (Member)
import Talk exposing (Talk)


type alias Model =
    { myselfId : String
    , members : List Member
    , talks : List Talk
    , field : String
    , nextTalkIdNum : Int
    }


initialModel : Model
initialModel =
    { myselfId = "m2"
    , members = initialMembers
    , talks = initialTalks
    , field = ""
    , nextTalkIdNum = 6
    }


initialMembers : List Member
initialMembers =
    [ Member "m1" "オバマ" "https://image.freepik.com/free-vector/no-translate-detected_91-2147487641.jpg"
    , Member "m2" "とみざわ" "http://www.hochi.co.jp/photo/20170718/20170718-OHT1I50084-T.jpg"
    , Member "m3" "伊達ちゃん" "https://imgcp.aacdn.jp/img-c/680/auto/tipsplus/series/246/20160608_1465380998273.jpg"
    ]


initialTalks : List Talk
initialTalks =
    [ Talk "t1" "m1" "Yes We Can !" False 1000000000000
    , Talk "t2" "m2" "ちょっと何いってるかわかんないっす" False 1000000100000
    , Talk "t3" "m3" "なんでわかんねえんだよ" False 1000000200000
    , Talk "t4" "m1" "Thank you !" False 1000000300000
    , Talk "t5" "m2" "僕ちゃんとピッザって言いましたよ" False 1000000400000
    ]
