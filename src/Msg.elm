module Msg exposing (..)

type Msg
    = ChangeInput String
    | Add
    | Edit String Bool
    | UpdateMessage String String
    | Delete String

