module Beta.DOM.HTML.Small (small) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<small>` HTML element represents side comments such as small print.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | small {} "Small print text goes here."
-- | ```
small :: FFIComponent BaseAttributes
small = createBuiltinElement "small"