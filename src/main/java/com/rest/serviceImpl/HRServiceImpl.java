package com.rest.serviceImpl;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.rest.config.SpringRestConfig;
import com.rest.service.HRService;
@Repository
public class HRServiceImpl implements HRService {
	
	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveSalaryConfiguration(
			HashMap<String, Object> salaryconfig) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(salaryconfig, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "createSalaryComponents"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listSalaryConfiguration() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listSalaryComponents"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updateSalaryConfiguration(
			HashMap<String, Object> salaryconfig) {
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteSalaryConfigurationId(
			HashMap<String, Object> salaryconfig) {
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> createStaffSalaryConfiguration(
			HashMap<String, Object> staffsalaryconfig) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(staffsalaryconfig, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "generatePayrollForMonth"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listSalaryPaySlipForMoth() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listSalaryPaySlipForMonth"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getPayrollForMonthByEId(
			HashMap<String, Object> getPaySlipForMonthh) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(getPaySlipForMonthh, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getPaySlipForMonth"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveSalaryHike(
			HashMap<String, Object> hikedata) {
    	System.out.println("Form hikedata  connect to web services="+hikedata);
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(hikedata, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addHikeForStaff"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveBonus(HashMap<String, Object> bonusdata) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(bonusdata, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "createBonusAndIncentiveForStaff"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

}
