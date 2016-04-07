angular.module 'guclinkMain'
  .directive 'status', ->
    directive =
      restrict: 'AE'
      templateUrl: 'directives/status.html'
      scope:
        promise: '='
        serviceName: '@'
      controller: ['$scope',
        ($scope) ->
          $scope.loading = true
          success = (response) ->
            $scope.status = response.status
            $scope.okay = true
            $scope.loading = false
            $scope.db = response.data.db_state
            $scope.redis = response.data.redis_state
          failure = (response) ->
            $scope.okay = false
            $scope.status = response.status
            $scope.loading = false
          $scope.translateStatus = ->
            if $scope.loading
              return ''
            else if $scope.okay
              if $scope.db && $scope.redis
                return $scope.status
              else
                errors = []
                errors.push 'db down' unless $scope.db
                errors.push 'redis down' unless $scope.redis
                return errors.join ' '
            else
              return $scope.status
          $scope.promise.then(success, failure)
        ]
