module Beta.DOM.HTML.HTML (html) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<html>` tag in HTML, which is the root of an HTML document.
-- |
-- | #### Example:
-- | ```purescript
-- | html { lang: "en" }
-- |   [ head {}
-- |     [ title "Window/Tab title"
-- |     , meta { charSet: "utf-8" }
-- |     ]
-- |   , body {} [ {- main page content -} ]
-- |   ]
-- | ```
-- |
-- | ## Common attributes:
-- |
-- | | Attribute | Type     | Example | Description |
-- | |-----------|----------|---------|-------------|
-- | | `lang`    | `String` | `"en"`  | Language of the website |
-- | | `dir`     | `String` | `"ltr"` | Text direction (e.g. rtl: right-to-left for Arabic) |
html :: FFIComponent BaseAttributes
html = createBuiltinElement "html"