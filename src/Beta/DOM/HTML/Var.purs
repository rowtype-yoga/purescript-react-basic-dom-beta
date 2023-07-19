module Beta.DOM.HTML.Var (var) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<var>` HTML element represents the name of a variable in a mathematical expression or a programming context.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | var { } "threehalfs"
-- | ```
var :: FFIComponent BaseAttributes
var = createBuiltinElement "var"