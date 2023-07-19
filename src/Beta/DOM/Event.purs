module Beta.DOM.Event where

import Prelude

import Data.DateTime.Instant (Instant)
import Effect (Effect)
import Web.Event.Event (EventType)
import Web.Event.Internal.Types (Event, EventTarget)
import Data.Time.Duration (Seconds)
import Web.HTML.Event.DataTransfer (DataTransfer)
import Web.TouchEvent.TouchList (TouchList)
import Web.TouchEvent.Touch (Touch)

type ReactEventObject more =
  ( bubbles :: Boolean
  , cancelable :: Boolean
  , currentTarget :: EventTarget
  , defaultPrevented :: Boolean
  , eventPhase :: Int
  , isTrusted :: Boolean
  , target :: EventTarget
  , timeStamp :: Instant
  , nativeEvent :: Event
  , preventDefault :: Effect Unit
  , isDefaultPrevented :: Effect Boolean
  , stopPropagation :: Effect Unit
  , isPropagationStopped :: Effect Boolean
  , type :: EventType
  , persist :: Effect Unit
  , isPersistent :: Effect Boolean
  | more
  )

type BaseEvent = { | ReactEventObject () }

type FocusEvent =
  { | ReactEventObject
      ( relatedTarget :: EventTarget
      , detail :: Int
      --  , view :: WindowProxy
      )
  }

type MouseEvent =
  { | ReactEventObject
      ( altKey :: Boolean
      , button :: Int
      , buttons :: Int
      , clientX :: Number
      , clientY :: Number
      , ctrlKey :: Boolean
      , metaKey :: Boolean
      , movementX :: Number
      , movementY :: Number
      , pageX :: Number
      , pageY :: Number
      , screenX :: Number
      , screenY :: Number
      , shiftKey :: Boolean
      )
  }

type AnimationEvent =
  { | ReactEventObject
      ( animationName :: String
      , pseudoElement :: String
      , elapsedTime :: Seconds
      )
  }

type InputEvent =
  { | ReactEventObject
      ( data :: String
      )
  }

type CompositionEvent =
  { | ReactEventObject
      ( data :: String
      )
  }

type ClipboardEvent =
  { | ReactEventObject
      ( clipboardData :: DataTransfer
      )
  }

type DragEvent =
  { | ReactEventObject
      ( dataTransfer :: DataTransfer
      )
  }

type PointerEvent =
  { | ReactEventObject
      ( pointerId :: Int
      , width :: Int
      , height :: Int
      , pressure :: Int
      , tangentialPressure :: Int
      , tiltX :: Int
      , tiltY :: Int
      , twist :: Int
      , pointerType :: String
      , isPrimary :: Boolean
      )
  }

type TouchEvent =
  { | ReactEventObject
      ( altKey :: Boolean
      , changedTouches :: TouchList
      , ctrlKey :: Boolean
      , metaKey :: Boolean
      , shiftKey :: Boolean
      , targetTouches :: Array Touch
      , touches :: Array Touch
      )
  }

type TransitionEvent =
  { | ReactEventObject
      ( propertyName :: String
      , pseudoElement :: String
      , elapsedTime :: Seconds
      )
  }

type WheelEvent =
  { | ReactEventObject
      ( deltaMode :: Int
      , deltaX :: Number
      , deltaY :: Number
      , deltaZ :: Number
      )
  }