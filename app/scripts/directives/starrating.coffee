'use strict'

angular.module('cvgApp')
.directive('starRating', ->
    {
        restrict: 'A'
        template: '<ul class="stars"><li ng-repeat="star in stars" ng-class="star" ng-click="toggle($index)">\u2605</li></ul>'
        scope:
            ratingValue: '='
            max: '='
            onRatingSelected: '&'
        link: (scope, elem, attrs) ->

            updateStars = ->
                scope.stars = []
                i = 0
                while i < scope.max
                    scope.stars.push filled: i < scope.ratingValue
                    i++
                return

            scope.toggle = (index) ->
                scope.ratingValue = index + 1
                scope.onRatingSelected rating: index + 1
                return

            scope.$watch 'ratingValue', (oldVal, newVal) ->
                if newVal
                    updateStars()
                return
            return
    }
)