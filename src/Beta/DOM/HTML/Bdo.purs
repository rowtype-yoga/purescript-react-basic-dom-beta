module Beta.DOM.HTML.Bdo (bdo) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)
import Beta.DOM.Attributes.Dir (Dir)

type BdoAttributes = BaseAttributesR
  (dir :: Dir)

-- | The `<bdo>` (Bi-directional Override) element in HTML, is used to override the current
-- | directionality of text. It causes the directionality of the characters to be
-- | ignored in favor of the specified directionality.
-- |
-- | #### Example:
-- | ```purescript
-- | bdo { dir: dirRightToLeft } "This text will go right to left"
-- | ```
-- |
-- | Note: It supports one attribute `dir`, which can have two valid values: `ltr`
-- | (Left-To-Right) or `rtl` (Right-To-Left).
bdo :: FFIComponent BdoAttributes
bdo = createBuiltinElement "bdo"
