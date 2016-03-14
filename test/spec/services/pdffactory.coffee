'use strict'

describe 'Service: pdfFactory', ->

  # load the service's module
  beforeEach module 'cvgApp'

  # instantiate service
  pdfFactory = {}
  beforeEach inject (_pdfFactory_) ->
    pdfFactory = _pdfFactory_

  it 'should do something', ->
    expect(!!pdfFactory).toBe true
