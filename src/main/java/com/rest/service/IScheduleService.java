package com.rest.service;

import org.json.simple.JSONObject;

public interface IScheduleService {

	public JSONObject generateNurseSchedule(JSONObject scheduleInformation);
	
	public JSONObject saveNurseSchedule(JSONObject scheduleInformation);
}
