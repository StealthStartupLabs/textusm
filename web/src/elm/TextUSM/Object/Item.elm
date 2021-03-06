-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module TextUSM.Object.Item exposing (..)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode
import TextUSM.Enum.Diagram
import TextUSM.InputObject
import TextUSM.Interface
import TextUSM.Object
import TextUSM.Scalar
import TextUSM.ScalarCodecs
import TextUSM.Union


{-| -}
id : SelectionSet TextUSM.ScalarCodecs.Id TextUSM.Object.Item
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (TextUSM.ScalarCodecs.codecs |> TextUSM.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
title : SelectionSet String TextUSM.Object.Item
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| -}
text : SelectionSet String TextUSM.Object.Item
text =
    Object.selectionForField "String" "text" [] Decode.string


{-| -}
thumbnail : SelectionSet (Maybe String) TextUSM.Object.Item
thumbnail =
    Object.selectionForField "(Maybe String)" "thumbnail" [] (Decode.string |> Decode.nullable)


{-| -}
diagram : SelectionSet TextUSM.Enum.Diagram.Diagram TextUSM.Object.Item
diagram =
    Object.selectionForField "Enum.Diagram.Diagram" "diagram" [] TextUSM.Enum.Diagram.decoder


{-| -}
isPublic : SelectionSet Bool TextUSM.Object.Item
isPublic =
    Object.selectionForField "Bool" "isPublic" [] Decode.bool


{-| -}
isBookmark : SelectionSet Bool TextUSM.Object.Item
isBookmark =
    Object.selectionForField "Bool" "isBookmark" [] Decode.bool


{-| -}
tags : SelectionSet (Maybe (List (Maybe String))) TextUSM.Object.Item
tags =
    Object.selectionForField "(Maybe (List (Maybe String)))" "tags" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


{-| -}
createdAt : SelectionSet TextUSM.ScalarCodecs.Time TextUSM.Object.Item
createdAt =
    Object.selectionForField "ScalarCodecs.Time" "createdAt" [] (TextUSM.ScalarCodecs.codecs |> TextUSM.Scalar.unwrapCodecs |> .codecTime |> .decoder)


{-| -}
updatedAt : SelectionSet TextUSM.ScalarCodecs.Time TextUSM.Object.Item
updatedAt =
    Object.selectionForField "ScalarCodecs.Time" "updatedAt" [] (TextUSM.ScalarCodecs.codecs |> TextUSM.Scalar.unwrapCodecs |> .codecTime |> .decoder)
