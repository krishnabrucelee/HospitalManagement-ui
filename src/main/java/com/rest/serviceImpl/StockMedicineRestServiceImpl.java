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
import com.rest.service.StockMedicineRestService;

/**
 * @author Krishna 
 *
 */
@Service
public class StockMedicineRestServiceImpl implements StockMedicineRestService {

	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public HashMap<String, Object> addStockMedicineDetails(HashMap<String, Object> stockMedicine) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(stockMedicine, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addStockMedicine"), request,
					HashMap.class);

			System.out.println("Add Appointment=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public HashMap<String, Object> listStockMedicineDetails() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			ResponseEntity<JSONObject> postRes = restTemplate.exchange(new URI(SpringRestConfig.restUrl + "listStockMedicine"), HttpMethod.GET, request,JSONObject.class);
			
			result = postRes.getBody();

			System.out.println("list Stock Medicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> adjustStockMedicine(HashMap<String, Object> stockMedicine) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(stockMedicine, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "adjustStockMedicine"), request,
					HashMap.class);

			System.out.println("adjustStockMedicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@Override
	public HashMap<String, Object> getStockMedicineById(HashMap<String, Object> stockMedicineId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(stockMedicineId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getStockMedicineById"), request,
					HashMap.class);

			System.out.println("getStockMedicineById=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
}
