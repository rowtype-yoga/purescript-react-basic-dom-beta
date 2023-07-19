module Beta.DOM.HTML.Span (span) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<span>` tag in HTML is a generic inline container for phrasing content, which does
-- | not inherently represent anything. It can be used to group elements for styling purposes
-- | (using the class or id attributes), or because they share attribute values.
-- |
-- | #### Example:
-- | ```purescript
-- | span { id: "highlight", className: "note" } "This is a note"
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `id`         | `String` | `"highlight"`       | The unique identifier of the span. |
-- || `className`  | `String` | `"note"`            | The class of the span for applying CSS styles. |
-- || `data-*`     | `String` | `"custom-data"`     | Stores custom data private to the page or application. |
-- || `aria-*`     | `String` | `"aria-labelledby"` | Defines accessibility-related attributes. |
span :: FFIComponent BaseAttributes
span = createBuiltinElement "span"