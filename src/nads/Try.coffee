Either = require 'data.either'

module.exports = Try = (f) ->
  try
    Either.Right f()
  catch e
    Either.Left e