module Beta.DOM.HTML.Li (li) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<li>` tag in HTML, is used to represent an item in a list. It must be contained in
-- | a parent element: an ordered list (<ol>), an unordered list (<ul>), or a menu (<menu>).
-- |
-- | #### Example:
-- | ```purescript
-- | li { className: "item" } "This is a list item"
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `value`      | `Number` | `1`                 | Defines a value for ordered list items |
-- || `className`  | `String` | `"item"`            | The class of the li for applying CSS styles. |
-- || `data-*`     | `String` | `"custom-data"`     | Stores custom data private to the page or application. |
-- || `aria-*`     | `String` | `"aria-labelledby"` | Defines accessibility-related attributes. |
li :: FFIComponent BaseAttributes
li = createBuiltinElement "li"