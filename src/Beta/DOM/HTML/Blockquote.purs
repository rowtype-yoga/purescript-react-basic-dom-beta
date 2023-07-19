module Beta.DOM.HTML.Blockquote (blockquote) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

type BlockquoteAttributes = BaseAttributesR
  ( cite :: String
  )

-- | The `<blockquote>` element in HTML, represents a section that is quoted from another source.
-- |
-- | Content inside a `<blockquote>` must be quoted from another source, whose address,
-- | if it has one, may be cited in the `cite` attribute.
-- |
-- | #### Example:
-- | ```purescript
-- | blockquote { cite: "https://www.example.com/source" } "Quotation from the cited source"
-- | ```
blockquote :: FFIComponent BlockquoteAttributes
blockquote = createBuiltinElement "blockquote"
