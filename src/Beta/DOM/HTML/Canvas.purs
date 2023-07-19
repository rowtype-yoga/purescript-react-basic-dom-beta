module Beta.DOM.HTML.Canvas (canvas) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

type CanvasAttributes = BaseAttributesR
  ( width :: Number
  , height :: Number
  )

-- | The `<canvas>` element in HTML, is used to draw graphics via scripting
-- | (usually JavaScript). By default, it creates a fixed-size drawing surface
-- | that exposes one or more rendering contexts, which are used to create and
-- | manipulate the content shown.
-- |
-- | #### Example:
-- | ```purescript
-- | canvas { id: "myCanvas", width: 200.0, height: 200.0 }
-- | ```
-- |
-- | Note: It primarily takes two attributes `height` and `width` which specify
-- | the height and width of the canvas respectively.
canvas :: FFIComponent CanvasAttributes
canvas = createBuiltinElement "canvas"