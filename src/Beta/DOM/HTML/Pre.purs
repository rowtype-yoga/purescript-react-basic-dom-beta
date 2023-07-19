module Beta.DOM.HTML.Pre (pre) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<pre>` HTML element represents preformatted text, in which structure is represented by typographic conventions rather than by the elements.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | pre { } " Preformatted text goes here. "
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name | Type | Example | Description |
-- | |------|------|---------|-------------|
-- | | `className` | String | "codeBlock" | CSS class of the element |

pre :: FFIComponent BaseAttributes
pre = createBuiltinElement "pre"