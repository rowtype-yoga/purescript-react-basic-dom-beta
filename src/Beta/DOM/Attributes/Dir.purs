module Beta.DOM.Attributes.Dir where

import Prelude

-- | The autocapitalize global attribute is an enumerated attribute that controls whether and how text input is automatically capitalized as it is entered/edited by the user.
newtype Dir = Dir String

derive instance Eq Dir
derive instance Ord Dir

-- | Left-to-right text direction
dirLeftToRight :: Dir
dirLeftToRight = Dir "ltr"

-- | Right-to-left text direction
dirRightToLeft :: Dir
dirRightToLeft = Dir "rtl"

-- | The directionality of the element is determined by the element’s parent element, if any, and the element’s @dir@ attribute, if any; otherwise, the element is a left-to-right element.
dirAuto :: Dir
dirAuto = Dir "auto"

-- | The directionality of the element is determined by the element’s parent element, if any, and the element’s @dir@ attribute, if any; otherwise, the element is a left-to-right element.
dirInherit :: Dir
dirInherit = Dir "inherit"

-- | The directionality of the element is determined by the element’s parent element, if any, and the element’s @dir@ attribute, if any; otherwise, the element is a left-to-right element.
dirInitial :: Dir
dirInitial = Dir "initial"

-- | The directionality of the element is determined by the element’s parent element, if any, and the element’s @dir@ attribute, if any; otherwise, the element is a left-to-right element.
dirUnset :: Dir
dirUnset = Dir "unset"
