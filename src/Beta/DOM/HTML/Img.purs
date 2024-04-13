module Beta.DOM.HTML.Img (img) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<img>` HTML element represents an image in the document.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | img
-- |   { src: "image.jpg"
-- |   , alt: "A beautiful scenery"
-- |   }
-- | ```
-- |
-- | #### Common Attributes:
-- |
-- | | Name    | Type   | Description |
-- | |---------|--------|-------------|
-- | | `src`   | String | source URL of the image |
-- | | `alt`   | String | alternative text for the image for blind and otherwise impaired users |
img :: FFIComponent_ ImgAttributes
img = createBuiltinElement_ "img"

type ImgAttributes = BaseAttributesR
  ( src :: String
  , alt :: String
  , width :: String
  , height :: String
  , sizes :: String
  , srcSet :: String
  , decoding :: String
  , loading :: String
  , crossOrigin :: String
  , useMap :: String
  , isMap :: String
  , referrerPolicy :: String
  )
