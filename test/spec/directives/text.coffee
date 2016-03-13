'use strict'

describe 'Directive: text', ->

  # load the directive's module
  beforeEach module 'cvgApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<text></text>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the text directive'
