module Beta.DOM.HTML.Time (time) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<time>` HTML element represents a specific period in time.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | time { datetime: "2024-02-14" } "Valentine's Day"
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name        | Type   | Example     | Description |
-- | |-------------|--------|-------------|-------------|
-- | | `datetime` | String | "2008-02-14" | Machine-readable equivalent of the time |
time :: FFIComponent TimeAttributes
time = createBuiltinElement "time"

type TimeAttributes = BaseAttributesR
  ( datetime :: String
  )
