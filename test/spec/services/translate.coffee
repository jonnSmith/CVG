'use strict'

describe 'Service: translate', ->

  # load the service's module
  beforeEach module 'cvgApp'

  # instantiate service
  translate = {}
  beforeEach inject (_translate_) ->
    translate = _translate_

  it 'should do something', ->
    expect(!!translate).toBe true
