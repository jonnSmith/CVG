'use strict'

angular
    .module('cvgApp', [
        'ngCookies',
        'ngResource',
        'ngSanitize',
        'ngRoute',
        'ngDraggable',
        'ngFileUpload'
    ])
    .config ($routeProvider,$locationProvider) ->
        $routeProvider
        .when '/',
            templateUrl: 'views/main.html'
            controller: 'mainCtrl'
        .otherwise
                redirectTo: '/'

        $locationProvider
        .html5Mode
            enabled: true
            requireBase: false
        return