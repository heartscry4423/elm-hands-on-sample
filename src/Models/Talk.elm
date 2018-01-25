module Models.Talk exposing (..)

import Time exposing (Time)

type alias Talk =
    { id : String
    , memberId : String
    , message : String
    , isEditing : Bool
    , createdAt : Time
    }


emptyTalk : Talk
emptyTalk =
    { id = ""
    , memberId = ""
    , message = ""
    , isEditing = False
    , createdAt = 0
    }


updateMessage : String -> Talk -> Talk
updateMessage message talk =
    { talk | message = message }


updateIsEditing : Bool -> Talk -> Talk
updateIsEditing isEditing talk =
    { talk | isEditing = isEditing }
