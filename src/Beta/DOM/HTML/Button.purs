module Beta.DOM.HTML.Button (button, button_) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)

-- | The `<button>` tag in HTML, represents a clickable button.
-- |
-- | #### Example:
-- | ```purescript
-- | button { type: "button", className: "submit-button" } "Click me"
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `type`       | `String` | `"button"`          | The type of the button. |
-- || `className`  | `String` | `"submit-button"`   | The class of the button for applying CSS styles. |
-- || `disabled`   | `Boolean`| `true`              | Specifies that the button should be disabled. |
-- || `form`       | `String` | `"form-id"`         | Specifies the form the button belongs to. |
button :: FFIComponent ButtonProps
button = createBuiltinElement "button"

-- | The `<button>` tag in HTML without children, represents a clickable button.
-- |
-- | #### Example:
-- | ```purescript
-- | button { type: "button", className: "submit-button" }
-- | ```
-- |
-- | Common attributes:
-- || Attribute    | Type     | Example             | Description |
-- ||--------------|----------|---------------------|-------------|
-- || `type`       | `String` | `"button"`          | The type of the button. |
-- || `className`  | `String` | `"submit-button"`   | The class of the button for applying CSS styles. |
-- || `disabled`   | `Boolean`| `true`              | Specifies that the button should be disabled. |
-- || `form`       | `String` | `"form-id"`         | Specifies the form the button belongs to. |
button_ :: FFIComponent_ ButtonProps
button_ = createBuiltinElement_ "button"

type ButtonProps = BaseAttributesR
  ( type :: String
  , className :: String
  , disabled :: Boolean
  , form :: String
  )