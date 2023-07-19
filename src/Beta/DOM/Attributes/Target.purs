module Beta.DOM.Attributes.Target where

import Prelude

-- | The autocapitalize global attribute is an enumerated attribute that controls whether and how text input is automatically capitalized as it is entered/edited by the user.
newtype Target = Target String

derive instance Eq Target
derive instance Ord Target

-- | the current browsing context. (Default)
targetSelf :: Target
targetSelf = Target "_self"

-- | usually a new tab, but users can configure browsers to open a new window instead
targetBlank :: Target
targetBlank = Target "_blank"

-- | the parent browsing context of the current one. If no parent, behaves as _self
targetParent :: Target
targetParent = Target "_parent"

-- | the topmost browsing context (the "highest" context that’s an ancestor of the current one). If no ancestors, behaves as _self
targetTop :: Target
targetTop = Target "_top"