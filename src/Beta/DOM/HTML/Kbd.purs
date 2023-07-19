module Beta.DOM.HTML.Kbd (kbd) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<kbd>` HTML element denotes text to be input from a keyboard.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | kbd { } "Ctrl + P"
-- | ```
kbd :: FFIComponent BaseAttributes
kbd = createBuiltinElement "kbd"