module Beta.DOM.HTML.Video (video) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<video>` HTML element embeds a media player which supports video playback into the document.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | video { src: "video.mp4", width: 320, height: 240 } "Video content or text displayed if video cannot be played."
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name        | Type   | Example       | Description |
-- | |-------------|--------|---------------|-------------|
-- | | `src` | String | "video.mp4" | The URL of the video to embed |
-- | | `width` | Int | 320 | The width of the video player |
-- | | `height` | Int | 240 | The height of the video player |
video :: FFIComponent VideoAttributes
video = createBuiltinElement "video"

type VideoAttributes = BaseAttributesR
  ( src :: String
  , width :: Int
  , height :: Int
  )
