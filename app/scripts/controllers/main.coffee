'use strict'

angular.module('CVGApp')
.controller 'MainCtrl', ($scope, version) ->
    $scope.stringList = [
        {
            name: "test1"
        },
        {
            name: "test2"
        }
    ]
    $scope.greatings = 'Angular is here'
    $scope.version = version