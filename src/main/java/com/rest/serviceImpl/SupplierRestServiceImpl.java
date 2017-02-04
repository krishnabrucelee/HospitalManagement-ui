/**
 * 
 */
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
import com.rest.service.SupplierRestService;

/**
 * @author Krishna
 *
 */
@Service
public class SupplierRestServiceImpl implements SupplierRestService {

	@Autowired
	RestTemplate restTemplate;
	
	@Override
	public HashMap<String, Object> addSupplierDetails(HashMap<String, Object> supplier) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(supplier, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "createSupplier"), request,
					HashMap.class);

			System.out.println("Add supplier=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

}
