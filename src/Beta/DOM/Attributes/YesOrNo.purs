module Beta.DOM.Attributes.YesOrNo where

import Prelude

newtype YesOrNo = YesOrNo String

derive instance Eq YesOrNo
derive instance Ord YesOrNo
instance HeytingAlgebra YesOrNo where
  ff = no
  tt = yes
  implies a b = not a || b
  conj a b = if a == yes then b else no
  disj a b = if a == yes then yes else b
  not a = if a == yes then no else yes

yes :: YesOrNo
yes = YesOrNo "yes"

no :: YesOrNo
no = YesOrNo "no"
