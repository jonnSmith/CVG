'use strict'

angular.module('cvgApp')
.directive('text', ->
    {
        restrict: 'A'
        controller: 'mainCtrl'
        templateUrl: (elem, attr) ->
            'tpl/text/' + attr.type + '.html'
    }
)
