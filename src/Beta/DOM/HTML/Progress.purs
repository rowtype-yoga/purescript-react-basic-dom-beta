module Beta.DOM.HTML.Progress (progress) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<progress>` HTML element represents the completion progress of a task.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | progress { value: "70", max: "100" } ""
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name | Type | Example | Description |
-- | |------|------|---------|-------------|
-- | | `value` | String | "70" | Current value of the progress |
-- | | `max` | String | "100" | Maximum value of the progress |
progress :: FFIComponent ProgressAttributes
progress = createBuiltinElement "progress"

type ProgressAttributes = BaseAttributesR
  ( value :: String
  , max :: String
  )
