module Beta.DOM.HTML.Object (object) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<object>` HTML element is used to embed content from an external application or interactive content (including images, audio and video).
-- | Among the possible reasons for using `object` to embed an image, the most practical is that it allows the fallback content to contain HTML markup, such as headings, lists, tables, and phrase markup. The `img` element lets you specify only plain text as fallback content—even paragraph breaks cannot be specified.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | object { data: "image.svg", type: "image/svg+xml" } "Your browser does not support SVG."
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name            | Type    | Description                        |
-- | |-----------------|---------|------------------------------------|
-- | | `data`          | String  | URL of the embedded content        |
-- | | `type`          | String  | Media type of the embedded content |
object :: FFIComponent ObjectAttributes
object = createBuiltinElement "object"

type ObjectAttributes = BaseAttributesR
  ( data :: String
  , type :: String
  )
