ngApp.controller('nurseScheduleCtrl', ['$scope','$http',
	function($scope,$http) {

		$scope.employee = [];
		$scope.shiftTypes = [{"@ID":"E","StartTime":"06:30:00","EndTime":"14:30:00","Description":"Early","Skills":{"Skill":"Nurse"}},{"@ID":"L","StartTime":"14:30:00","EndTime":"22:30:00","Description":"Late","Skills":{"Skill":"Nurse"}},{"@ID":"D","StartTime":"08:30:00","EndTime":"16:30:00","Description":"Day shift","Skills":{"Skill":"Nurse"}},{"@ID":"N","StartTime":"22:30:00","EndTime":"06:30:00","Description":"Night","Skills":{"Skill":"Nurse"}}    ];
		$scope.DayOfWeekCover = [{"Day":"Monday","Cover":[{"Shift":"E","Preferred":"2"},{"Shift":"L","Preferred":"2"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Tuesday","Cover":[{"Shift":"E","Preferred":"2"},{"Shift":"L","Preferred":"2"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Wednesday","Cover":[{"Shift":"E","Preferred":"2"},{"Shift":"L","Preferred":"2"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Thursday","Cover":[{"Shift":"E","Preferred":"2"},{"Shift":"L","Preferred":"2"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Friday","Cover":[{"Shift":"E","Preferred":"2"},{"Shift":"L","Preferred":"2"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Saturday","Cover":[{"Shift":"E","Preferred":"1"},{"Shift":"L","Preferred":"1"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]},{"Day":"Sunday","Cover":[{"Shift":"E","Preferred":"1"},{"Shift":"L","Preferred":"1"},{"Shift":"D","Preferred":"1"},{"Shift":"N","Preferred":"1"}]}    ];

		$http.get("listNurse").success(function(data){
			$scope.nurseList = data.Nurse;
			var defaultSkillObject ={ "Skill": "Nurse" };
			$scope.nurseList.forEach(function(value){
				var obj = {};
				obj['@ID']= value.nurseId;
				obj.ContractID = 0;
				obj.Name = value.nurseEmail;
				obj.Skills = defaultSkillObject; 
				$scope.employee.push(obj);
			});

			if($scope.employee.length<10)
			{
				for(var i=$scope.employee.length+1;i<=10;i++)
				{
					var obj = {};
					obj['@ID']= i;
					obj.ContractID = 0;
					obj.Name = "Email"+i;
					obj.Skills = defaultSkillObject; 
					$scope.employee.push(obj);
				}
			}

		});

		$scope.schedule = function(){

			var SchedulingPeriod={"@xmlns:xsi":"http://www.w3.org/2001/XMLSchema-instance","@ID":"sprint_hint01","@xsi:noNamespaceSchemaLocation":"competition.xsd","Skills":{"Skill":"Nurse"},"Contracts":{"Contract":{"@ID":"0","Description":"fulltime","SingleAssignmentPerDay":{"@weight":"1","$":"true"},"MaxNumAssignments":{"@on":"1","@weight":"3","$":"20"},"MinNumAssignments":{"@on":"1","@weight":"3","$":"9"},"MaxConsecutiveWorkingDays":{"@on":"1","@weight":"4","$":"5"},"MinConsecutiveWorkingDays":{"@on":"1","@weight":"4","$":"3"},"MaxConsecutiveFreeDays":{"@on":"1","@weight":"7","$":"4"},"MinConsecutiveFreeDays":{"@on":"1","@weight":"3","$":"2"},"MaxConsecutiveWorkingWeekends":{"@on":"1","@weight":"5","$":"3"},"MinConsecutiveWorkingWeekends":{"@on":"1","@weight":"5","$":"2"},"MaxWorkingWeekendsInFourWeeks":{"@on":"0","@weight":"0","$":"0"},"WeekendDefinition":"SaturdaySunday","CompleteWeekends":{"@weight":"10","$":"true"},"IdenticalShiftTypesDuringWeekend":{"@weight":"10","$":"true"},"NoNightShiftBeforeFreeWeekend":{"@weight":"10","$":"true"},"AlternativeSkillCategory":{"@weight":"10","$":"false"},"UnwantedPatterns":""}}};
			SchedulingPeriod.ShiftTypes={"Shift":$scope.shiftTypes};
			SchedulingPeriod.Employees={"Employee":$scope.employee};
			SchedulingPeriod.CoverRequirements = {DayOfWeekCover:$scope.DayOfWeekCover};
			SchedulingPeriod.StartDate = $scope.search.StartDate;
			SchedulingPeriod.EndDate = $scope.search.EndDate;

			var obj = {}
			obj.SchedulingPeriod = SchedulingPeriod;

			$http.post("generateNurseSchedule",obj).success(function(data){
             	 if(data.status)    			
             	 {
             	 	$scope.groupByResult = data.groupByResult;
             	 }
            });
		};

		$scope.saveAttendance = function(){

			var obj = {};
			obj.groupByResult =$scope.groupByResult;
			obj.Employee =$scope.employee;

			$http.post("saveNurseSchedule",obj).success(function(data){
             	 console.log("Data Saved ",data);
            });
		};

		$scope.checkType = function(obj,employeeId){
			var filtered = obj.filter(function(v){
				if(v.Employee == employeeId)
					return true;
				else
					return false;
			});

			if(!filtered.length)
				return ;
			else 
			{	
				return filtered[0].ShiftType;
			}	
		};
}]);