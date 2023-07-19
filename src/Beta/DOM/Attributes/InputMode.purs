module Beta.DOM.Attributes.InputMode where

import Prelude

-- | The inputmode global attribute is an enumerated attribute that specifies what kind of input mechanism would be most helpful for users entering content into the form control.
newtype InputMode = InputMode String

derive instance Eq InputMode
derive instance Ord InputMode

-- | A virtual keyboard optimized for password entry. This may have some enhancements like auto-capitalization disabled, and pressing the enter key may not cause a form submission. Inputs that require a password should typically use <input type="password"> instead.
inputModeNone :: InputMode
inputModeNone = InputMode "none"

-- | Standard input keyboard for the user's current locale.
inputModeText :: InputMode
inputModeText = InputMode "text"

-- | Fractional numeric input keyboard containing the digits and decimal separator for the user's locale (typically . or ,). Devices may or may not show a minus key (-).
inputModeDecimal :: InputMode
inputModeDecimal = InputMode "decimal"

-- | Numeric input keyboard, but only requires the digits 0–9. Devices may or may not show a minus key.
inputModeNumeric :: InputMode
inputModeNumeric = InputMode "numeric"

-- | A telephone keypad input, including the digits 0–9, the asterisk (*), and the pound (#) key. Inputs that *require* a telephone number should typically use <input type="tel"> instead.
inputModeTel :: InputMode
inputModeTel = InputMode "tel"

-- | A virtual keyboard optimized for search input. For instance, the return/submit key may be labeled "Search", along with possible other optimizations. Inputs that require a search query should typically use <input type="search"> instead.
inputModeSearch :: InputMode
inputModeSearch = InputMode "search"

-- | A virtual keyboard optimized for entering email addresses. Typically includes the @character as well as other optimizations. Inputs that require email addresses should typically use <input type="email"> instead.
inputModeEmail :: InputMode
inputModeEmail = InputMode "email"

-- | A keypad optimized for entering URLs. This may have the / key more prominent, for example. Enhanced features could include history access and so on. Inputs that require a URL should typically use <input type="url"> instead.
inputModeUrl :: InputMode
inputModeUrl = InputMode "url"

