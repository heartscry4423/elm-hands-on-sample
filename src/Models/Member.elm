module Models.Member exposing (..)

type alias Member =
    { id : String
    , name : String
    , imageUrl : String
    }


emptyMember : Member
emptyMember =
    { id = ""
    , name = ""
    , imageUrl = ""
    }


memberById : String -> List Member -> Member
memberById id =
    List.filter (\member -> member.id == id)
        >> List.head
        >> Maybe.withDefault emptyMember
