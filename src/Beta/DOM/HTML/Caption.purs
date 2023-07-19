module Beta.DOM.HTML.Caption (caption) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<caption>` element in HTML, specifies the caption (or title) of a table.
-- | If it is not included in the HTML, there will be no caption. However, if it is included,
-- | it must be the first child of its parent `<table>` element.
-- |
-- | #### Example:
-- | ```purescript
-- | table { }
-- |   [ caption { } "This is a caption"
-- |   , thead { } [ ... ]
-- |   , tbody { } [ ... ]
-- |   ]
-- | ```
caption :: FFIComponent BaseAttributes
caption = createBuiltinElement "caption"