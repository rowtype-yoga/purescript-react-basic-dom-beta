module Beta.DOM.HTML.Track (track) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<track>` HTML element is used as a child of the media elements—`<audio>`, `<video>`. It lets you specify timed text tracks (or time-based data), for example to automatically handle subtitles.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | track { kind: "subtitles", src: "subs_eng.srt", srcLang: "en" }
-- | ```
-- |
-- | #### Common attributes:
-- |
-- | | Name    | Type   | Example     | Description |
-- | |---------|--------|-------------|-------------|
-- | | `kind`   | String | "subtitles" | Kind of text track |
-- | | `src`   | String | "subs_eng.srt" | URL of the track file |
-- | | `srcLang`   | String | "en" | Language of the track text data |
track :: FFIComponent_ TrackAttributes
track = createBuiltinElement_ "track"

type TrackAttributes = BaseAttributesR
  ( kind :: String
  , src :: String
  , srcLang :: String
  )
