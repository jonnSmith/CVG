'use strict'

angular
    .module('CVGApp', [
        'ngCookies',
        'ngResource',
        'ngSanitize',
        'ngRoute',
        'ngDraggable'
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