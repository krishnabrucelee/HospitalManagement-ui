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
import com.rest.service.NurseRestService;

/**
 * @author Krishna
 *
 */
@Service
public class NurseRestServiceImpl  implements NurseRestService {
	
	/**
	 * Nurse dao
	 */
	@Autowired
	RestTemplate restTemplate;

	@Override
	public JSONObject listNurse() {
		JSONObject result = new JSONObject();
		try {
			
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);

			HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
			
			ResponseEntity<JSONObject> postRes = restTemplate.exchange(new URI(SpringRestConfig.restUrl + "listNurse"), HttpMethod.GET, request,JSONObject.class);				
			result = postRes.getBody();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;		
	}
	
}
