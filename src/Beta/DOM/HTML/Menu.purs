module Beta.DOM.HTML.Menu (menu) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)
import React.Basic.Events (EventHandler)

-- | The `<menu>` tag in HTML, represents a group of commands that a user can perform or activate.
-- | #### Example:
-- | ```purescript
-- | menu { type: "context", label: "My Menu" }
-- | ```
-- |
-- | Common attributes:
-- || Attribute | Type     | Example        | Description |
-- ||-----------|----------|----------------|-------------|
-- || `type`    | `String` | `"context"`    | Type of menu. |
-- || `label`   | `String` | `"My Menu"`    | Label for the menu. |
menu :: FFIComponent_ MenuAttributes
menu = createBuiltinElement_ "menu"

type MenuAttributes = BaseAttributesR
  ( type :: String
  , label :: String
  )