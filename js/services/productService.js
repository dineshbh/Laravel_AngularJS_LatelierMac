angular.module('productService', ['ui.sortable'])

	.factory('Product', function($http) {

		return {
			get : function() {
				return $http.get('api/categories');
			},
			getproducts : function(id){
				return $http.get('getproducts/' + id);
			},
			getadmproducts : function(id){
				return $http.get('../admin/getproducts/' + id);
			},
			getFollows : function(id){
				return $http.get('api/getfollows/' + id)
			},
			show : function(id) {
				return $http.get('api/threads/' + id);
			},
			save : function(commentData) {
				return $http({
					method: 'POST',
					url: 'api/threads',
					headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
					data: $.param(commentData)
				});
			},
			saveAnswer : function(commentData) {
				var lol = window.location.href.split("/");
				value = $.param(commentData)+"&threadid="+lol[6];
				return $http({
					method: 'POST',
					url: 'api/answers',
					headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
					data: value
				});
			},
			saveCategory : function(commentData) {
				return $http({
					method: 'POST',
					url: '../api/categories',
					headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
					data: $.param(commentData)
				});
			},
			saveSubCat : function(subData) {
				return $http({
					method: 'POST',
					url: '../api/subcategories',
					headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
					data: $.param(subData)
				});
			},
			follow : function(followData) {
				var lol = window.location.href.split("/");
				value = $.param(followData)+"&threadid="+lol[6];
				return $http({
					method: 'POST',
					url: 'api/follows',
					headers: { 'Content-Type' : 'application/x-www-form-urlencoded' },
					data: value
				});
			},
			update : function(id, updateData) {
				return $http.put('api/threads/' + id, updateData);
			},
			destroy : function(id) {
				return $http.delete('lateliermac/api/threads/' + id);
			},
			destroyCat : function(id) {
				return $http.delete('../api/categories/' + id);
			}
		}

	});
