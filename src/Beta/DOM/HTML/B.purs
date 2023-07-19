module Beta.DOM.HTML.B (b) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<b>` element in HTML, represents text which is stylistically different from normal text
-- | without any special importance. This could be a keyword or product name in a text. It's essentially
-- | used to draw the reader's attention to the element's contents, which are not otherwise granted
-- | special importance.
-- |
-- | #### Example:
-- | ```purescript
-- | b { className: "bold-text" } "This is a bold text"
-- | ```
b :: FFIComponent BaseAttributes
b = createBuiltinElement "b"