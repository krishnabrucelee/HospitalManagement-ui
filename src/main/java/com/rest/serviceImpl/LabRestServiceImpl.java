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
import com.rest.service.LabRestService;
@Service
public class LabRestServiceImpl implements LabRestService {
		
	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveMasterLabTest(
			HashMap<String, Object> masterLabTest) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addMasterLabConfigure"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listMasterLabTest() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listMasterLabTest"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updateMasterLabTest(
			HashMap<String, Object> masterLabTest) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updateMasterLabTest"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteMasterLabTest(
			HashMap<String, Object> masterLabTestId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTestId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "deleteMasterLabTest"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveMasterLabTestReport(
			HashMap<String, Object> masterLabTestReport) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTestReport, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addMasterLabTestReport"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listMasterLabTestReport() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listMasterLabTestReport"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
    
    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updateMasterLabTestReport(
			HashMap<String, Object> masterLabTestReport) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTestReport, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updateMasterLabTestReport"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteMasterLabTestReport(
			HashMap<String, Object> masterLabTestReportId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterLabTestReportId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "deleteMasterLabTestReport"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
    @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> savePatientLabRequest(
			HashMap<String, Object> patientLabRequest) {
    	System.out.println("savePatientLabRequest conect web servoces");
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(patientLabRequest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "savePatientLabRequest"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
    
    @SuppressWarnings("unchecked")
   	@Override
   	public HashMap<String, Object> listPatientLabRequest() {
   		HttpHeaders headers = new HttpHeaders();
   		headers.setContentType(MediaType.APPLICATION_JSON);

   		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
   		HashMap<String, Object> result = new HashMap<String, Object>();
   		try {
   			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listPatientLabRequest"), request,HashMap.class);
   		} catch (RestClientException | URISyntaxException e) {
   			e.printStackTrace();
   		}
   		return result;
   	}
	 @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getPatientLabRequestById(
			HashMap<String, Object> patientLabRequestId) {
		 HttpHeaders headers = new HttpHeaders();		
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(patientLabRequestId, headers);
			HashMap<String, Object> result = new HashMap<String, Object>();
			try {			
				result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getPatientLabRequestById"), request,HashMap.class);		
			} catch (RestClientException | URISyntaxException e) {
				e.printStackTrace();
			}
			return result;
	}
	 @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> savePatientLabReport(HashMap<String, Object> patientLabReport) {
			HttpHeaders headers = new HttpHeaders();		
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(patientLabReport, headers);
			HashMap<String, Object> result = new HashMap<String, Object>();
			try {			
				result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "savePatientLabRequest"), request,HashMap.class);		
			} catch (RestClientException | URISyntaxException e) {
				e.printStackTrace();
			}
			return result;
	}
	 @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getPatientLabReportById(HashMap<String, Object> patientLabReportId) {
			HttpHeaders headers = new HttpHeaders();		
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(patientLabReportId, headers);
			HashMap<String, Object> result = new HashMap<String, Object>();
			try {			
				result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "savePatientLabRequest"), request,HashMap.class);		
			} catch (RestClientException | URISyntaxException e) {
				e.printStackTrace();
			}
			return result;
	}
	 @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updatePatientLabRequest(HashMap<String, Object> patientLabReportId) {
		 HttpHeaders headers = new HttpHeaders();
			headers.setContentType(MediaType.APPLICATION_JSON);
			HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(patientLabReportId, headers);
			HashMap<String, Object> result = new HashMap<String, Object>();
			try {			
				result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updateMasterLabTestReport"), request,HashMap.class);			
			} catch (RestClientException | URISyntaxException e) {
				e.printStackTrace();
			}
			return result;
	}
	 
	 @SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updatePatientRequestLabTest(HashMap<String, Object> labTestReport) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(labTestReport, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updatePatientRequestLabTest"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	

}
