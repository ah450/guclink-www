angular.module 'guclinkMain'
  .controller 'StatusController', ($scope, AUTH_BASE_URL, ORGANIZER_BASE_URL,
    ATTENDANCE_BASE_URL, NAV_BASE_URL, CLASS_BASE_URL, EXAM_BASE_URL,
    PARKING_BASE_URL, DATA_BASE_URL, $http) ->
      $scope.authStatusPromise = $http.get [AUTH_BASE_URL,
        'status.json'].join('/')
      $scope.organizerStatusPromise = $http.get [ORGANIZER_BASE_URL,
        'status.json'].join('/')
      $scope.attendanceStatusPromise = $http.get [ATTENDANCE_BASE_URL,
        'status.json'].join('/')
      $scope.navStatusPromise = $http.get [NAV_BASE_URL,
        'status.json'].join('/')
      $scope.classStatusPromise = $http.get [CLASS_BASE_URL,
        'status.json'].join('/')
      $scope.examStatusPromise = $http.get [EXAM_BASE_URL,
        'status.json'].join('/')
      $scope.parkingStatusPromise = $http.get [PARKING_BASE_URL,
        'status.json'].join('/')
      $scope.dataStatusPromise = $http.get [DATA_BASE_URL,
        'status.json'].join('/')
