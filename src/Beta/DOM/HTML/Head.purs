module Beta.DOM.HTML.Head (head) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<head>` tag in HTML, typically includes meta-information about the document such as its title, linked stylesheets and scripts.
-- |
-- | #### Example:
-- | ```purescript
-- | head {}
-- |   [ title "Tab title"
-- |   , meta { charset: "utf-8" }
-- |   , link { rel: "stylesheet", href: "style.css" }
-- |   , script_ { src: "script.js" }
-- |   ]
-- | ```
head :: FFIComponent BaseAttributes
head = createBuiltinElement "head"

