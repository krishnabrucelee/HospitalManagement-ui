package com.rest.service;

import org.json.simple.JSONObject;

public interface IScheduleService {

	public JSONObject generateNurseSchedule(JSONObject scheduleInformation);
	
	public JSONObject saveNurseSchedule(JSONObject scheduleInformation);
	
	public JSONObject getCurrentMonthNurseSchedule(JSONObject nurseDetails);
	
	public JSONObject generateDoctorSchedule(JSONObject scheduleInformation);
	
	public JSONObject saveDoctorSchedule(JSONObject scheduleInformation);
	
	public JSONObject getCurrentMonthDoctorSchedule(JSONObject doctorDetails);
}
