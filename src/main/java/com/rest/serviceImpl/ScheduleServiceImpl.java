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

}
