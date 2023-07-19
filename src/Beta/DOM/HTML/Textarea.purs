module Beta.DOM.HTML.Textarea (textarea) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesR)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

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

type TextareaAttributes = BaseAttributesR
  ( cols :: Int
  , rows :: Int
  )

textarea :: FFIComponent TextareaAttributes
textarea = createBuiltinElement "textarea"