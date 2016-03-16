'use strict'

angular.module('cvgApp')
.factory 'translate',($http) ->
    factory = {}
    factory.getTranslates = (path) ->
        translates  = $http.get(path).then((resp) ->
          resp.data
        )
        translates
    factory
