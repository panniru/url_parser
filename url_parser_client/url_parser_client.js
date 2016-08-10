var urlParserApp = angular.module("urlParserApp", []);
(function(angular, app) {
    "use strict";
    app.controller('UrlParsersController',["$scope", "$http", function($scope, $http) {
        $scope.newUrl = {source: null};
	$scope.save = function(){
	    var req = {
		method: 'POST',
		url: 'http://localhost:3000/urls/',
		headers: {
		    'Access-Control-Allow-Origin': '*',
		    'Content-Type': 'application/JSON'
		},
		data: { url: $scope.newUrl }
	    };
	    

	    $.ajax({
		type: "POST",
		url: 'http://localhost:3000/urls/',
		data: { url: $scope.newUrl },
		success: function(data){
		    $scope.loadContent();
		}

	    });
	}

	$scope.loadUrls = function(){
	    $http.get( 'http://localhost:3000/urls').then(function( response ) {
		$scope.urls = response.data;
	    });
	}

	$scope.loadUrlContents = function(url){
	    $http.get( 'http://localhost:3000/urls/'+url.id+'/url_contents').then(function( response ) {
		$scope.contents = response.data;
	    });
	}

	
	$scope.loadContent = function(){

	    $http.get( 'http://localhost:3000/url_contents/all').then(function( response ) {
		$scope.contents = response.data;
	    });


	}
        
    }]);  
    
})(angular, urlParserApp);


