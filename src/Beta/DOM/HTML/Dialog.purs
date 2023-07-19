module Beta.DOM.HTML.Dialog (dialog) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<dialog>` HTML element represents a dialog box or other interactive
-- | component, such as an inspector or window.
-- |
-- | #### Example:
-- | ```purescript
-- | dialog { open: true } "This is a dialog box."
-- | ```
type DialogAttributes = BaseAttributesR
  ( open :: Boolean
  )

dialog :: FFIComponent DialogAttributes
dialog = createBuiltinElement "dialog"