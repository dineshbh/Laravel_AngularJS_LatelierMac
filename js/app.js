var productApp = angular.module('productApp', ['mainCtrl', 'productService', 'ui.sortable'], function($interpolateProvider) {
        $interpolateProvider.startSymbol('<%');
        $interpolateProvider.endSymbol('%>');
	});
