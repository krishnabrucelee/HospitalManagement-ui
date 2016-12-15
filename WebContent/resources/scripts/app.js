var hospitalModule = angular.module('hospitalModule',['ui.router']);

hospitalModule.config(function($stateProvider, $httpProvider, $urlRouterProvider, $compileProvider){
	
	
	 $stateProvider

     // Home - Main page
     .state('login', {
         url : "/login",
         template:"<h2>THis is login.jsp</h2>",
         data : {
             pageTitle : 'common.login',
         }
     })
     .state('dashboard', {
         url : "/dashboard",
         template:"<h2>THis is dashboard.jsp</h2>",
         data : {
             pageTitle : 'common.home',
         }
     })
})
