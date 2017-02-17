/**
 * 
 */
package com.rest.serviceImpl;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.rest.config.SpringRestConfig;
import com.rest.service.IScheduleService;


/**
 * @author admin
 *
 */
@Service
public class ScheduleServiceImpl implements IScheduleService {

	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public JSONObject generateNurseSchedule(JSONObject scheduleInformation) {
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(scheduleInformation, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "generateNurseSchedule"), request, JSONObject.class);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public JSONObject saveNurseSchedule(JSONObject scheduleInformation) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(scheduleInformation, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "saveNurseSchedule"), request, JSONObject.class);
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}


	@Override
	public JSONObject generateDoctorSchedule(JSONObject scheduleInformation) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(scheduleInformation, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "generateDoctorSchedule"), request, JSONObject.class);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}


	@Override
	public JSONObject saveDoctorSchedule(JSONObject scheduleInformation) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(scheduleInformation, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "saveDoctorSchedule"), request, JSONObject.class);
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}


	@Override
	public JSONObject getCurrentMonthNurseSchedule(JSONObject nurseDetails) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(nurseDetails, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getCurrentMonthNurseSchedule"), request, JSONObject.class);
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}


	@Override
	public JSONObject getCurrentMonthDoctorSchedule(JSONObject doctorDetails) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(doctorDetails, headers);
		JSONObject result = new JSONObject();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getCurrentMonthDoctorSchedule"), request, JSONObject.class);
			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

}
