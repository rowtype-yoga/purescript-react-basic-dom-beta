module Example where

import Prelude
import Beta.DOM.HTML as H
import Effect (Effect)
import Effect.Class.Console (log)
import Beta.DOM.Server (renderToStaticMarkup, renderToString)
import Beta.DOM.HTML.Tfoot (tfoot)
import React.Basic (JSX, fragment)
import Beta.DOM.Internal (text, (++))
import Beta.DOM.HTML.Blockquote (blockquote) as H
import Node.FS.Aff (writeTextFile)
import Effect.Aff (launchAff_)
import Node.Encoding (Encoding(UTF8))
import React.Basic.Hooks (Component, component, useState)
import Data.Tuple.Nested ((/\))
import React.Basic.Hooks as React
import Beta.DOM.Client (createRoot, renderRoot)
import Web.HTML (window)
import Web.HTML.Window (document)
import Web.HTML.HTMLDocument (toNonElementParentNode) as Window
import Web.DOM.NonElementParentNode (getElementById)
import Web.HTML.HTMLDocument (body)
import Data.Foldable (traverse_)
import Web.HTML.HTMLElement (toElement) as HTMLElement
import Web.HTML.HTMLDocument (toNonElementParentNode) as HTMLDocument
import React.Basic.Events (handler_)
import Beta.DOM.HTML.IFrame (iframeWithChildren) as H
import Beta.DOM.HTML.Option (option) as H
import Beta.DOM.HTML.Abbr (abbr) as H

main :: Effect Unit
main = do
  example <- mkExample
  window >>= document <#> HTMLDocument.toNonElementParentNode >>= getElementById "react-root" >>= traverse_ \elem -> do
    root <- createRoot elem
    renderRoot root (example {})

mkExample :: Component {}
mkExample = do
  counter <- mkCounter
  component "Example" \_ -> do
    pure $ H.div {}
      [ navExample
      , asideExample
      , mainExample
      , counter unit
      , H.footer { className: "footer" } "1234 Main St, Anytown, USA"
      ]

mkCounter = component "Counter" \_ -> React.do
  count /\ setCount <- useState 0
  pure $ fragment
    [ H.button { className: "bg-black px-4 py-2 rounded shadow font-bold text-white", onClick: handler_ $ setCount (_ + 1) } "Count up!"
    , H.p {} ("You clicked me " ++ H.b {} (show count) ++ " times.")
    ]

mainExample = H.main { className: "w-[80ch] max-w-[80ch] bg-white mx-auto shadow" }
  [ articleExample
  , formExample
  ]

asideExample = H.aside {}
  [ H.h4 { className: "title" } "My Blog"
  , H.p { className: "text" } "This is my blog. I hope you like it!"
  ]

navExample :: JSX
navExample = H.nav {}
  [ H.ul { className: "navList" }
      [ H.li { className: "navItem" } (H.a { href: "/" } "Home")
      , H.li { className: "navItem" } "About"
      , H.li { className: "navItem" } "Contact"
      ]
  ]

articleExample = H.article { className: "px-8" }
  [ H.nav { className: "navigation" }
      [ H.ul { className: "flex flex-row justify-between" }
          [ H.li { key: "home", className: "navItem" } "Home"
          , H.li { key: "about", className: "navItem" } "About"
          , H.li { key: "contact", className: "navItem" } "Contact"
          ]
      ]
  , H.div { className: "content" }
      [ H.h1 { className: "text-4xl" } "My Web Page"
      , H.p { className: "text" } [ text "This is ", H.b {} "my ", H.i {} "web page", text ". Isn't it grand?" ]
      , H.blockquote { className: "italic" } "I am hungry."
      , H.cite { className: "text" } " -- Alfred Einstein"
      , H.div { className: "container" }
          [ H.video { src: "movie.mp4", width: 320, height: 240 }
              [ H.track { kind: "subtitles", src: "subtitles_en.vtt", srcLang: "en" } ]
          ]
      , tableExample
      , H.h3 {} "<p>, <sup>, <sub>"
      , H.p { className: "text" } "The temperature of boiling water is 100"
      , H.sup { className: "text" } "o"
      , text "C"
      , H.sub { className: "text" } "1"
      ]
  , H.h3 {} "<address>"
  , H.address { className: "footer" } "1234 Main St, Anytown, USA"
  ]

tableExample = H.table { className: "table" }
  [ H.thead { className: "thead" }
      [ H.tr { className: "headerRow" }
          [ H.th { className: "headerCell" } "Header 1"
          , H.th { className: "headerCell" } "Header 2"
          ]
      ]
  , H.tbody { className: "tbody" }
      [ H.tr { className: "tableRow" }
          [ H.td { className: "tableData" } "Row 1, Col 1"
          , H.td { className: "tableData" } "Row 1, Col 2"
          ]
      , H.tr { className: "tableRow" }
          [ H.td { className: "tableData" } "Row 2, Col 1"
          , H.td { className: "tableData" } "Row 2, Col 2"
          ]
      ]
  , H.tfoot { className: "tfoot" }
      [ H.tr { className: "footerRow" }
          [ H.td { className: "footerCell" } "Footer 1"
          , H.td { className: "footerCell" } "Footer 2"
          ]
      ]
  ]

formExample :: JSX
formExample = H.div { className: "myForm" }
  [ H.form { action: "#" }
      [ H.input { type: "text", placeholder: "Type something", className: "inputField" }
      , H.input { type: "submit", value: "Submit", className: "submitBtn" }
      ]
  --  , H.select { name: "mySelect", className: "selectField" }
  --      [ H.option { value: "Option1" } "Option 1"
  --      , H.option { value: "Option2" } "Option 2"
  --      ]
  --  , H.img { src: "https://images.unsplash.com/photo-1567201864585-6baec9110dac?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80", alt: "My Image", className: "myImage" }
  --  , H.span { className: "mySpan" } "Some text in a span element"
  --  , H.header { className: "myHeader" } "This is a header"
  --  , H.section { className: "mySection" } "This is a section"
  --  , H.iframeWithChildren { src: "https://www.example.com", className: "myIframe" } "Content of the iframe"
  --  , H.abbr { title: "abbreviation" } "abbr"
  --  , H.meter { min: "0", max: "100", value: "70" } []
  , H.input { value: "hi" }
  --  , H.progress { value: "32", max: "100" } []
  --  , H.audio { controls: "" }
  --      $ H.source { src: "path/to/audio.mp3", type: "audio/mpeg" }

  ]

x y = y.a + y.b + y.c
