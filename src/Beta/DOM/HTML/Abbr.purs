module Beta.DOM.HTML.Abbr (abbr) where

import Prelude
import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<abbr>` tag in HTML, used for specifying abbreviations.
-- |
-- | #### Example:
-- | ```purescript
-- | abbr { title: "abbreviation" }
-- |   "abbr"
-- | ```
-- |
abbr :: FFIComponent BaseAttributes
abbr = createBuiltinElement "abbr"
