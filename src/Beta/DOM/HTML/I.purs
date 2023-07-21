module Beta.DOM.HTML.I (i) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<i>` HTML element represents a range of text that is set off from the normal text for some reason,
-- | such as idiomatic text, technical terms, taxonomical designations, among others.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | i {} "This text is rendered in italics."
-- | ```
i :: FFIComponent BaseAttributes
i = createBuiltinElement "i"