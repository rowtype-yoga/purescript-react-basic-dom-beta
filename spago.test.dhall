let conf = ./spago.dhall

let dependencies = ["console", "spec", "node-fs-aff", "aff", "node-buffer", "react-basic-hooks", "foldable-traversable", "tuples" ]

let sources = [ "test/**/*.purs" ]

in conf //
  { dependencies = conf.dependencies # dependencies
  , sources = conf.sources # sources
  }
