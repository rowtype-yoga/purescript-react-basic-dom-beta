module Beta.DOM.HTML.Data (dataElem) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<data>` element in HTML, links a given content with a machine-readable translation.
-- | It lets you associate a data value with content that, while being machine-readable,
-- | is also human-readable.
-- |
-- | Note: `<data>` only has a semantic effect when the 'value' attribute is set.
-- |
-- | #### Example:
-- | ```purescript
-- | dataElem { value: "15" } "$15"
-- | ```
dataElem :: FFIComponent DataAttributes
dataElem = createBuiltinElement "data"

type DataAttributes = BaseAttributesR
  ( value :: String
  )
