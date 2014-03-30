Either = require 'data.either'

# #### Function: Try
#
# Constructs an Either by applying an expression in a provided function.
# Returns an Either.Right of the function's return value, or an Either.Left
# of the Error thrown by the function.
#
# + type: (f: -> a) -> Either Error a
module.exports = Try = (f) ->
  try
    Either.Right f()
  catch e
    Either.Left e