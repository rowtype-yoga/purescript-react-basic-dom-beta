module Beta.DOM.HTML.Footer (footer) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<footer>` HTML element represents a footer for its nearest sectioning
-- | content or sectioning root element.
-- |
-- | #### Example:
-- | ```purescript
-- | footer { } [ text "Footer content goes here." ]
-- | ```

footer :: FFIComponent BaseAttributes
footer = createBuiltinElement "footer"