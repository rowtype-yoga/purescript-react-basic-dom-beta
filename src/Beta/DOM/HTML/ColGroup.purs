module Beta.DOM.HTML.ColGroup (colgroup) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<colgroup>` element in HTML, specifies a group of one or more columns
-- | in a table for formatting. The `<colgroup>` tag is useful for applying styles
-- | to entire columns, instead of repeating the styles for each cell, for each row.
-- |
-- | Note: `<colgroup>` must be a direct child of a `<table>` element and it can only
-- | have `<col>` elements as children.
-- |
-- | #### Example:
-- | ```purescript
-- | colgroup { span: 2 } [ col { className: "myClass" }, col { className: "otherClass" } ]
-- | ```
type ColGroupAttributes = BaseAttributesR
  ( span :: Int
  )

colgroup :: FFIComponent ColGroupAttributes
colgroup = createBuiltinElement "colgroup"