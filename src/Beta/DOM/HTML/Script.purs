module Beta.DOM.HTML.Script (script, scriptInline) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, FFIRawTextComponent, createBuiltinElement, createBuiltinElement_)

-- | The `<script>` HTML element is used to embed executable code or data; this is typically used to refer to JavaScript code.
-- | See `scriptInline` for scripts that don't just reference a file.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | script { src: "script.js", crossOrigin: true, type: "text/javascript" }
-- | -- or
-- | ```
script :: FFIComponent_ ScriptAttributes
script = createBuiltinElement_ "script"

type ScriptAttributes = BaseAttributesR
  ( src :: String
  , crossOrigin :: Boolean
  , type :: String
  )

-- | The `<script>` HTML element is used to embed executable code or data; this is typically used to embed JavaScript code.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | scriptInline { type: "text/javascript" } "jQuery('body').append('<p>Hello World!</p>');"
-- | ```
scriptInline :: FFIRawTextComponent ScriptAttributes
scriptInline = createBuiltinElement "script"
