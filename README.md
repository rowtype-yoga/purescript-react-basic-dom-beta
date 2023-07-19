# Beta DOM for react-basic

Want to help out? Checkout [CONTRIBUTING.md](./CONTRIBUTING.md)

After using react-basic-hooks for a while I've gathered a small wishlist for things that I'd like to work a little differently.

## What it looks like:

```purescript
module Example where

import Prelude hiding (div)
import Beta.DOM.HTML (div, a, span)
import Beta.DOM (text)

example =
  div { "data-testid": "example" }
    [ a { href: "https://example.com" }
        $ span { "aria-label": "somelabel" } "Example"
    , text " and so on..."
    ]
```

vs.

```purescript
-- this is a bit unfair because the "simplified" DOM also exists and would make this quite a bit better
module Example where

import Prelude hiding (div)
import React.Basic.DOM (div, a, span)
import Foreign.Object (singleton) as Object

example =
  div
    { _data: Object.singleton "testid" "example"
    , children:
        [ a { href: "https://exmaple.com", children: [ span { _aria: Object.singleton "label" "somelabel", children: [ "Example" ] } ] }
        , text " and so on..."
        ]
    }
```

## Trying it out / Installation

This is a work-in-progress library that works on its own and in conjunction with the existing react-basic-hooks-dom library.

I don't want to publish it yet, but you can easily integrate it via your `packages.dhall` file.

Add this to your `packages.dhall` file:
```dhall
with "react-basic-dom-beta" =
      { dependencies =
          [ "datetime"
          , "effect"
          , "forgetmenot"
          , "functions"
          , "nullable"
          , "prelude"
          , "react-basic"
          , "record"
          , "type-equality"
          , "typelevel-prelude"
          , "unsafe-coerce"
          , "web-dom"
          , "web-events"
          , "web-html"
          , "web-touchevents"
          ]
      , repo =
          "https://github.com/rowtype-yoga/purescript-react-basic-dom-beta.git"
      , version = "main"
      }
```

Then run:

```sh
spago install react-basic-dom-beta
```

## Features and design goals

### Documentation with examples for each component
Since there's no tooling in PureScript that will autocomplete possible record keys, I've decided to work around this limitation by providing some short documentation with the most important attributes for each component and a copy-pasteable exmaple.

There are also certain relationships between HTML elements that are very difficult to enforce in the type system, such as how to nest tags correctly (e.g. `table`, contains `thead`, and `tbody` which contains `tr`, which contains `td` or `th`, ...). I hope that the provided examples remedy these problems a lot since the documentation will popup when autocompleting the HTML tag's name.

### Ability to pass any "aria-*" or "data-*" prop directly
This makes working with Hooks that return these props and expect the user to spread them onto your own component's props a lot easier and less error-prone.

### `aria-*` props are typechecked
In contrast to `data-*` props, `aria-*` props are finite and can't have arbitrary names.
This is an improvement that could be made in the current DOM as well, but I decided to skip it and do it here.

 
### Improved readability by separating the children prop out

This is in line with HTML where the children are not part of the attributes and aren't named.

### Allows passing single children and the empty array without runtime casts

React's `createElement` may be invoked without any children, or with zero to many children. The only way to approximate this in PureScript was via a typeclass as in the `Simplified` DOM. 

The downside of this is that this stops working within Arrays because PureScript requires arrays to be of the same shape. There are two workarounds that I know of:

Manually casting the text to be JSX via `text`:

```purescript
module Example where
import Beta.DOM (text)
import Beta.DOM.HTML.P (p)

x = [ text "A string", p {} "A p" ]
```

Or foregoing the array altogether and using an operator:

```purescript
module Example where
import Beta.DOM.Internal ((++))
import Beta.DOM.HTML.P (p)

x = "A string" ++ p {} "A p"
```

I dislike both of these, because they are likely to trip beginners up.

#### Difference to the existing Simplified DOM
This DOM does not wrap anything in an `Array` because React's API does not require that anyway.

Another difference to the existing Simplified version is that this supports passing an empty array, while Simplified supports passing an array of anything that's has a `ToJSX` instance.

This is the difference in code with workarounds applied:

##### Simplified:
```purescript
strings = p {} [ "A string", "Another string" ]
empties = p {} ([] :: _ JSX)
```

##### Beta:
```purescript
strings = p {} "A stringAnother string"
empties = p {} []
```
