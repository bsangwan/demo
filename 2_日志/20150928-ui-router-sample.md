
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
		
	ui-sref
		
	ui-view
	
>	karma如何运用