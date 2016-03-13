'use strict'

angular.module('cvgApp')
.directive('image', ->
    {
      restrict: 'A'
      controller: 'mainCtrl'
      templateUrl: (elem, attr) ->
          'tpl/image/' + attr.type + '.html'
    }
)
