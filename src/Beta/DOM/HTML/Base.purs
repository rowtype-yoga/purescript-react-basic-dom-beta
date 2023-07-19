module Beta.DOM.HTML.Base (base) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<base>` element in HTML, which must be empty, specifies the base URL and or target for
-- | all relative URLs in a document. There can be only one <base> element in a document,
-- | and it must be inside the <head> element.
-- |
-- | #### Example:
-- | ```purescript
-- | base { href: "https://www.example.com", target: targetBlank }
-- | ```
-- |
-- | Note:
-- | It supports two attributes `href` and `target`. `href` specifies the base URL for all relative URLs in
-- | a document. `target` specifies the default target for all hyperlinks and forms in the document.
base :: FFIComponent_ BaseAttributes
base = createBuiltinElement_ "base"