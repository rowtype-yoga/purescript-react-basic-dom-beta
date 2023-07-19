module Beta.DOM.HTML.Main (main) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<main>` HTML element represents the dominant content of the body of a document.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | H.main {} "This is the main content of the document."
-- | ```
main :: FFIComponent BaseAttributes
main = createBuiltinElement "main"