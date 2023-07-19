module Beta.DOM.HTML.Address (address) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<address>` tag in HTML, represents the contact information for its nearest `<article>`
-- | or `<body>` ancestor. If that is the `<body>`, then it applies to the whole document.
-- |
-- | #### Example:
-- | ```purescript
-- | address { className: "contact-info" } "123 Example Street, Example City"
-- | ```
address :: FFIComponent BaseAttributes
address = createBuiltinElement "address"