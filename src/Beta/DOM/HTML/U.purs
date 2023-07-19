module Beta.DOM.HTML.U (u) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<u>` HTML element represents an unarticulated annotation. In most languages, this would not change the meaning of the sentence -- it's just a stylistic choice to underline.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | u {} "Underlined text goes here."
-- | ```
u :: FFIComponent BaseAttributes
u = createBuiltinElement "u"