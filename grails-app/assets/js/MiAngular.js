
angular.module('HelloUserApp', []).filter('tel', function (){})
    .controller('HelloUserController', function($scope,$http) {
        $http({
            method : "GET",
            url : "/inicio/obtenerJson"
        }).then(function mySucces(response) {

            console.log(response.data);
            $scope.busqueda = response.data;
            $scope.quantity = 5;
        }, function myError(response) {

            $scope.busqueda = response.statusText;

        });
    });
