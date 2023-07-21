module Beta.DOM.HTML.Section (section) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<section>` HTML element represents a standalone section of functionality contained within an HTML document, typically with a heading, ...
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | section {} "Section content goes here."
-- | ```
section :: FFIComponent BaseAttributes
section = createBuiltinElement "section"