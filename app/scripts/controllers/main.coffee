'use strict'

angular.module('cvgApp')
.controller 'mainCtrl', ($scope, Upload, pdfFactory, translate,$rootScope) ->

    pdfData = {
        filename: 'AngularTest.pdf'
        html: '<h1>AngularTest</h1>'
    }

    $scope.log = () ->
        pdfFactory.generatePdf(pdfData).success((link) ->
            $scope.file = link.path
            $scope.status = link.answer
            return
        ).error (error) ->
            $scope.status = 'Unable to load pdf: ' + error.message
            return
        console.log $scope

    $scope.rating = 0

    translate.getTranslates('/languages/' + $rootScope.language + '/data.json').then (translates) ->
        $scope.translates = translates
        return

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
            ), ((resp) ->
                console.log 'Error status: ' + resp.status
                return
            ), (evt) ->
                progressPercentage = parseInt(100.0 * evt.loaded / evt.total)
                $scope.uploaded = progressPercentage
                return
            return
        return
    return