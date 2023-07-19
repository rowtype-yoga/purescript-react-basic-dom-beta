module Beta.DOM
  ( module Beta.DOM.HTML
  , module Beta.DOM.Internal
  ) where

import Beta.DOM.Internal
import Prelude hiding (div, map, sub)

import Beta.DOM.Attributes (BaseAttributes, BaseAttributesF, BaseAttributesR)
import Beta.DOM.Attributes.AutoCapitalize (AutoCapitalize)
import Beta.DOM.Attributes.InputMode (InputMode)
import Beta.DOM.Attributes.YesOrNo (YesOrNo)
import Beta.DOM.HTML
import Beta.DOM.Event (FocusEvent, MouseEvent)
import Beta.DOM.Internal (class CoerceReactProps, FFIComponent, coerceReactProps, unsafeWithChildren)
import Data.DateTime.Instant (Instant)
import Data.Symbol (class IsSymbol)
import Effect (Effect)
import Effect.Uncurried (EffectFn1, mkEffectFn1)
import Effect.Unsafe (unsafePerformEffect)
import ForgetMeNot (Id)
import Prim.Boolean (False, True)
import Prim.Row (class Cons, class Union)
import Prim.Row as Row
import Prim.RowList (class RowToList)
import Prim.Symbol as Symbol
import React.Basic (JSX, ReactComponent, empty)
import React.Basic (element) as React
import React.Basic.Events (EventHandler)
import Record (insert, merge)
import Record.Unsafe (unsafeSet)
import Type.Equality (class TypeEquals)
import Type.Proxy (Proxy(..), Proxy)
import Type.RowList (class ListToRow)
import Type.RowList (RowList)
import Type.RowList as RL
import Unsafe.Coerce (unsafeCoerce)
import Web.Event.Event (EventType)
import Web.Event.EventPhase (EventPhase)
import Web.Event.Internal.Types (Event, EventTarget)

foreign import data ReactChildren :: Type

