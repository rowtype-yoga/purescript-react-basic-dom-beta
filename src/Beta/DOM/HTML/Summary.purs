module Beta.DOM.HTML.Summary (summary) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)
import React.Basic.Events (EventHandler)

type SummaryProps = (onToggle :: EventHandler | BaseAttributes)
-- | The `<summary>` HTML element is used as a summary, caption, or legend for the content of a `<details>` element.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | details {}
-- |   [ summary {} "Summary text goes here."
-- |   , text "The long version of the details goes here."
-- |   ]
-- | ```
summary :: FFIComponent SummaryProps
summary = createBuiltinElement "summary"