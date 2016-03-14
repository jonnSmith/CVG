'use strict'

angular.module('cvgApp')
.controller 'mainCtrl', ($scope, Upload) ->

    $scope.log = () ->
        console.log $scope

    $scope.rating = 0
    $scope.skills = [
        {
            current: 8
            max: 10
            name: "Photoshop"
            show: false
        }
        {
            current: 8
            max: 10
            name: "Illustrator"
            show: false
        }
        {
            current: 7
            max: 10
            name: "AngularJS"
            show: false
        }
    ]

    $scope.getSelectedRating = (rating) ->
        console.log rating
        return

    $scope.upload = (file) ->
        if file
            Upload.upload(
                url: 'php/upload.php'
                data:
                    file: file
                    username: $scope.username
            ).then ((resp) ->
                $scope.avatar = resp.data.path
                return
            ),((resp) ->
                console.log 'Error status: ' + resp.status
                return
            ),(evt) ->
                progressPercentage = parseInt(100.0 * evt.loaded / evt.total)
                $scope.uploaded = progressPercentage
                return
            return
        return
    return