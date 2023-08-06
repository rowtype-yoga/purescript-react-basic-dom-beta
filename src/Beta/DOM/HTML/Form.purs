module Beta.DOM.HTML.Form (form) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)
import React.Basic.Events (EventHandler)

-- | The `<form>` HTML element represents a form, which is a component of an application
-- | that is designed for the performing of an action by the user.
-- |
-- | #### Example:
-- | ```purescript
-- | form { action: "/path/to/submit", method: "post", onSubmit }
-- |   [ input { type: "text", name: "username", value: userName, onChange: onChangeUserName }
-- |   , input { type: "password", name: "password", value: password, onChange: onChangePassword }
-- |   , input { type: "submit", value: "Login" }
-- |   ]
-- | ```
form :: FFIComponent FormAttributes
form = createBuiltinElement "form"

type FormAttributes = BaseAttributesR
  ( action :: String
  , method :: String
  , onSubmit :: EventHandler
  )