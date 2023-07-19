module Beta.DOM.HTML.Wbr (wbr) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<wbr>` HTML element represents a word break opportunity—a position within text where the browser may optionally break a line.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | [ text "Super", wbr {}, text "Califragilisticexpialidocious" ]
-- | ```
wbr :: FFIComponent_ BaseAttributes
wbr = createBuiltinElement_ "wbr"