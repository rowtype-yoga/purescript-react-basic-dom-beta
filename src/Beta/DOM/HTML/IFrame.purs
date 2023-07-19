module Beta.DOM.HTML.IFrame (iframe, iframeWithChildren) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<iframe>` HTML element represents a nested browsing context,
-- | effectively embedding another HTML page into the current page.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | iframe
-- |   { src: "https://www.example.com"
-- |   , height: "500"
-- |   , width: "500"
-- |   , name: "Example Frame"
-- |   , sandbox: "allow-scripts allow-top-navigation"
-- |   , srcdoc: "<p>Some embedded HTML</p>"
-- |   , allow: "autoplay; encrypted-media"
-- |   }
-- | ```
-- |
-- | #### Common Attributes
-- |
-- | | Name     | Type   | Description |
-- | |----------|--------|-------------|
-- | | `src`    | `String` | Source URL of the embedded content |
-- | | `height` | `String` | Height of the iframe |
-- | | `width`  | `String` | Width of the iframe |
-- | | `name`   | `String` | Name of the iframe |
-- | | `sandbox`| `String` | Applies extra restrictions to the iframe's content |
-- | | `srcdoc` | `String` | Inline HTML to embed |
-- | | `allow`  | `String` | The iframe's feature policy |
-- | ```
iframe :: FFIComponent_ IFrameAttributes
iframe = createBuiltinElement_ "iframe"

iframeWithChildren :: FFIComponent IFrameAttributes
iframeWithChildren = createBuiltinElement "iframe"

type IFrameAttributes = BaseAttributesR
  ( src :: String
  , height :: String
  , width :: String
  , name :: String
  , sandbox :: String
  , srcdoc :: String
  , allow :: String
  )
