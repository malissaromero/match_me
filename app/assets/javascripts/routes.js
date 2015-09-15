(function(){
  var router = angular.module('userRouter', []);
  router.config([
    '$routeProvider',
    function($routeProvider){
      $routeProvider.
      when("/users", {
        templateUrl: 'users/views/index.html',
        controller: 'usersController',
        controllerAs: 'usersCtrl'
      });
    }
  ])
})
