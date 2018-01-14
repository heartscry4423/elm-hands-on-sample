module Talk exposing (..)

import Time exposing (Time)

type alias Talk =
    { id : String
    , memberId : String
    , message : String
    , createdAt : Time
    }


emptyTalk : Talk
emptyTalk =
    { id = ""
    , memberId = ""
    , message = ""
    , createdAt = 0
    }


talkById : String -> List Talk -> Talk
talkById id =
    List.filter (\talk -> talk.id == id)
        >> List.head
        >> Maybe.withDefault emptyTalk
