module Beta.DOM.HTML.Audio (audio) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

type AudioAttributes = BaseAttributesR
  ( src :: String
  , controls :: String
  , autoplay :: Boolean
  , loop :: Boolean
  )

-- | The `<audio>` element in HTML, is used to embed sound content in documents. It may contain
-- | one or more audio sources, represented using the `src` attribute or the `<source>` element.
-- |
-- | #### Example:
-- | ```purescript
-- | audio { src: "/media/sound.mp3", controls: true, autoplay: false } (a { href: "/media/sound.mp3" } "Download audio")
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example          | Description |
-- ||--------------|----------|------------------|-------------|
-- || `src`        | `String` | `"/path/to/audio"`| The URL of the audio to embed. |
-- || `controls`   | `Boolean`| `true`           | If this attribute is present, the browser will provide controls to allow the user to control audio playback. |
-- || `autoplay`   | `Boolean`| `false`          | If specified, the audio will automatically begin playback as soon as it can do so without stopping to finish loading the data. |
-- || `loop`       | `Boolean`| `false`          | If specified, the audio will automatically start over when finished. |
audio :: FFIComponent AudioAttributes
audio = createBuiltinElement "audio"