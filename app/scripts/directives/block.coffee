'use strict'

angular.module('cvgApp')
.directive('block', ->
    {
        restrict: 'A'
        controller: 'mainCtrl'
        templateUrl: (elem, attr) ->
            'tpl/block/' + attr.type + '.html'
    }
)
