module Msg exposing (..)

import Time exposing (Time)

type Msg
    = ChangeInput String
    | MightAdd
    | Add Time
    | Edit String Bool
    | UpdateMessage String String
    | Delete String
