module Beta.DOM.HTML.Sub (sub) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<sub>` HTML element specifies inline text which should be displayed as subscript for solely typographical reasons.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | sub { } "Subscript text goes here."
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name        | Type   | Example     | Description |
-- | |-------------|--------|-------------|-------------|
-- | | `className` | String | "subText"   | CSS class of the element |

sub :: FFIComponent BaseAttributes
sub = createBuiltinElement "sub"