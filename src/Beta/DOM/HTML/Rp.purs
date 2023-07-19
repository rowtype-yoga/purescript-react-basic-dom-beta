module Beta.DOM.HTML.Rp (rp) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<rp>` HTML element is used to provide fallback parentheses for browsers that do not support display of ruby annotations using the `<ruby>` element.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | rp { } "(fallback content)"
-- | ```
rp :: FFIComponent BaseAttributes
rp = createBuiltinElement "rp"

