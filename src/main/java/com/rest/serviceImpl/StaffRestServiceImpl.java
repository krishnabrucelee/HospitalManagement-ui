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
import com.rest.service.StaffRestService;

/**
 * @author Krishna
 *
 */
@Service
@SuppressWarnings("unchecked")
public class StaffRestServiceImpl implements StaffRestService {

	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public HashMap<String, Object> addStaff(HashMap<String, Object> staff) {

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(staff, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addStaff"), request, HashMap.class);

			System.out.println(result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;

	}

	@Override
	public HashMap<String, Object> listStaff() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			ResponseEntity<JSONObject> postRes = restTemplate.exchange(new URI(SpringRestConfig.restUrl + "listStaff"), HttpMethod.GET, request,JSONObject.class);
			
			result = postRes.getBody();

			System.out.println("list Department=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

//	@Override
//	public JSONObject listStaff() {
//		return staffdao.listStaff();
//	}
//
//	@Override
//	public JSONObject updateStaff(JSONObject staff) {
//		return staffdao.updateStaff(staff);
//	}
//
//	@Override
//	public JSONObject deleteStaff(JSONObject staffId) {
//		return staffdao.deleteStaff(staffId);
//	}

}
