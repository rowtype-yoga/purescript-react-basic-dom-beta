module Beta.DOM.HTML.Strong (strong) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<strong>` HTML element gives text strong importance, and is typically displayed in bold.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | strong { } "Important text goes here."
-- | ```
strong :: FFIComponent BaseAttributes
strong = createBuiltinElement "strong"