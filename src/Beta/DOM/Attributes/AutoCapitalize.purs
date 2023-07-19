module Beta.DOM.Attributes.AutoCapitalize where

import Prelude

-- | The autocapitalize global attribute is an enumerated attribute that controls whether and how text input is automatically capitalized as it is entered/edited by the user.
newtype AutoCapitalize = AutoCapitalize String

derive instance Eq AutoCapitalize
derive instance Ord AutoCapitalize

-- | No autocapitalization is applied (all letters default to lowercase)
autoCapitalizeOn :: AutoCapitalize
autoCapitalizeOn = AutoCapitalize "on"

-- | No autocapitalization is applied (all letters default to lowercase)
autoCapitalizeOff :: AutoCapitalize
autoCapitalizeOff = AutoCapitalize "off"

-- | The first letter of each sentence defaults to a capital letter; all other letters default to lowercase
autoCapitalizeNone :: AutoCapitalize
autoCapitalizeNone = AutoCapitalize "none"

-- | The first letter of each sentence defaults to a capital letter; all other letters default to lowercase
autoCapitalizeSentences :: AutoCapitalize
autoCapitalizeSentences = AutoCapitalize "sentences"

-- | The first letter of each word defaults to a capital letter; all other letters default to lowercase
autoCapitalizeWords :: AutoCapitalize
autoCapitalizeWords = AutoCapitalize "words"

-- | The first letter of each word defaults to a capital letter; all other letters default to lowercase
autoCapitalizeCharacters :: AutoCapitalize
autoCapitalizeCharacters = AutoCapitalize "characters"
