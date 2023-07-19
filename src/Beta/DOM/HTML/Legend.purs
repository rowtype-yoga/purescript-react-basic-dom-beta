module Beta.DOM.HTML.Legend (legend) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<legend>` HTML element represents a caption for the content of its parent `<fieldset>`.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | legend { } "Account Information"
-- | ```
legend :: FFIComponent BaseAttributes
legend = createBuiltinElement "legend"