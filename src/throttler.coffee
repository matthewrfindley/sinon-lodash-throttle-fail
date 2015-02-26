lodash = require 'lodash'

module.exports = class Throttler

  constructor: (callback, waitTime) ->
    @trailing = lodash.throttle(callback, waitTime, leading: false, trailing: true)
    @leading = lodash.throttle(callback, waitTime, leading: true, trailing: true)
