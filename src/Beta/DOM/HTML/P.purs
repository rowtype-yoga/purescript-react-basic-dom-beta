module Beta.DOM.HTML.P (p) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<p>` HTML element represents a paragraph.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | p {} "This is a paragraph."
-- | ```
p :: FFIComponent BaseAttributes
p = createBuiltinElement "p"