module Beta.DOM.HTML.Rt (rt) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<rt>` HTML element specifies the ruby text component of a ruby annotation,
-- | which is used to provide pronunciation, translation, or transliteration information for East Asian typography.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | rt {} "Pronunciation goes here."
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name        | Type   | Example       | Description |
-- | |-------------|--------|---------------|-------------|
-- | | `className` | String | "rubyText"    | CSS class of the element |

rt :: FFIComponent BaseAttributes
rt = createBuiltinElement "rt"