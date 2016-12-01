module Buttons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }


-- MODEL

type alias ValidationError =
    ( String, String )

type alias Model =
  {buttonName: String}


model : Model
model =
  Model "BUTTON"

-- UPDATE


type Msg
    = Change String



update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newButtonName ->
      { model | buttonName = newButtonName }


-- VIEW

view : Model -> Html Msg Color
view model =
    div [] [ text "OXFORD ABSTRACTS", button [] [ text model.buttonName] ]
