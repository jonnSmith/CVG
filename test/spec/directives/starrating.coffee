'use strict'

describe 'Directive: starRating', ->

# load the directive's module
    beforeEach module 'cvgApp'

    scope = {}

    beforeEach inject ($controller, $rootScope) ->
        scope = $rootScope.$new()

    it 'should make hidden element visible', inject ($compile) ->
        element = angular.element '<star-rating></star-rating>'
        element = $compile(element) scope
        expect(element.text()).toBe 'this is the starRating directive'
