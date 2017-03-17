package com.rest.serviceImpl;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.rest.config.SpringRestConfig;
import com.rest.service.RadiologyRestService;
@Service
public class RadiologyResrServiceImpl implements RadiologyRestService {
	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveRadiologyTest(
			HashMap<String, Object> radiologyTest) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(radiologyTest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addRadiologyTestName"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listRadiologyTest() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listRadiologyTest"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listPatientRadiologyTest() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
          System.out.println("Connnect to Webservice");
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listPatientRadiologyTestrequest"), request,HashMap.class);
			 System.out.println("After Connnect to Webservice");
			System.out.println("###Radiology Request Value###="+result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}	
		return result;
	}

}
