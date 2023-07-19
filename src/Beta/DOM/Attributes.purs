module Beta.DOM.Attributes where

import Prelude

import Beta.DOM.Attributes.AutoCapitalize (AutoCapitalize)
import Beta.DOM.Attributes.InputMode (InputMode)
import Beta.DOM.Attributes.YesOrNo (YesOrNo)
import Beta.DOM.Event (AnimationEvent, BaseEvent, ClipboardEvent, CompositionEvent, DragEvent, FocusEvent, InputEvent, MouseEvent, PointerEvent, ReactEventObject, TouchEvent, TransitionEvent, WheelEvent)
import Data.Nullable (Nullable)
import Effect.Uncurried (EffectFn1)
import ForgetMeNot (Id)
import React.Basic (Ref) as React
import Type.Row (type (+))
import Web.DOM.Internal.Types (Node)
import Beta.DOM.Internal (CSS)
import React.Basic.Events (EventHandler)

--type BaseAttributes = BaseAttributesR ()
type BaseAttributes = BaseAttributesF Id ()

type BaseAttributesR r =
  ReactAttributes
    + BaseHTMLAttributes
    + BaseHTMLHandlers
    + ARIA_Attributes
    + r

type BaseAttributesF :: forall k. (Type -> k) -> Row k -> Row k
type BaseAttributesF f r =
  ReactAttributesF f
    + BaseHTMLAttributesF f
    + BaseHTMLHandlersF f
    + ARIA_AttributesF f
    + r

type ReactAttributes r = ReactAttributesF Id r

type ReactAttributesF :: forall k. (Type -> k) -> Row k -> Row k
type ReactAttributesF f r =
  ( key :: f String
  , dangerouslySetInnerHTML :: f { __html :: String }
  , ref :: f (React.Ref (Nullable Node))
  , suppressContentEditableWarning :: f Boolean
  , suppressHydrationWarning :: f Boolean
  , style :: f CSS
  | r
  )

type BaseHTMLAttributes r = BaseHTMLAttributesF Id r

type BaseHTMLAttributesF :: forall k. (Type -> k) -> Row k -> Row k
type BaseHTMLAttributesF f r =
  ( accessKey :: f String
  , autoCapitalize :: f AutoCapitalize
  , className :: f String
  , contentEditable :: f Boolean
  , draggable :: f Boolean
  , enterKeyHint :: f String
  , hidden :: f Boolean -- there's also until-found, but come on
  , id :: f String
  , inputMode :: f InputMode
  , is :: f String -- what is this?
  , itemProp :: f String
  , itemRef :: f String
  , itemScope :: f Boolean
  , itemType :: f String
  , lang :: f String
  , role :: f String --| Specifies the element role explicitly for assistive technologies.
  , slot :: f String --| Specifies the slot name when using shadow DOM.
  , spellCheck :: f Boolean --| If explicitly set to true or false, enables or disables spellchecking.
  , tabIndex :: f Int --| Overrides the default Tab button behavior. Avoid using values other than -1 and 0.
  , title :: f String --| Specifies the tooltip text for the element.
  , translate :: f YesOrNo --| Passing 'no' excludes the element content from being translated
  | r
  )

type BaseHTMLHandlers r = BaseHTMLHandlersF Id r

newtype ReactEventHandler e = ReactEventHandler (EffectFn1 e Unit)

