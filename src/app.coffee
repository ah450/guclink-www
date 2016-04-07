angular.module 'guclinkMain', ['ui.router', 'ui.router.title',
  'guclinkMainTemplates', 'satellizer', 'ngCookies', 'ngAnimate',
  'angulartics', 'angulartics.google.analytics', 'ngMaterial', 'ngMessages',
  'guclinkConstants', 'ngClickToggle', 'ngClickRemove']


angular.module 'guclinkMain'
  .config ($compileProvider) ->
    $compileProvider.debugInfoEnabled false

angular.module 'guclinkMain'
  .config ($cookiesProvider) ->
    $cookiesProvider.defaults =
      path: '/'
      domain: 'guclink.in'
      secure: true

angular.module 'guclinkMain'
  .config ($urlMatcherFactoryProvider) ->
    $urlMatcherFactoryProvider.strictMode false
