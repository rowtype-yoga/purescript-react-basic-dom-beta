module Beta.DOM.HTML.Nav (nav) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<nav>` HTML element represents a section of a page whose purpose is to provide navigation links.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | nav { className: "mainNav" }
-- |   [ ul {}
-- |       [ li {} $ a { href: "#section1" } "Section 1"
-- |       , li {} $ a { href: "#section2" } "Section 2"
-- |       ]
-- |   ]
-- | ```
nav :: FFIComponent BaseAttributes
nav = createBuiltinElement "nav"