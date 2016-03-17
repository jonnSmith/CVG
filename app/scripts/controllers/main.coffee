'use strict'

angular.module('cvgApp')
.controller 'mainCtrl', ($scope, Upload, pdfFactory, translate,$rootScope,$window) ->

    $scope.print = false

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

    $scope.print = () ->
        pdfData = {}
        $scope.print = true
        cleanHTML = $scope.html[0].innerHTML
        cleanHTML = cleanHTML.replace(/<!--(.*?)-->/g, '')
        cleanHTML = cleanHTML.replace(/<editor[\s\w"\=-]*>(.*?)<\/editor>/g, '')
        cleanHTML = cleanHTML.replace(/<fixture[\s\w"\=-]*>(.*?)<\/fixture>/g, '')
        cleanHTML = cleanHTML.replace(/(ng-\w+-\w+="(.|\n)*?"|ng-\w+="(.|\n)*?"|ng-(\w+-\w+)|ng-(\w+))/g, '')
        pdfData.html = cleanHTML
        pdfData.filename = new Date()
        pdfFactory.generatePdf(pdfData).success((link) ->
            $scope.file = link.path
            $scope.status = link.answer
            $window.open(link.path, '_blank')
        ).error (error) ->
            $scope.status = 'Unable to load pdf: ' + error.message
            return
        console.log $scope
        $scope.print = false