angular.module('starter', [
  'ionic'
  'starter.controllers'
  'starter.services'
])

.run(($ionicPlatform) ->
  $ionicPlatform.ready ->
    # Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
    # for form inputs)
    if window.cordova and window.cordova.plugins.Keyboard
      cordova.plugins.Keyboard.hideKeyboardAccessoryBar true
    if window.StatusBar
      # org.apache.cordova.statusbar required
      StatusBar.styleDefault()
    return
  return
)

.config ($stateProvider, $urlRouterProvider) ->
  $stateProvider.state('app',
    url: '/app'
    abstract: true
    templateUrl: 'templates/menu.html'
    controller: 'AppCtrl'
  )
  .state('app.game',
    url: '/game'
    views: 'menuContent':
      templateUrl: 'templates/game.html'
      controller: 'GameCtrl'
  )
  .state('app.namelists',
    url: '/namelists'
    views: 'menuContent':
      templateUrl: 'templates/namelists.html'
      controller: 'NameListsCtrl'
  )
  # if none of the above states are matched, use this as the fallback
  $urlRouterProvider.otherwise '/app/game'
  return
