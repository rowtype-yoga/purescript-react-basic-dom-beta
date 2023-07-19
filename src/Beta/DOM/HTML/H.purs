module Beta.DOM.HTML.H (h1, h2, h3, h4, h5, h6) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<h1>` HTML element represents a first level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h1 { } "This is a first level heading (h1)"
-- | ```
-- | *Note*: Only one `<h1>` element should be present on a page. It should be the main heading.
h1 :: FFIComponent BaseAttributes
h1 = createBuiltinElement "h1"

-- | The `<h2>` HTML element represents a second level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h2 { } "This is a second level heading (h2)"
-- | ```
h2 :: FFIComponent BaseAttributes
h2 = createBuiltinElement "h2"

-- | The `<h3>` HTML element represents a third level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h3 { } "This is a third level heading (h3)"
-- | ```
h3 :: FFIComponent BaseAttributes
h3 = createBuiltinElement "h3"

-- | The `<h4>` HTML element represents a fourth level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h4 { } "This is a fourth level heading (h4)"
-- | ```
h4 :: FFIComponent BaseAttributes
h4 = createBuiltinElement "h4"

-- | The `<h5>` HTML element represents a fifth level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h5 { } "This is a fifth level heading (h5)"
-- | ```
h5 :: FFIComponent BaseAttributes
h5 = createBuiltinElement "h5"

-- | The `<h6>` HTML element represents a sixth level heading in the document.
-- |
-- | #### Example:
-- | ```purescript
-- | h6 { } "This is a sixth level heading (h6)"
-- | ```
h6 :: FFIComponent BaseAttributes
h6 = createBuiltinElement "h6"