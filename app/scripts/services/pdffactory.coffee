'use strict'

angular.module('cvgApp')
.factory 'pdfFactory', ($http) ->
    urlBase = '/php/pdf.php'
    pdfFactory = {}
    pdfFactory.generatePdf = (data) ->
        $http.post urlBase, data
    pdfFactory
