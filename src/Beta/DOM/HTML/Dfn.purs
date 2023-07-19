module Beta.DOM.HTML.Dfn (dfn) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<dfn>` HTML element represents the defining instance of a term in a document.
-- |
-- | #### Example:
-- | ```purescript
-- | dfn {} "This is a defining instance of a term."
-- | ```
dfn :: FFIComponent BaseAttributes
dfn = createBuiltinElement "dfn"