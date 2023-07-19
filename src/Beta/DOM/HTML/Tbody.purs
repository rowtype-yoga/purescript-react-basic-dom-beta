module Beta.DOM.HTML.Tbody (tbody) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<tbody>` HTML element groups the body content in a table.
-- |
-- | #### Example:
-- |
-- | | <p></p> | <p></p> |
-- | | --- | --- |
-- | | ↖ | ↗ |
-- | | ↙ | ↘ |
-- |
-- | ```purescript
-- | tbody {}
-- |   [ tr {} [ td {} "↖", td {} "↗" ]
-- |   , tr {} [ td {} "↙", td {} "↘" ]
-- |   ]
-- | ```
tbody :: FFIComponent BaseAttributes
tbody = createBuiltinElement "tbody"