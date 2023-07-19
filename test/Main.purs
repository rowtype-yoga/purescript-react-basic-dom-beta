module Test.Main where

import Prelude
import Beta.DOM.HTML as H
import Effect (Effect)
import Effect.Class.Console (log)
import Beta.DOM.Server (renderToStaticMarkup, renderToString)
import Beta.DOM.HTML.Tfoot (tfoot)
import React.Basic (JSX)
import Beta.DOM.Internal (text)
import Beta.DOM.HTML.Blockquote (blockquote) as H
import Node.FS.Aff (writeTextFile)
import Effect.Aff (launchAff_)
import Node.Encoding (Encoding(UTF8))
import Example (mkExample)

main :: Effect Unit
main = do
  exampleApp <- mkExample
  launchAff_ do
    writeTextFile UTF8 "index.html" (renderToStaticMarkup (example exampleApp))

example :: ({} -> JSX) -> JSX
example exampleApp = H.html {}
  [ H.head {}
      [ H.title "My Web Page"
      , H.meta { charSet: "UTF-8" }
      , H.meta { name: "viewport", content: "width=device-width, initial-scale=1.0" }
      , H.link { rel: "stylesheet", href: "styles.css" }
      , H.style {} "body { background-color: #f0f0f2; }"
      , H.script { src: "https://cdn.tailwindcss.com" }
      , H.body { className: "w-full" } $
           H.div_ { id: "react-root",  dangerouslySetInnerHTML: { __html: renderToString $ exampleApp {} } }
      , H.script { src: "index.js" }
       ]
  ]