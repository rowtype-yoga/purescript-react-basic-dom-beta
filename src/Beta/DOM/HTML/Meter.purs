module Beta.DOM.HTML.Meter (meter) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<meter>` HTML element represents a scalar measurement within a known range, or a fractional value.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | meter { value: "0.6", min: "0", max: "1", low: "0.25", high: "0.75", optimum: "0.5" } ""
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name        | Type   | Example   | Description |
-- | |-------------|--------|-----------|-------------|
-- | | `value`     | String | "0.6"     | Current value of the measurement |
-- | | `min`       | String | "0"       | Minimum limit of the range |
-- | | `max`       | String | "1"       | Maximum limit of the range |
-- | | `low`       | String | "0.25"    | Low end of the "good" part of the range |
-- | | `high`      | String | "0.75"    | High end of the "good" part of the range |
-- | | `optimum`   | String | "0.5"     | Optimum value in the range |
meter :: FFIComponent MeterAttributes
meter = createBuiltinElement "meter"

type MeterAttributes = BaseAttributesR
  ( value :: String
  , min :: String
  , max :: String
  , low :: String
  , high :: String
  , optimum :: String
  )
