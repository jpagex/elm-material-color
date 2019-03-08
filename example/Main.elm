module Main exposing (main)

import Browser
import Color exposing (Color)
import Html exposing (Html, div, h1, h2, text)
import Html.Attributes exposing (style)
import MaterialColor


main =
    Browser.sandbox
        { init = ()
        , update = \() () -> ()
        , view = \() -> view
        }


view : Html msg
view =
    h1 [] [ text "Material Colors" ]
        :: List.concatMap viewColor materialColors
        |> div []


viewColor : ( String, List ( String, Color ) ) -> List (Html msg)
viewColor ( name, shades ) =
    [ h2 [] [ text name ]
    , shades
        |> List.map viewShade
        |> div [ style "display" "flex" ]
    ]


viewShade : ( String, Color ) -> Html msg
viewShade ( shade, color ) =
    div
        [ style "background-color" (Color.toCssString color)
        , style "padding" "15px"
        ]
        [ text shade ]


materialColors : List ( String, List ( String, Color ) )
materialColors =
    [ ( "Red"
      , [ ( "50", MaterialColor.red50 )
        , ( "100", MaterialColor.red100 )
        , ( "200", MaterialColor.red200 )
        , ( "300", MaterialColor.red300 )
        , ( "400", MaterialColor.red400 )
        , ( "500", MaterialColor.red500 )
        , ( "600", MaterialColor.red600 )
        , ( "700", MaterialColor.red700 )
        , ( "800", MaterialColor.red800 )
        , ( "900", MaterialColor.red900 )
        , ( "A100", MaterialColor.redA100 )
        , ( "A200", MaterialColor.redA200 )
        , ( "A400", MaterialColor.redA400 )
        , ( "A700", MaterialColor.redA700 )
        ]
      )
    , ( "Pink"
      , [ ( "50", MaterialColor.pink50 )
        , ( "100", MaterialColor.pink100 )
        , ( "200", MaterialColor.pink200 )
        , ( "300", MaterialColor.pink300 )
        , ( "400", MaterialColor.pink400 )
        , ( "500", MaterialColor.pink500 )
        , ( "600", MaterialColor.pink600 )
        , ( "700", MaterialColor.pink700 )
        , ( "800", MaterialColor.pink800 )
        , ( "900", MaterialColor.pink900 )
        , ( "A100", MaterialColor.pinkA100 )
        , ( "A200", MaterialColor.pinkA200 )
        , ( "A400", MaterialColor.pinkA400 )
        , ( "A700", MaterialColor.pinkA700 )
        ]
      )
    , ( "Purple"
      , [ ( "50", MaterialColor.purple50 )
        , ( "100", MaterialColor.purple100 )
        , ( "200", MaterialColor.purple200 )
        , ( "300", MaterialColor.purple300 )
        , ( "400", MaterialColor.purple400 )
        , ( "500", MaterialColor.purple500 )
        , ( "600", MaterialColor.purple600 )
        , ( "700", MaterialColor.purple700 )
        , ( "800", MaterialColor.purple800 )
        , ( "900", MaterialColor.purple900 )
        , ( "A100", MaterialColor.purpleA100 )
        , ( "A200", MaterialColor.purpleA200 )
        , ( "A400", MaterialColor.purpleA400 )
        , ( "A700", MaterialColor.purpleA700 )
        ]
      )
    , ( "Deep Purple"
      , [ ( "50", MaterialColor.deepPurple50 )
        , ( "100", MaterialColor.deepPurple100 )
        , ( "200", MaterialColor.deepPurple200 )
        , ( "300", MaterialColor.deepPurple300 )
        , ( "400", MaterialColor.deepPurple400 )
        , ( "500", MaterialColor.deepPurple500 )
        , ( "600", MaterialColor.deepPurple600 )
        , ( "700", MaterialColor.deepPurple700 )
        , ( "800", MaterialColor.deepPurple800 )
        , ( "900", MaterialColor.deepPurple900 )
        , ( "A100", MaterialColor.deepPurpleA100 )
        , ( "A200", MaterialColor.deepPurpleA200 )
        , ( "A400", MaterialColor.deepPurpleA400 )
        , ( "A700", MaterialColor.deepPurpleA700 )
        ]
      )
    , ( "Indigo"
      , [ ( "50", MaterialColor.indigo50 )
        , ( "100", MaterialColor.indigo100 )
        , ( "200", MaterialColor.indigo200 )
        , ( "300", MaterialColor.indigo300 )
        , ( "400", MaterialColor.indigo400 )
        , ( "500", MaterialColor.indigo500 )
        , ( "600", MaterialColor.indigo600 )
        , ( "700", MaterialColor.indigo700 )
        , ( "800", MaterialColor.indigo800 )
        , ( "900", MaterialColor.indigo900 )
        , ( "A100", MaterialColor.indigoA100 )
        , ( "A200", MaterialColor.indigoA200 )
        , ( "A400", MaterialColor.indigoA400 )
        , ( "A700", MaterialColor.indigoA700 )
        ]
      )
    , ( "Blue"
      , [ ( "50", MaterialColor.blue50 )
        , ( "100", MaterialColor.blue100 )
        , ( "200", MaterialColor.blue200 )
        , ( "300", MaterialColor.blue300 )
        , ( "400", MaterialColor.blue400 )
        , ( "500", MaterialColor.blue500 )
        , ( "600", MaterialColor.blue600 )
        , ( "700", MaterialColor.blue700 )
        , ( "800", MaterialColor.blue800 )
        , ( "900", MaterialColor.blue900 )
        , ( "A100", MaterialColor.blueA100 )
        , ( "A200", MaterialColor.blueA200 )
        , ( "A400", MaterialColor.blueA400 )
        , ( "A700", MaterialColor.blueA700 )
        ]
      )
    , ( "Light Blue"
      , [ ( "50", MaterialColor.lightBlue50 )
        , ( "100", MaterialColor.lightBlue100 )
        , ( "200", MaterialColor.lightBlue200 )
        , ( "300", MaterialColor.lightBlue300 )
        , ( "400", MaterialColor.lightBlue400 )
        , ( "500", MaterialColor.lightBlue500 )
        , ( "600", MaterialColor.lightBlue600 )
        , ( "700", MaterialColor.lightBlue700 )
        , ( "800", MaterialColor.lightBlue800 )
        , ( "900", MaterialColor.lightBlue900 )
        , ( "A100", MaterialColor.lightBlueA100 )
        , ( "A200", MaterialColor.lightBlueA200 )
        , ( "A400", MaterialColor.lightBlueA400 )
        , ( "A700", MaterialColor.lightBlueA700 )
        ]
      )
    , ( "Cyan"
      , [ ( "50", MaterialColor.cyan50 )
        , ( "100", MaterialColor.cyan100 )
        , ( "200", MaterialColor.cyan200 )
        , ( "300", MaterialColor.cyan300 )
        , ( "400", MaterialColor.cyan400 )
        , ( "500", MaterialColor.cyan500 )
        , ( "600", MaterialColor.cyan600 )
        , ( "700", MaterialColor.cyan700 )
        , ( "800", MaterialColor.cyan800 )
        , ( "900", MaterialColor.cyan900 )
        , ( "A100", MaterialColor.cyanA100 )
        , ( "A200", MaterialColor.cyanA200 )
        , ( "A400", MaterialColor.cyanA400 )
        , ( "A700", MaterialColor.cyanA700 )
        ]
      )
    , ( "Teal"
      , [ ( "50", MaterialColor.teal50 )
        , ( "100", MaterialColor.teal100 )
        , ( "200", MaterialColor.teal200 )
        , ( "300", MaterialColor.teal300 )
        , ( "400", MaterialColor.teal400 )
        , ( "500", MaterialColor.teal500 )
        , ( "600", MaterialColor.teal600 )
        , ( "700", MaterialColor.teal700 )
        , ( "800", MaterialColor.teal800 )
        , ( "900", MaterialColor.teal900 )
        , ( "A100", MaterialColor.tealA100 )
        , ( "A200", MaterialColor.tealA200 )
        , ( "A400", MaterialColor.tealA400 )
        , ( "A700", MaterialColor.tealA700 )
        ]
      )
    , ( "Green"
      , [ ( "50", MaterialColor.green50 )
        , ( "100", MaterialColor.green100 )
        , ( "200", MaterialColor.green200 )
        , ( "300", MaterialColor.green300 )
        , ( "400", MaterialColor.green400 )
        , ( "500", MaterialColor.green500 )
        , ( "600", MaterialColor.green600 )
        , ( "700", MaterialColor.green700 )
        , ( "800", MaterialColor.green800 )
        , ( "900", MaterialColor.green900 )
        , ( "A100", MaterialColor.greenA100 )
        , ( "A200", MaterialColor.greenA200 )
        , ( "A400", MaterialColor.greenA400 )
        , ( "A700", MaterialColor.greenA700 )
        ]
      )
    , ( "Light Green"
      , [ ( "50", MaterialColor.lightGreen50 )
        , ( "100", MaterialColor.lightGreen100 )
        , ( "200", MaterialColor.lightGreen200 )
        , ( "300", MaterialColor.lightGreen300 )
        , ( "400", MaterialColor.lightGreen400 )
        , ( "500", MaterialColor.lightGreen500 )
        , ( "600", MaterialColor.lightGreen600 )
        , ( "700", MaterialColor.lightGreen700 )
        , ( "800", MaterialColor.lightGreen800 )
        , ( "900", MaterialColor.lightGreen900 )
        , ( "A100", MaterialColor.lightGreenA100 )
        , ( "A200", MaterialColor.lightGreenA200 )
        , ( "A400", MaterialColor.lightGreenA400 )
        , ( "A700", MaterialColor.lightGreenA700 )
        ]
      )
    , ( "Lime"
      , [ ( "50", MaterialColor.lime50 )
        , ( "100", MaterialColor.lime100 )
        , ( "200", MaterialColor.lime200 )
        , ( "300", MaterialColor.lime300 )
        , ( "400", MaterialColor.lime400 )
        , ( "500", MaterialColor.lime500 )
        , ( "600", MaterialColor.lime600 )
        , ( "700", MaterialColor.lime700 )
        , ( "800", MaterialColor.lime800 )
        , ( "900", MaterialColor.lime900 )
        , ( "A100", MaterialColor.limeA100 )
        , ( "A200", MaterialColor.limeA200 )
        , ( "A400", MaterialColor.limeA400 )
        , ( "A700", MaterialColor.limeA700 )
        ]
      )
    , ( "Yellow"
      , [ ( "50", MaterialColor.yellow50 )
        , ( "100", MaterialColor.yellow100 )
        , ( "200", MaterialColor.yellow200 )
        , ( "300", MaterialColor.yellow300 )
        , ( "400", MaterialColor.yellow400 )
        , ( "500", MaterialColor.yellow500 )
        , ( "600", MaterialColor.yellow600 )
        , ( "700", MaterialColor.yellow700 )
        , ( "800", MaterialColor.yellow800 )
        , ( "900", MaterialColor.yellow900 )
        , ( "A100", MaterialColor.yellowA100 )
        , ( "A200", MaterialColor.yellowA200 )
        , ( "A400", MaterialColor.yellowA400 )
        , ( "A700", MaterialColor.yellowA700 )
        ]
      )
    , ( "Amber"
      , [ ( "50", MaterialColor.amber50 )
        , ( "100", MaterialColor.amber100 )
        , ( "200", MaterialColor.amber200 )
        , ( "300", MaterialColor.amber300 )
        , ( "400", MaterialColor.amber400 )
        , ( "500", MaterialColor.amber500 )
        , ( "600", MaterialColor.amber600 )
        , ( "700", MaterialColor.amber700 )
        , ( "800", MaterialColor.amber800 )
        , ( "900", MaterialColor.amber900 )
        , ( "A100", MaterialColor.amberA100 )
        , ( "A200", MaterialColor.amberA200 )
        , ( "A400", MaterialColor.amberA400 )
        , ( "A700", MaterialColor.amberA700 )
        ]
      )
    , ( "Orange"
      , [ ( "50", MaterialColor.orange50 )
        , ( "100", MaterialColor.orange100 )
        , ( "200", MaterialColor.orange200 )
        , ( "300", MaterialColor.orange300 )
        , ( "400", MaterialColor.orange400 )
        , ( "500", MaterialColor.orange500 )
        , ( "600", MaterialColor.orange600 )
        , ( "700", MaterialColor.orange700 )
        , ( "800", MaterialColor.orange800 )
        , ( "900", MaterialColor.orange900 )
        , ( "A100", MaterialColor.orangeA100 )
        , ( "A200", MaterialColor.orangeA200 )
        , ( "A400", MaterialColor.orangeA400 )
        , ( "A700", MaterialColor.orangeA700 )
        ]
      )
    , ( "Deep Orange"
      , [ ( "50", MaterialColor.deepOrange50 )
        , ( "100", MaterialColor.deepOrange100 )
        , ( "200", MaterialColor.deepOrange200 )
        , ( "300", MaterialColor.deepOrange300 )
        , ( "400", MaterialColor.deepOrange400 )
        , ( "500", MaterialColor.deepOrange500 )
        , ( "600", MaterialColor.deepOrange600 )
        , ( "700", MaterialColor.deepOrange700 )
        , ( "800", MaterialColor.deepOrange800 )
        , ( "900", MaterialColor.deepOrange900 )
        , ( "A100", MaterialColor.deepOrangeA100 )
        , ( "A200", MaterialColor.deepOrangeA200 )
        , ( "A400", MaterialColor.deepOrangeA400 )
        , ( "A700", MaterialColor.deepOrangeA700 )
        ]
      )
    , ( "Brown"
      , [ ( "50", MaterialColor.brown50 )
        , ( "100", MaterialColor.brown100 )
        , ( "200", MaterialColor.brown200 )
        , ( "300", MaterialColor.brown300 )
        , ( "400", MaterialColor.brown400 )
        , ( "500", MaterialColor.brown500 )
        , ( "600", MaterialColor.brown600 )
        , ( "700", MaterialColor.brown700 )
        , ( "800", MaterialColor.brown800 )
        , ( "900", MaterialColor.brown900 )
        ]
      )
    , ( "Grey"
      , [ ( "50", MaterialColor.grey50 )
        , ( "100", MaterialColor.grey100 )
        , ( "200", MaterialColor.grey200 )
        , ( "300", MaterialColor.grey300 )
        , ( "400", MaterialColor.grey400 )
        , ( "500", MaterialColor.grey500 )
        , ( "600", MaterialColor.grey600 )
        , ( "700", MaterialColor.grey700 )
        , ( "800", MaterialColor.grey800 )
        , ( "900", MaterialColor.grey900 )
        ]
      )
    , ( "Blue Grey"
      , [ ( "50", MaterialColor.blueGrey50 )
        , ( "100", MaterialColor.blueGrey100 )
        , ( "200", MaterialColor.blueGrey200 )
        , ( "300", MaterialColor.blueGrey300 )
        , ( "400", MaterialColor.blueGrey400 )
        , ( "500", MaterialColor.blueGrey500 )
        , ( "600", MaterialColor.blueGrey600 )
        , ( "700", MaterialColor.blueGrey700 )
        , ( "800", MaterialColor.blueGrey800 )
        , ( "900", MaterialColor.blueGrey900 )
        ]
      )
    ]
