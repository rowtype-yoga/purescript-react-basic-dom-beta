module Beta.DOM.HTML.Ul (ul) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<ul>` tag in HTML, represents an unordered list of items, typically rendered as a bulleted list.
-- |
-- | #### Example:
-- | ```purescript
-- | ul { className: "element-list" } [ li { } "Item 1", li { } "Item 2" ]
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `className`  | `String` | `"element-list"`    | The class of the ul for applying CSS styles. |
-- || `data-*`     | `String` | `"custom-data"`     | Stores custom data private to the page or application. |
-- || `aria-*`     | `String` | `"aria-labelledby"` | Defines accessibility-related attributes. |
ul :: FFIComponent BaseAttributes
ul = createBuiltinElement "ul"