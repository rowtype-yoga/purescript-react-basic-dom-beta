module Beta.DOM.Handler where

import Prelude
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect (Effect)
import Beta.DOM.Event (FocusEvent, MouseEvent)
import Beta.DOM.Attributes (ReactEventHandler(ReactEventHandler))
import React.Basic.Events (EventHandler)
import Unsafe.Coerce (unsafeCoerce)

onClick :: (MouseEvent -> Effect Unit) -> EventHandler
onClick = mkEffectFn1 <<< unsafeCoerce

onFocus :: (FocusEvent -> Effect Unit) -> EventHandler
onFocus = mkEffectFn1 <<< unsafeCoerce

onBlur :: (FocusEvent -> Effect Unit) -> EventHandler
onBlur = mkEffectFn1 <<< unsafeCoerce

onMouseEnter :: (MouseEvent -> Effect Unit) -> EventHandler
onMouseEnter = mkEffectFn1 <<< unsafeCoerce

onMouseLeave :: (MouseEvent -> Effect Unit) -> EventHandler
onMouseLeave = mkEffectFn1 <<< unsafeCoerce

onMouseOver :: (MouseEvent -> Effect Unit) -> EventHandler
onMouseOver = mkEffectFn1 <<< unsafeCoerce

onMouseOut :: (MouseEvent -> Effect Unit) -> EventHandler
onMouseOut = mkEffectFn1 <<< unsafeCoerce

onMouseDown :: (MouseEvent -> Effect Unit) -> EventHandler
onMouseDown = mkEffectFn1 <<< unsafeCoerce
