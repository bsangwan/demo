
### 2015-09-27

#### ui-router-sample

本地启动: python -m SimpleHTTPServer 8080

*	index.html

		<html ng-app="uiRouterSample">
	
		</html>
	
	在 app.js中定义 'uiRouterSample	' module
	
		angular.module('uiRouterSample', [
			...
		])
	
	导入相关文件
	
		app/contacts/contacts.js
		app/contacts/contacts-service.js
		common/utils/utils-service.js	
		
*	app.js 定义home。(引入ui.router)
		
		angular.module('uiRouterSample',[
			'ui.router'
		])
		.config(['$stateProvider',function($stateProvider){
			$stateProvider
				.state('home',{
					url: "/",
					template: '<p>'
				})
		}]);
		
	*	定义 urlRouterProvider
	
			.config(['$urlRouterProvider',function($urlRouterProvider){
				$urlRouterProvider
				.when('/c?id','/contacts/:id');
			}]);
			
> stateProvider与urlRouterProvider区别

[ui-router](https://github.com/angular-ui/ui-router/issues/26)

*	定义 utils-service.js
	
		angular.moudle('uiRouterSample.utils.service',[
		])
		.factory('utils',function(){
			return{
				newRandomKey:function newRandomKey(){
					var randomKey;
					return randomKey;
				}
			};
		});


[ui-router与angular-router](http://stackoverflow.com/questions/21023763/difference-between-angular-route-and-angular-ui-router)

	$state = {{$state.current.name}}
	$stateParams = {{stateParams}}
	$state = {{$state.current.url.source}}
	
#### contacts子模块
	
app/contacts/contacts.js
	
	angular.module('uiRouterSample.contacts',[
		'ui.router'
	])
	.config(['$stateProvider',function($stateProvider){
		$stateProvider
			.state('contacts',{
				url: '/contacts',
				templateUrl: 'app/contacts/contacts.html',
				resolve:{
					contacts:['contacts',
						function(contacts){
							return contacts.all();
						}]
				}
			})
	}])
	
[promise](http://my.oschina.net/ilivebox/blog/293771)

[angular promise](http://html5jscss.com/angular-promise.html)
	
#### 55

	
	ui-sref
		
	ui-view
	
	ng-initsdf
	
>	karma如何运用