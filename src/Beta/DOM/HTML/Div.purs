module Beta.DOM.HTML.Div (div, div_) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<div>` tag in HTML, acts as a container unit which encapsulates other page elements
-- | and divides the HTML document into sections. Web developers use <div> elements to group
-- | together HTML elements and apply CSS styles to many elements at once.
-- |
-- | #### Example:
-- | ```purescript
-- | div { id: "header", className: "menu" } [ h1 { } "Hello, World!" ]
-- | div { id: "body", className: "container" } [ p { } "Welcome to the website!" ]
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `id`         | `String` | `"header"`          | The unique identifier of the div section. |
-- || `className`  | `String` | `"container"`       | The class of the div section for applying CSS styles. |
-- || `data-*`     | `String` | `"custom-data"`     | Stores custom data private to the page or application. |
-- || `aria-*`     | `String` | `"aria-labelledby"` | Defines accessibility-related attributes. |
div :: FFIComponent BaseAttributes
div = createBuiltinElement "div"

-- | The `<div>` tag in HTML without children, acts as a container unit which encapsulates other page elements
-- | and divides the HTML document into sections. Web developers use <div> elements to group
-- | together HTML elements and apply CSS styles to many elements at once.
-- |
-- | #### Example:
-- | ```purescript
-- | div_ { id: "header", className: "menu" }
-- | div_ { id: "body", className: "container" }
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `id`         | `String` | `"header"`          | The unique identifier of the div section. |
-- || `className`  | `String` | `"container"`       | The class of the div section for applying CSS styles. |
-- || `data-*`     | `String` | `"custom-data"`     | Stores custom data private to the page or application. |
-- || `aria-*`     | `String` | `"aria-labelledby"` | Defines accessibility-related attributes. |
div_ :: FFIComponent_ BaseAttributes
div_ = createBuiltinElement_ "div"