type BaseHTMLHandlersF :: forall k. (Type -> k) -> Row k -> Row k
type BaseHTMLHandlersF f r =
  ( onAnimationEnd :: f EventHandler
  , onAnimationEndCapture :: f EventHandler
  , onAnimationIteration :: f EventHandler
  , onAnimationIterationCapture :: f EventHandler
  , onAnimationStart :: f EventHandler
  , onAnimationStartCapture :: f EventHandler
  , onAuxClick :: f EventHandler
  , onAuxClickCapture :: f EventHandler
  , onBeforeInput :: f EventHandler
  , onBeforeInputCapture :: f EventHandler
  , onBlur :: f EventHandler
  , onBlurCapture :: f EventHandler
  , onClick :: f EventHandler
  , onClickCapture :: f EventHandler
  , onCompositionEnd :: f EventHandler
  , onCompositionEndCapture :: f EventHandler
  , onCompositionStart :: f EventHandler
  , onCompositionStartCapture :: f EventHandler
  , onCompositionUpdate :: f EventHandler
  , onCompositionUpdateCapture :: f EventHandler
  , onContextMenu :: f EventHandler
  , onContextMenuCapture :: f EventHandler
  , onCopy :: f EventHandler
  , onCopyCapture :: f EventHandler
  , onCut :: f EventHandler
  , onCutCapture :: f EventHandler
  , onDoubleClick :: f EventHandler
  , onDoubleClickCapture :: f EventHandler
  , onDrag :: f EventHandler
  , onDragCapture :: f EventHandler
  , onDragEnd :: f EventHandler
  , onDragEndCapture :: f EventHandler
  , onDragEnter :: f EventHandler
  , onDragEnterCapture :: f EventHandler
  , onDragStart :: f EventHandler
  , onDragStartCapture :: f EventHandler
  , onDrop :: f EventHandler
  , onDropCapture :: f EventHandler
  , onFocus :: f EventHandler
  , onFocusCapture :: f EventHandler
  , onGotPointerCapture :: f EventHandler
  , onGotPointerCaptureCapture :: f EventHandler
  , onMouseDown :: f EventHandler
  , onMouseDownCapture :: f EventHandler
  , onMouseEnter :: f EventHandler
  , onMouseEnterCapture :: f EventHandler
  , onMouseLeave :: f EventHandler
  , onMouseLeaveCapture :: f EventHandler
  , onMouseMove :: f EventHandler
  , onMouseMoveCapture :: f EventHandler
  , onMouseOut :: f EventHandler
  , onMouseOutCapture :: f EventHandler
  , onMouseUp :: f EventHandler
  , onMouseUpCapture :: f EventHandler
  , onPointerCancel :: f EventHandler
  , onPointerCancelCapture :: f EventHandler
  , onPointerDown :: f EventHandler
  , onPointerDownCapture :: f EventHandler
  , onPointerEnter :: f EventHandler
  , onPointerEnterCapture :: f EventHandler
  , onPointerLeave :: f EventHandler
  , onPointerLeaveCapture :: f EventHandler
  , onPointerMove :: f EventHandler
  , onPointerMoveCapture :: f EventHandler
  , onPointerOut :: f EventHandler
  , onPointerOutCapture :: f EventHandler
  , onPointerUp :: f EventHandler
  , onPointerUpCapture :: f EventHandler
  , onPaste :: f EventHandler
  , onPasteCapture :: f EventHandler
  , onScroll :: f EventHandler
  , onScrollCapture :: f EventHandler
  , onSelect :: f EventHandler
  , onSelectCapture :: f EventHandler
  , onTouchCancel :: f EventHandler
  , onTouchCancelCapture :: f EventHandler
  , onTouchEnd :: f (EffectFn1 TouchEvent Unit)
  , onTouchEndCapture :: f (EffectFn1 TouchEvent Unit)
  , onTouchMove :: f EventHandler
  , onTouchMoveCapture :: f EventHandler
  , onTouchStart :: f EventHandler
  , onTouchStartCapture :: f EventHandler
  , onTransitionEnd :: f EventHandler
  , onTransitionEndCapture :: f EventHandler
  , onWheel :: f EventHandler
  , onWheelCapture :: f EventHandler
  | r
  )

