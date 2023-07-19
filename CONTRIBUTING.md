# Contributing

## Running the tests:

```sh
# Bundle the example app
spago -x spago.test.dhall bundle-app -m Example
# Generate an `html` file for the example app
spago -x spago.test.dhall test
# Serve the example app
npx http-server
```

Then visit http://localhost:8080/ which should show you the ugliest website in the world.

## What's still missing

### SVG

There's no SVG yet. It would be a chore just like HTML.

### Improved Performance

It's bearable on my computer, but it should really typecheck faster if possible.
I think this is related to the huge number of possible attributes and all the associated type-level shenanigans.

I have a few ideas of how to make it faster:

 - Improve the type-level code
 - Speed up the compiler
 - Provide specialised components that only accept a subset of the most common attributes and `Complete` versions that take everything. 
Most of the time one would have a better DX with the specialised components, but the `Complete` versions would still be available for the rare cases where they are needed.

### Tests for attributes and attribute types per element

I've only tested a few attributes and attribute types per element.

### Even better documentation

Some examples could be more complete copy-pasteable.
I'm thinking of `form` and anything that may be inside it.