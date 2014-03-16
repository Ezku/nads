Mo' nads for Javascript
====
Nads is a gateway drug to programming with algebraic datatypes for Javascript. Nads curates a collection of the most readily applicable [Fantasy-Land](https://github.com/fantasyland/fantasy-land) compatible assets.

Types
-----

- `nads.Maybe`: the [Maybe Monad](https://github.com/folktale/data.maybe) from [folktale](http://folktale.github.io/).
- `nads.Either`: the [Either Monad](https://github.com/folktale/data.either) from [folktale](http://folktale.github.io/).
- `nads.Validation`: the [Validation Applicative](https://github.com/folktale/data.applicative) from [folktale](http://folktale.github.io/).

Functions
---------

- `nads.Try`: wraps computations that may fail, ie. throw an `Error`, and outputs an `Either` with a success value on the right and a failure on the left.