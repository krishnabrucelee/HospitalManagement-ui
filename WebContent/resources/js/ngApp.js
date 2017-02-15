
var ngApp = angular.module('ngModule', 
	[ 'ngAnimate', 'ngSanitize', 'ui.bootstrap','ui.bootstrap.datetimepicker','ngDialog','mwl.calendar','ivh.treeview']);

ngApp.config(['calendarConfig', function(calendarConfig) {
	
	calendarConfig.dateFormatter = 'moment'; //use either moment or angular to format dates on the calendar. Default angular. Setting this will override any date formats you have already set.

    calendarConfig.allDateFormats.moment.date.hour = 'HH:mm'; //this will configure times on the day view to display in 24 hour format rather than the default of 12 hour

  }]);