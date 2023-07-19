module Beta.DOM.HTML.A (a, a_) where

import Prelude

import Beta.DOM.Attributes (BaseAttributesF)
import Beta.DOM.Internal (FFIComponent, FFIComponent_, createBuiltinElement, createBuiltinElement_)
import ForgetMeNot (Id)
import Beta.DOM.Attributes.Target (Target)

type AnchorAttributes = AnchorAttributesF Id ()

type AnchorAttributesF :: (Type -> Type) -> Row Type -> Row Type
type AnchorAttributesF f r = BaseAttributesF f
  ( download :: f String --| A string indicating that the linked resource is intended to be downloaded rather than displayed in the browser. The value represent the proposed name of the file. If the name is not a valid filename of the underlying OS, browser will adapt it.
  , hash :: f String --| A string representing the fragment identifier, including the leading hash mark ('#'), if any, in the referenced URL.
  , host :: f String --| A string representing the hostname and port (if it's not the default port) in the referenced URL.
  , hostname :: f String --| A string representing the hostname in the referenced URL.
  , href :: f String --| A string that is the result of parsing the href HTML attribute relative to the document, containing a valid URL of a linked resource.
  , hrefLang :: f String --| A string that reflects the hreflang HTML attribute, indicating the language of the linked resource.
  , password :: f String --| A string containing the password specified before the domain name.
  , pathname :: f String --| A string containing an initial '/' followed by the path of the URL, not including the query string or fragment.
  , port :: f String --| A string representing the port component, if any, of the referenced URL.
  , protocol :: f String --| A string representing the protocol component, including trailing colon (':'), of the referenced URL.
  , referrerPolicy :: f String --| A string that reflects the referrerpolicy HTML attribute indicating which referrer to use.
  , rel :: f String --| A string that reflects the rel HTML attribute, specifying the relationship of the target object to the linked object.
  , search :: f String --| A string representing the search element, including leading question mark ('?'), if any, of the referenced URL.
  , tabIndex :: f Number --| A long containing the position of the element in the tabbing navigation order for the current document.
  , target :: f Target --| A string that reflects the target HTML attribute, indicating where to display the linked resource.
  , text :: f String --| A string being a synonym for the Node.textContent property.
  , type :: f String --| A string that reflects the type HTML attribute, indicating the MIME type of the linked resource.
  , username :: f String --| A string containing the username specified before the domain name.
  | r
  )

-- | The `<a>` (anchor) tag in HTML, which is used to create hyperlinks.
-- | Most common attributes:
-- |
-- |
-- || Attribute         | Type     | Example                       | Description |
-- ||-------------------|----------|-------------------------------|-------------|
-- || `href`            | `String` | `"https://example.com"`       | Specifies the URL that the hyperlink points to. |
-- || `target`          | `Target` | `"targetBlank"`               | Determines where the linked document will open. |
-- || `download`        | `String` | `"file.pdf"`                  | Indicates that the target will be downloaded when a user clicks on the hyperlink. |
-- || `rel`             | `String` | `"nofollow"`                  | Describes the relationship between the current document and the linked document. |
-- || `title`           | `String` | `"Go to the home page"`       | Renders additional information about an element, typically displayed as tooltip text. |
-- || `aria-label`      | `String` | `"Read more about cats"`      | Used for accessibility, offering a description of the hyperlink's purpose for screen reader users. |
-- || `aria-describedby`| `String` | `"desc1"`                     | Also used for accessibility, offering a description of the hyperlink's purpose for screen reader users. |
a :: FFIComponent AnchorAttributes
a = createBuiltinElement "a"

-- | The `<a>` (anchor) tag in HTML, which is used to create hyperlinks.
a_ :: FFIComponent_ AnchorAttributes
a_ = createBuiltinElement_ "a"
