module Beta.DOM.HTML.Title (title) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement)
import React.Basic (JSX)

-- | The `<title>` tag in HTML, it defines the title of the HTML document, which is shown in a browser's title bar or a page's tab.
-- | #### Example:
-- | ```purescript
-- | title "Page Title"
-- | ```
-- |
-- | The `<title>` tag must be placed within the `<head>` tag.
-- | Note: The `<title>` tag does not have specific attributes, it only contains text representing the document title.
title :: String -> JSX
title = createBuiltinElement "title" {}
