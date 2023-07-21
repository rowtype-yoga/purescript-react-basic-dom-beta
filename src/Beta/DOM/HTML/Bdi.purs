module Beta.DOM.HTML.Bdi (bdi) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<bdi>` (Bi-directional Isolation) element in HTML, isolates a part of text
-- | that might be formatted in a different direction from other text outside it.
-- |
-- | This element is useful when embedding user-generated content with an unknown text direction.
-- |
-- | #### Example:
-- | ```purescript
-- | bdi {} "Text in unknown direction"
-- | ```
bdi :: FFIComponent BaseAttributes
bdi = createBuiltinElement "bdi"