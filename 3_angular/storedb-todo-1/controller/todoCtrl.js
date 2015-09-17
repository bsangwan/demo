var app = angular.module('todo',[]);
app.controller('todoCtrl',function($scope){
	$scope.lists = storedb('todo').find();
	$scope.add = function(){
		storedb('todo').insert({"cont":$scope.cont,"isDone":"false"},function(err){
			if(!err){
				$scope.lists = storedb('todo').find();
			}else{
				alert(err)
			}
		})
	}
})