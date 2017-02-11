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
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.rest.config.SpringRestConfig;
import com.rest.service.NurseRestService;

/**
 * @author Krishna
 *
 */
@Service
public class NurseRestServiceImpl  implements NurseRestService {
	
	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public HashMap<String, Object> listNurse() {

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listNurse"), request,
					HashMap.class);

			System.out.println("List doctors=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/*

	*//**
	 * Nurse dao
	 *//*
	@Autowired
	private NurseDao nursedao;
	
	@Override
	public JSONObject addNurse(JSONObject nurse) {
		return nursedao.addNurse(nurse);
	}

	@Override
	public JSONObject listNurse() {
		return nursedao.listNurse();
	}

	@Override
	public JSONObject updateNurse(JSONObject nurse) {
		return nursedao.updateNurse(nurse);
	}

	@Override
	public JSONObject deleteNurse(JSONObject nurseId) {
		return nursedao.deleteNurse(nurseId);
	}

	@Override
	public Nurse addNurseFromStaff(Nurse nurse) {
		return nursedao.addNurseFromStaff(nurse);
	}

	@Override
	public JSONObject listByNurseId(JSONObject nurseId) {
		return nursedao.listByNurseId(nurseId);
	}

*/}
