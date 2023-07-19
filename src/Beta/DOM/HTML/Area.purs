module Beta.DOM.HTML.Area (area) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<area>` element in HTML, defines a hot-spot region on an image, and optionally associates it with a
-- | hypertext link. This element is used only within a `<map>` element.
-- | **area is a void element**—it does not have any children
-- |
-- | The shape attribute defines the shape of the area (rectangle, circle, or polygon),
-- | and the coords indicates the size of the area.
-- |
-- | #### Example:
-- | ```purescript
-- | area { shape: "rect", coords: "34,44,270,350", href: "http://www.example.com" }
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example                    | Description |
-- ||--------------|----------|----------------------------|-------------|
-- || `shape`      | `String` | `"rect"`                   | Defines the shape of the region. |
-- || `coords`     | `String` | `"34,44,270,350"`          | A set of values specifying the coordinates of the hot-spot region. |
-- || `href`       | `String` | `"http://www.example.com"` | Specifies the hyperlink target for the area. |
-- || `alt`        | `String` | `"Example Area"`           | Alternative text for the area. Used by screen readers for accessibility. |
area :: FFIComponent_ BaseAttributes
area = createBuiltinElement_ "area"