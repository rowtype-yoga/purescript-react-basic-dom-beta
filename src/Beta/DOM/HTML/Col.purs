module Beta.DOM.HTML.Col (col) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<col>` element in HTML, provides a way to group columns of data
-- | together in a table and apply styles to them. It's used inside a `<colgroup>` element.
-- | Importantly, `<col>` is an empty element that doesn't have child nodes.
-- |
-- | #### Example:
-- | ```purescript
-- | col { span: 2, className: "myClass" }
-- | ```
col :: FFIComponent_ ColAttributes
col = createBuiltinElement_ "col"

type ColAttributes = BaseAttributesR
  ( span :: Int
  )

