module Beta.DOM.HTML.NoScript (noscript) where

import Prelude
import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<noscript>` tag in HTML, used to provide an alternative content for users
-- | that have disabled scripts in their browser or have a browser that doesn't support script.
-- |
-- | #### Example:
-- | ```purescript
-- | noscript {}
-- |   "Your browser does not support JavaScript!"
-- | ```
-- |
-- | ## Common attributes:
-- |
-- | No standard attributes.
noscript :: FFIComponent BaseAttributes
noscript = createBuiltinElement "noscript"