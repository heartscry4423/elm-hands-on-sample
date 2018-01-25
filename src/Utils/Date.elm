module Utils.Date exposing (..)

import Time exposing (..)
import Date exposing (..)


yearFromTime : Time -> Int
yearFromTime =
    Date.fromTime >> Date.year


monthFromTime : Time -> Month
monthFromTime =
    Date.fromTime >> Date.month


dayFromTime : Time -> Int
dayFromTime =
    Date.fromTime >> Date.day


hourFromTime : Time -> Int
hourFromTime =
    Date.fromTime >> Date.hour


minuteFromTime : Time -> Int
minuteFromTime =
    Date.fromTime >> Date.minute


monthToDoubleDigitString : Month -> String
monthToDoubleDigitString month =
    case month of
        Date.Jan ->
            "01"

        Date.Feb ->
            "02"

        Date.Mar ->
            "03"

        Date.Apr ->
            "04"

        Date.May ->
            "05"

        Date.Jun ->
            "06"

        Date.Jul ->
            "07"

        Date.Aug ->
            "08"

        Date.Sep ->
            "09"

        Date.Oct ->
            "10"

        Date.Nov ->
            "11"

        Date.Dec ->
            "12"


formatYmdms : Time -> String
formatYmdms time =
    String.concat
        [ yearFromTime time |> toString
        , "/"
        , monthFromTime time |> monthToDoubleDigitString
        , "/"
        , dayFromTime time |> toString
        , " "
        , hourFromTime time |> toString
        , ":"
        , minuteFromTime time |> toString
        ]
