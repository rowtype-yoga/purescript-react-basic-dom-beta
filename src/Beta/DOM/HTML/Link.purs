module Beta.DOM.HTML.Link (link) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<link>` tag in HTML, defines the relationship between the current document and an external resource.
-- | **link is a void element** — it can't contain any children
-- | #### Example:
-- | ```purescript
-- | link { rel: "stylesheet", href: "/style.css" }
-- | link { rel: "icon", type: "image/png", href: "/favicon.png" }
-- | ```
-- |
-- | Common attributes:
-- || Attribute | Type     | Example        | Description |
-- ||-----------|----------|----------------|-------------|
-- || `href`        | `String` | `"/style.css"` | Location of the linked resource. |
-- || `rel`         | `String` | `"stylesheet"` | The relationship between the current document and the linked resource. |
-- || `type`        | `String` | `"image/png"`  | The media type of the linked resource. |
-- || `media`       | `String` | `"screen"`     | What media/device the linked resource is optimised for. |
-- || `as`          | `String` | `"fetch"`      | This attribute is required when rel="preload" has been set on the <link> element, optional when rel="modulepreload" has been set, and otherwise should not be used. |
-- || `crossOrigin` | `String` | `"anonymous"`  | 
link :: FFIComponent_ LinkAttributes
link = createBuiltinElement_ "link"

type LinkAttributes = BaseAttributesR
  ( href :: String
  , rel :: String
  , type :: String
  , media :: String
  , "as" :: String
  )
