'use strict'

angular.module('CVGApp')
.controller 'mainCtrl', ($scope, $compile, $templateCache, $http) ->
    $scope.greetings = 'Angular is here'
    return