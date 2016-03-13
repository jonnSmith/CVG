'use strict'

describe 'Directive: image', ->

  # load the directive's module
  beforeEach module 'cvgApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<image></image>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the image directive'
