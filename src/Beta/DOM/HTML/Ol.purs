module Beta.DOM.HTML.Ol (ol) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<ol>` tag in HTML, represents an ordered list of items — typically rendered as a numbered list.
-- |
-- | #### Example:
-- | ```purescript
-- | ol { className: "element-list" } [ li { } "Item 1", li { } "Item 2" ]
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `start`      | `Number` | `5`                 | Defines the start number of the ordered list. |
-- || `type`       | `String` | `"1"`               | Defines the type of numbering that should be used.
ol :: FFIComponent OlAttributes
ol = createBuiltinElement "ol"

type OlAttributes = BaseAttributesR
  ( start :: Int
  )
