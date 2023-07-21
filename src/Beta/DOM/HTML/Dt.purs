module Beta.DOM.HTML.Dt (dt) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<dt>` HTML element specifies a term in a description list (`<dl>`).
-- | This element can exist only as a child element of a description list and it is paired with a `<dd>` element
-- | that provides the definition of a term.
-- |
-- | #### Example:
-- | ```purescript
-- | dt {} "Term 1"
-- | ```
dt :: FFIComponent BaseAttributes
dt = createBuiltinElement "dt"