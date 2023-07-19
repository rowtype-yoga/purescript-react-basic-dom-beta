module Beta.DOM.HTML.Meta (meta) where

import Prelude

import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement_)

type MetaAttributes =
  ( charSet :: String
  , content :: String
  , httpEquiv :: String
  , name :: String
  )

-- | The `<meta>` tag in HTML, which provides metadata about the HTML document. Metadata is not displayed but is machine parsable.
-- | **meta is a void element** — it can't contain any children
-- | #### Example:
-- | ```purescript
-- | -- General meta tags
-- | meta { charSet: "utf-8" }
-- | meta { name: "viewport", content: "width=device-width, initial-scale=1" }
-- | meta { name: "description", content: "This is the description of the page." }
-- | meta { name: "keywords", content: "keyword1, keyword2, keyword3" }
-- |
-- | -- Open Graph tags (for Facebook, LinkedIn etc.)
-- | meta { property: "og:title", content: "The Title of the Webpage" }
-- | meta { property: "og:description", content: "The description of the webpage." }
-- | meta { property: "og:image", content: "https://example.com/path/to/image.jpg" }
-- | meta { property: "og:url", content: "https://example.com/page.html" }
-- |
-- | -- Twitter card tags
-- | meta { name: "twitter:card", content: "summary_large_image" }
-- | meta { name: "twitter:creator", content: "@username" }
-- | meta { name: "twitter:title", content: "The Title of the Webpage" }
-- | meta { name: "twitter:description", content: "The description of the webpage." }
-- | meta { name: "twitter:image", content: "https://example.com/path/to/image.jpg" }
-- |
-- | Common attributes:
-- || Attribute     | Type     | Example                                 | Description |
-- ||---------------|----------|-----------------------------------------|-------------|
-- || `charSet`     | `String` | `"UTF-8"`                               | Specifies the character encoding for the HTML document. |
-- || `content`     | `String` | `"width=device-width, initial-scale=1"` | Gives the value associated with the `http-equiv` or `name` attribute. |
-- || `http-equiv`  | `String` | `"refresh"`                             | Provides an HTTP header for the information/value of the content attribute. |
-- || `name`        | `String` | `"description"`                         | Defines a name for the metadata.
-- || `property`    | `String` | `"og:title"`                            | Defines the property the metadata should be associated with.
meta :: FFIComponent_ MetaAttributes
meta = createBuiltinElement_ "meta"