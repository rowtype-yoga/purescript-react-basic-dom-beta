module Beta.DOM.HTML.Thead (thead) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<thead>` HTML element groups the header content in a table.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | thead {} [ tr {} [ th {} "First Name", th {} "Last Name" ] ]
-- | ```
thead :: FFIComponent BaseAttributes
thead = createBuiltinElement "thead"