--type BaseHTMLHandlersF :: forall k. (Type -> k) -> Row k -> Row k
--type BaseHTMLHandlersF f r =
--  ( onAnimationEnd :: f (ReactEventHandler AnimationEvent)
--  , onAnimationEndCapture :: f (ReactEventHandler AnimationEvent)
--  , onAnimationIteration :: f (ReactEventHandler AnimationEvent)
--  , onAnimationIterationCapture :: f (ReactEventHandler AnimationEvent)
--  , onAnimationStart :: f (ReactEventHandler AnimationEvent)
--  , onAnimationStartCapture :: f (ReactEventHandler AnimationEvent)
--  , onAuxClick :: f (ReactEventHandler MouseEvent)
--  , onAuxClickCapture :: f (ReactEventHandler MouseEvent)
--  , onBeforeInput :: f (ReactEventHandler InputEvent)
--  , onBeforeInputCapture :: f (ReactEventHandler InputEvent)
--  , onBlur :: f (ReactEventHandler FocusEvent)
--  , onBlurCapture :: f (ReactEventHandler FocusEvent)
--  , onClick :: f (ReactEventHandler MouseEvent)
--  , onClickCapture :: f (ReactEventHandler MouseEvent)
--  , onCompositionEnd :: f (ReactEventHandler CompositionEvent)
--  , onCompositionEndCapture :: f (ReactEventHandler CompositionEvent)
--  , onCompositionStart :: f (ReactEventHandler CompositionEvent)
--  , onCompositionStartCapture :: f (ReactEventHandler CompositionEvent)
--  , onCompositionUpdate :: f (ReactEventHandler CompositionEvent)
--  , onCompositionUpdateCapture :: f (ReactEventHandler CompositionEvent)
--  , onContextMenu :: f (ReactEventHandler MouseEvent)
--  , onContextMenuCapture :: f (ReactEventHandler MouseEvent)
--  , onCopy :: f (ReactEventHandler ClipboardEvent)
--  , onCopyCapture :: f (ReactEventHandler ClipboardEvent)
--  , onCut :: f (ReactEventHandler ClipboardEvent)
--  , onCutCapture :: f (ReactEventHandler ClipboardEvent)
--  , onDoubleClick :: f (ReactEventHandler MouseEvent)
--  , onDoubleClickCapture :: f (ReactEventHandler MouseEvent)
--  , onDrag :: f (ReactEventHandler DragEvent)
--  , onDragCapture :: f (ReactEventHandler DragEvent)
--  , onDragEnd :: f (ReactEventHandler DragEvent)
--  , onDragEndCapture :: f (ReactEventHandler DragEvent)
--  , onDragEnter :: f (ReactEventHandler DragEvent)
--  , onDragEnterCapture :: f (ReactEventHandler DragEvent)
--  , onDragStart :: f (ReactEventHandler DragEvent)
--  , onDragStartCapture :: f (ReactEventHandler DragEvent)
--  , onDrop :: f (ReactEventHandler DragEvent)
--  , onDropCapture :: f (ReactEventHandler DragEvent)
--  , onFocus :: f (ReactEventHandler FocusEvent)
--  , onFocusCapture :: f (ReactEventHandler FocusEvent)
--  , onGotPointerCapture :: f (ReactEventHandler PointerEvent)
--  , onGotPointerCaptureCapture :: f (ReactEventHandler PointerEvent)
--  , onMouseDown :: f (ReactEventHandler MouseEvent)
--  , onMouseDownCapture :: f (ReactEventHandler MouseEvent)
--  , onMouseEnter :: f (ReactEventHandler MouseEvent)
--  , onMouseEnterCapture :: f (ReactEventHandler MouseEvent)
--  , onMouseLeave :: f (ReactEventHandler MouseEvent)
--  , onMouseLeaveCapture :: f (ReactEventHandler MouseEvent)
--  , onMouseMove :: f (ReactEventHandler MouseEvent)
--  , onMouseMoveCapture :: f (ReactEventHandler MouseEvent)
--  , onMouseOut :: f (ReactEventHandler MouseEvent)
--  , onMouseOutCapture :: f (ReactEventHandler MouseEvent)
--  , onMouseUp :: f (ReactEventHandler MouseEvent)
--  , onMouseUpCapture :: f (ReactEventHandler MouseEvent)
--  , onPointerCancel :: f (ReactEventHandler PointerEvent)
--  , onPointerCancelCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerDown :: f (ReactEventHandler PointerEvent)
--  , onPointerDownCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerEnter :: f (ReactEventHandler PointerEvent)
--  , onPointerEnterCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerLeave :: f (ReactEventHandler PointerEvent)
--  , onPointerLeaveCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerMove :: f (ReactEventHandler PointerEvent)
--  , onPointerMoveCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerOut :: f (ReactEventHandler PointerEvent)
--  , onPointerOutCapture :: f (ReactEventHandler PointerEvent)
--  , onPointerUp :: f (ReactEventHandler PointerEvent)
--  , onPointerUpCapture :: f (ReactEventHandler PointerEvent)
--  , onPaste :: f (ReactEventHandler ClipboardEvent)
--  , onPasteCapture :: f (ReactEventHandler ClipboardEvent)
--  , onScroll :: f (ReactEventHandler BaseEvent)
--  , onScrollCapture :: f (ReactEventHandler BaseEvent)
--  , onSelect :: f (ReactEventHandler BaseEvent)
--  , onSelectCapture :: f (ReactEventHandler BaseEvent)
--  , onTouchCancel :: f (ReactEventHandler TouchEvent)
--  , onTouchCancelCapture :: f (ReactEventHandler TouchEvent)
--  , onTouchEnd :: f (EffectFn1 TouchEvent Unit)
--  , onTouchEndCapture :: f (EffectFn1 TouchEvent Unit)
--  , onTouchMove :: f (ReactEventHandler TouchEvent)
--  , onTouchMoveCapture :: f (ReactEventHandler TouchEvent)
--  , onTouchStart :: f (ReactEventHandler TouchEvent)
--  , onTouchStartCapture :: f (ReactEventHandler TouchEvent)
--  , onTransitionEnd :: f (ReactEventHandler TransitionEvent)
--  , onTransitionEndCapture :: f (ReactEventHandler TransitionEvent)
--  , onWheel :: f (ReactEventHandler WheelEvent)
--  , onWheelCapture :: f (ReactEventHandler WheelEvent)
--  | r
--  )

