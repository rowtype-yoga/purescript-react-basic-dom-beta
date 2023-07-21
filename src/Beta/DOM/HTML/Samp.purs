module Beta.DOM.HTML.Samp (samp) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<samp>` HTML element is used to display sample output from a computer program.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | samp {} "Program output goes here"
-- | ```
samp :: FFIComponent BaseAttributes
samp = createBuiltinElement "samp"