((exports) ->

  exports.test = ->
    console.log 'Hello world'

)(if typeof exports is 'undefined' then this['romanize'] = {} else exports)