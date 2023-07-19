module Beta.DOM.HTML.Source (source) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<source>` HTML element is used to specify multiple media resources for media elements, such as `<picture>`, `<audio>`, and `<video>`.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | picture { }
-- |   [ source { srcset: "image-large.jpg", media: "(min-width: 800px)", type: "image/jpeg" }
-- |   , source { srcset: "image-medium.jpg", media: "(min-width: 600px)", type: "image/jpeg" }
-- |   , img { src: "image-small.jpg", alt: "Description" }
-- |   ]
-- | ```
-- |
-- | #### Common attributes:
-- |
-- | | Name            | Type   | Example     | Description                             |
-- | |-----------------|--------|-------------|-----------------------------------------|
-- | | `src`           | String | "audio.ogg" | URL of the media file or stream         |
-- | | `type`          | String | "audio/ogg" | Type of the media file or stream       |
-- | | `media`         | String | "(min-width: 600px)" | Media query of the media resource |
-- | | `srcset`        | String | "image-1x.jpg 1x, image-2x.jpg 2x" | Image source set for `<picture>` |
source :: FFIComponent_ SourceAttributes
source = createBuiltinElement_ "source"

type SourceAttributes = BaseAttributesR
  ( src :: String
  , type :: String
  , media :: String
  , srcset :: String
  )

