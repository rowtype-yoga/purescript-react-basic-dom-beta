module Beta.DOM.HTML.Textarea (textarea) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent_, createBuiltinElement_)

-- | The `<textarea>` HTML element represents a multi-line plain-text editing control.
-- |
-- | #### Example:
-- |
-- | ```purescript
-- | textarea { rows: 5, cols: 50, value, onChange }
-- | ```
--
-- | #### Common attributes:
-- |
-- | | Name    | Type   | Example          | Description |
-- | |---------|--------|------------------|-------------|
-- | | `cols`   | Int | 50 | Specifies the visible width |
-- | | `rows`   | Int | 5 | Specifies the visible number of lines |
textarea :: FFIComponent_ TextareaAttributes
textarea = createBuiltinElement_ "textarea"

type TextareaAttributes = BaseAttributesR
  ( cols :: Int
  , rows :: Int
  , value :: String
  , defaultValue :: String
  , autoComplete :: String
  , autoFocus :: Boolean
  , disabled :: Boolean
  , form :: String
  , maxLength :: Int
  , minLength :: Int
  , name :: String
  , placeholder :: String
  , readOnly :: Boolean
  , required :: Boolean
  , wrap :: String
  , onChange :: EventHandler
  )
