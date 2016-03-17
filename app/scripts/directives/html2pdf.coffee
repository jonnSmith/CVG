'use strict'

angular.module('cvgApp')
.directive('html2pdf',($compile) ->
    restrict: 'A'
    link: (scope, element) ->
        scope.$watch 'print', ((newValue, oldValue) ->
            scope.html = $compile(element.contents()) scope
            return
        ), true
)
