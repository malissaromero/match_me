(function() {
  var userControllers = angular.module('userControllers', ['ngRoute'])

  userControllers.controller('usersController', ['User', function(User) {
    this.users = User.query();
  }]);

})();
