-- import Buttons as Buttons exposing (..)

import Html exposing (Html, div, input, text, button)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String


main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model =
  { color : String
  }


model : Model
model =
  Model "pink"



-- UPDATE


type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newColor ->
      { model | color = newColor}



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Type in a colour", onInput Change ] []
    , div [style [("background-color", model.color)] ] [ text "OXFORD ABSTRACTS"
      , button [ style [("background-color", "grey")] ] [ text "Add track"]
      , button [style [("background-color", "green")]] [ text "Publish" ] ]
    ]
