
angular.module('HelloUserApp', [])
    .controller('HelloUserController', function($scope,$http) {
        $http({
            method : "GET",
            url : "/inicio/obtenerJson"
        }).then(function mySucces(response) {

            console.log(response.data);
            $scope.busqueda = response.data;
        }, function myError(response) {

            $scope.busqueda = response.statusText;
        });
    });
