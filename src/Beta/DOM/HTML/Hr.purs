module Beta.DOM.HTML.Hr (hr) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<hr>` HTML element represents a thematic break between paragraph-level elements: for example, a change of scene in a story,
-- | or a shift of topic within a section.
-- | This is a void element, it can't have any children or content inside it.
-- |
-- | Common attributes: `className`, `id`
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | hr { className: "section-divider" }
-- | ```
hr :: FFIComponent_ BaseAttributes
hr = createBuiltinElement_ "hr"