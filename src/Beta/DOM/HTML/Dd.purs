module Beta.DOM.HTML.Dd (dd) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<dd>` HTML element indicates the description of a term in a description list (`<dl>`),
-- | enclosed by `<dt>` (term) and `<dd>` (description). Each pair of `<dt>` and `<dd>` shares a
-- | common parent `<dl>`.
-- |
-- | #### Example:
-- | ```purescript
-- | dl { }
-- |  [ dt { } [ text "Term 1" ]
-- |  , dd { } [ text "Description of Term 1" ]
-- |  , dt { } [ text "Term 2" ]
-- |  , dd { } [ text "Description of Term 2" ]
-- |  ]
-- | ```
dd :: FFIComponent BaseAttributes
dd = createBuiltinElement "dd"