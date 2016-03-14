'use strict'

#todo write tests

describe 'Directive: block', ->

    beforeEach module 'cvgApp'

    scope = {}

    beforeEach inject ($controller, $rootScope) ->
        scope = $rootScope.$new()

    it 'should make hidden element visible', inject ($compile) ->
        element = angular.element '<block></block>'
        element = $compile(element) scope
        expect(element.text()).toBe 'this is the block directive'