type ARIA_Attributes r = ARIA_AttributesF Id r

type ARIA_AttributesF :: forall k. (Type -> k) -> Row k -> Row k
type ARIA_AttributesF f r =
  ( "aria-atomic" :: f Boolean
  , "aria-busy" :: f Boolean
  , "aria-checked" :: f Boolean
  , "aria-colcount" :: f Int
  , "aria-colindex" :: f Int
  , "aria-colspan" :: f Int
  , "aria-controls" :: f String
  , "aria-current" :: f String
  , "aria-describedby" :: f String
  , "aria-details" :: f String
  , "aria-disabled" :: f Boolean
  , "aria-dropeffect" :: f String
  , "aria-errormessage" :: f String
  , "aria-expanded" :: f Boolean
  , "aria-flowto" :: f String
  , "aria-grabbed" :: f Boolean
  , "aria-haspopup" :: f Boolean
  , "aria-hidden" :: f Boolean
  , "aria-invalid" :: f Boolean
  , "aria-keyshortcuts" :: f String
  , "aria-label" :: f String
  , "aria-labelledby" :: f String
  , "aria-level" :: f Int
  , "aria-live" :: f String
  , "aria-modal" :: f Boolean
  , "aria-multiline" :: f Boolean
  , "aria-multiselectable" :: f Boolean
  , "aria-orientation" :: f String
  , "aria-owns" :: f String
  , "aria-placeholder" :: f String
  , "aria-posinset" :: f Int
  , "aria-pressed" :: f Boolean
  , "aria-readonly" :: f Boolean
  , "aria-relevant" :: f String
  , "aria-required" :: f Boolean
  , "aria-roledescription" :: f String
  , "aria-rowcount" :: f Int
  , "aria-rowindex" :: f Int
  , "aria-rowspan" :: f Int
  , "aria-selected" :: f Boolean
  , "aria-setsize" :: f Int
  , "aria-sort" :: f String
  , "aria-valuemax" :: f Int
  , "aria-valuemin" :: f Int
  , "aria-valuenow" :: f Int
  , "aria-valuetext" :: f String
  | r
  )
