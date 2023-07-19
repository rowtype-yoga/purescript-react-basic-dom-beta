module Beta.DOM.HTML.Picture (picture) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<picture>` HTML element contains zero or more `<source>` elements and one `<img>` element to offer alternative versions of an image for different display scenarios.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | picture { }
-- |   [ source { srcset: "large.jpg", media: "(min-width: 800px)" }
-- |   , source { srcset: "medium.jpg", media: "(min-width: 600px)" }
-- |   , img { src: "small.jpg", alt: "Description of the image" }
-- |   ]-- | ```
picture :: FFIComponent BaseAttributes
picture = createBuiltinElement "picture"