angular.module 'guclinkMain'
  .config ($stateProvider) ->
    homeState =
      url: '/home'
      name: 'home'
      templateUrl: 'home.html'

    aboutState =
      name: 'about'
      url: '/about'
      resolve:
        $title: ->
          'About'
      templateUrl: 'about.html'

    statusState =
      name: 'status'
      url: '/status'
      resolve:
        $title: ->
          'API Status'
      templateUrl: 'status.html'
      controller: 'StatusController'

    $stateProvider
      .state homeState
      .state aboutState
      .state statusState
