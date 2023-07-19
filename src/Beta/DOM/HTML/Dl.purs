module Beta.DOM.HTML.Dl (dl) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<dl>` HTML element is for grouping together sets of `<dt>` (term) and `<dd>` (description) elements,
-- | typically used for creating a list of terms along with their associated descriptions.
-- |
-- | #### Example:
-- | ```purescript
-- | dl { }
-- |  [ dt { } "Term 1"
-- |  , dd { } "Description of Term 1"
-- |  , dt { } "Term 2"
-- |  , dd { } "Description of Term 2"
-- |  ]
-- | ```
dl :: FFIComponent BaseAttributes
dl = createBuiltinElement "dl"