module Beta.DOM.Internal where

import Prelude

import Data.Function.Uncurried (Fn2, Fn3, runFn2, runFn3)
import Data.Symbol (class IsSymbol)
import Prim.Boolean (False, True)
import Prim.Row (class Cons, class Lacks, class Nub, class Union)
import Prim.Row as Row
import Prim.RowList (class RowToList, RowList)
import Prim.Symbol as Symbol
import Prim.TypeError (class Fail, class Warn, Text)
import React.Basic (JSX, ReactComponent)
import React.Basic.Hooks (ReactChildren)
import Type.Equality (class TypeEquals)
import Type.RowList (class ListToRow)
import Type.RowList as RL
import Unsafe.Coerce (unsafeCoerce)

foreign import createElementImpl :: forall component props children. Fn3 component props children JSX
foreign import createElementNoKidsImpl :: forall component props. Fn2  component props JSX

createBuiltinElement :: forall props children. String -> props -> children -> JSX
createBuiltinElement = runFn3 createElementImpl

createBuiltinElement_ :: forall props. String -> props -> JSX
createBuiltinElement_ props = runFn2 createElementNoKidsImpl props

createElement :: forall props props_ children. IsJSX children => Cons "children" (ReactChildren JSX) props_ props => ReactComponent {|props} -> {|props_} -> children -> JSX
createElement = runFn3 createElementImpl

createElement_ :: forall props. ReactComponent props -> props -> JSX
createElement_ = runFn2 createElementNoKidsImpl

foreign import unsafeWithChildrenImpl :: forall c p. Fn2 c p p

unsafeWithChildren :: forall c p. c -> p -> p
unsafeWithChildren = runFn2 unsafeWithChildrenImpl

foreign import modifyIfDefinedImpl :: forall a b p. Fn3 String (a -> b) p p

modifyIfDefined :: forall a b p. String -> (a -> b) -> p -> p
modifyIfDefined = runFn3 modifyIfDefinedImpl

class IsJSX :: Type -> Constraint
class IsJSX a

instance IsJSX JSX
instance IsJSX String
instance (TypeEquals a JSX) => IsJSX (Array a)

text :: String -> JSX
text = unsafeCoerce

appendIsJSX :: forall a b. IsJSX a => IsJSX b => a -> b -> JSX
appendIsJSX a b = unsafeCoerce a <> unsafeCoerce b

infixr 0 appendIsJSX as ++

noJSX :: JSX
noJSX = mempty

type FFIComponent props =
  forall givenProps nonDataProps kids
   . IsJSX kids
  => CoerceReactProps { | givenProps } { | nonDataProps } { | props }
  => { | givenProps }
  -> kids
  -> JSX

type FFIRawTextComponent props =
  forall givenProps nonDataProps
   . CoerceReactProps { | givenProps } { | nonDataProps } { | props }
  => { | givenProps }
  -> String
  -> JSX

type FFIComponent_ props =
  forall givenProps nonDataProps
   . CoerceReactProps { | givenProps } { | nonDataProps } { | props }
  => { | givenProps }
  -> JSX

coerceReactProps :: forall props nonDataProps targetProps. (CoerceReactProps props nonDataProps targetProps) => props -> targetProps
coerceReactProps = unsafeCoerce

class CoerceReactProps :: forall k. Type -> k -> Type -> Constraint
class CoerceReactProps props nonDataProps targetProps | props -> nonDataProps

instance
  ( WithoutDataProps { | props } { | nonDataProps }
  , Union nonDataProps missing targetProps
  ) =>
  CoerceReactProps { | props } { | nonDataProps } { | targetProps }

class WithoutDataPropsRL (from :: RowList Type) (to :: RowList Type) | from -> to

class
  MaybeWithoutDataPropRL (exclude :: Boolean) (propName :: Symbol) (propVal :: Type) (from :: RowList Type) (to :: RowList Type)
  | exclude propName propVal from -> to

instance WithoutDataPropsRL RL.Nil RL.Nil
instance
  ( DoesStartWith "data-" propName exclude
  -- push it into the head of a new class so we can match on it
  , MaybeWithoutDataPropRL exclude propName propVal from to
  ) =>
  WithoutDataPropsRL (RL.Cons propName propVal from) to

-- recurse back into the above class
-- include this entry in the result
instance (WithoutDataPropsRL from to) => MaybeWithoutDataPropRL False propName propVal from (RL.Cons propName propVal to)

-- recurse, discard propName/propVal
instance (WithoutDataPropsRL from to) => MaybeWithoutDataPropRL True propName propVal from to

class WithoutDataProps props without where
  unsafeHideDataProps :: props -> without

instance
  ( RowToList r rl
  , ListToRow withoutRL without -- ListToRow here
  , WithoutDataPropsRL rl withoutRL
  ) =>
  WithoutDataProps (Record r) (Record without) where
  unsafeHideDataProps = unsafeCoerce

-- | A class that ensures a key in a row starts with a prefix.
class DoesStartWith (prefix :: Symbol) (full :: Symbol) (match :: Boolean) | prefix full -> match

instance DoesStartWith "" full True
else instance DoesStartWith prefix "" False
else instance
  ( Symbol.Cons prefixH prefixT prefix
  , Symbol.Cons fullH fullT full
  , DoesStartWithChar prefixH prefixT fullH fullT match
  ) =>
  DoesStartWith prefix full match

class
  DoesStartWithChar (prefixH :: Symbol) (prefixT :: Symbol) (fullH :: Symbol) (fullT :: Symbol) (match :: Boolean)
  | prefixH prefixT fullH fullT -> match

instance DoesStartWith prefix full match => DoesStartWithChar c prefix c full match
else instance DoesStartWithChar prefixH prefixT fullH fullT False

-- | An abstract type representing records of CSS attributes.
foreign import data CSS :: Type

instance semigroupCSS :: Semigroup CSS where
  append a b = mergeStyles [ b, a ]

instance monoidCSS :: Monoid CSS where
  mempty = css {}

-- | Create a value of type `CSS` (which can be provided to the `style` property)
-- | from a plain record of CSS attributes.
-- |
-- | For example:
-- |
-- | ```
-- | div { style: css { padding: "5px" } } [ text "This text is padded." ]
-- | ```
css :: forall css. { | css } -> CSS
css = unsafeCoerce

-- | Merge styles from right to left. Uses `Object.assign`.
-- |
-- | For example:
-- |
-- | ```
-- | style: mergeCSS [ (css { padding: "5px" }), props.style ]
-- | ```
foreign import mergeStyles :: Array CSS -> CSS

