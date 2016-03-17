'use strict'

describe 'Directive: html2pdf', ->

  # load the directive's module
  beforeEach module 'cvgApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<html2pdf></html2pdf>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the html2pdf directive'
