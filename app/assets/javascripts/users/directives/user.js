(function(){
  var directives = angular.module('userDirectives',[]);
  directives.directive('user', ['User', '$routeParams', '$location', function(User, $routeParams, $location){
    return {
      templateUrl: 'views/index.html',
      link: function(scope, element, attributes){
        if($routeParams.id){
          scope.showing = true;
          scope.user = User.get({id: $routeParams.id});s
        }

        scope.delete = function(id){
          User.delete({id: id}, function(){
            $location.path("/users")
          });
        }
      }
    }
  }]);
})();
