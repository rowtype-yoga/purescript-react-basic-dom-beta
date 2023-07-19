module Beta.DOM.HTML.Q (q) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<q>` HTML element indicates that the enclosed text is a short inline quotation.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | q {} "This is a quote."
-- | ```
q :: FFIComponent BaseAttributes
q = createBuiltinElement "q"