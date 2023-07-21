module Beta.DOM.HTML.Output (output) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<output>` HTML element represents the result of a calculation or user action.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | output {} "Result goes here."
-- | ```
output :: FFIComponent BaseAttributes
output = createBuiltinElement "output"