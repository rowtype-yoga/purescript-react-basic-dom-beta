module Beta.DOM.HTML.DataList (datalist) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<datalist>` element in HTML, provides a "autocomplete" feature on input elements.
-- | Users will see a drop-down list of pre-defined options as they input data.
-- |
-- | Note: `<datalist>` is connected to an `<input>` element with the list attribute.
-- |
-- | #### Example:
-- | ```purescript
-- | datalist { id: "browsers" } [option { value: "Firefox" }, option { value: "Chrome" }, option { value: "Opera" }, option { value: "Safari" }]
-- | ```
datalist :: FFIComponent BaseAttributes
datalist = createBuiltinElement "datalist"