module Beta.DOM.HTML.Map (map) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<map>` HTML element is used with area elements to define an image map.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | map { name: "planetmap" }
-- |   [ area { shape: "rect", coords: "50,50,100,100", href: "location1.html", alt: "Location 1" }
-- |   , area { shape: "circle", coords: "200,200,50", href: "location2.html", alt: "Location 2" }
-- |   ]
-- | ```
-- |
-- | #### Common attributes:
-- |
-- | | Name        | Type    | Description |
-- | |-------------|---------|-------------|
-- | | `name`      | String  | Name of the image map |
map :: FFIComponent MapAttributes
map = createBuiltinElement "map"

type MapAttributes = BaseAttributesR
  ( name :: String
  )

