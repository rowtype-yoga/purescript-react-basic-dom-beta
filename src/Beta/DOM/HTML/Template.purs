module Beta.DOM.HTML.Template (template) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<template>` HTML element is a mechanism for holding client-side content that is not to be rendered when a page is loaded but may subsequently be instantiated during runtime.
-- | You probably don't want this when using React.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | template { } "Template content goes here."
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name    | Type   | Example     | Description |
-- | |---------|--------|-------------|-------------|
-- | | `className` | String | "templateClass" | CSS class of the element |
template :: FFIComponent BaseAttributes
template = createBuiltinElement "template"