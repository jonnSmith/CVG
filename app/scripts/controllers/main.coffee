'use strict'

angular.module('cvgApp')
.controller 'mainCtrl', ($scope, Upload) ->
    $scope.showName = false
    $scope.greetings = 'Angular is here'
    $scope.logName = () ->
        console.log $scope.name
    $scope.submit = ->
        if $scope.form.file.$valid and $scope.file
            $scope.upload $scope.file
            return
    $scope.upload = (file) ->
        if file
            Upload.upload(
                url: 'php/upload.php'
                data:
                    file: file
                    'username': $scope.username
            ).then ((resp) ->
                console.log 'Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data
                return
            ),((resp) ->
                console.log 'Error status: ' + resp.status
                return
            ),(evt) ->
                progressPercentage = parseInt(100.0 * evt.loaded / evt.total)
                console.log 'progress: ' + progressPercentage + '% ' + evt.config.data.file.name
                return
            return
        return
    return