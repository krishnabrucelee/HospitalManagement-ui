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
import com.rest.service.LeaveRestService;
@Service
public class LeaveRestServiceImpl implements LeaveRestService {
	
	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveFinancialYear(
			HashMap<String, Object> financialYear) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(financialYear, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "setFinancialData"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listFinancialYear() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listFinancialData"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updateFinancialYear(
			HashMap<String, Object> financialYear) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(financialYear, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updateFinancialData"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteFinancialYearId(
			HashMap<String, Object> financialYearId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(financialYearId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "deleteFinancialData"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveLeavedata(
			HashMap<String, Object> leaveData) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(leaveData, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "saveLeaveData"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listLeavedata() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listLeavetypes"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> updateLeavedata(
			HashMap<String, Object> leavedata) {
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteLeavedataId(
			HashMap<String, Object> leaveId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(leaveId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "deleteLeavedata"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveHolydays(
			HashMap<String, Object> holidayData) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(holidayData, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "setYearlyHolidays"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	public HashMap<String, Object> listHoliday(HashMap<String, Object>holidaytype) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(holidaytype,headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getHolidaysByTypes"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> updateHoliday(HashMap<String, Object> holiday) {
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteHolidayById(
			HashMap<String, Object> holidayId) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(holidayId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "deleteHolidayById"), request,HashMap.class);			
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getFiscalBalance(
			HashMap<String, Object> fiscalBalanceByEId) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(fiscalBalanceByEId, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getFiscalLeaveDetailsByEmpId"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveLeaveRequest(
			HashMap<String, Object> leaverequest) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(leaverequest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "employeeApplyLeave"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listLeaveRequest() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getAllLeaveHistoryByAdmin"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> approveLeaveByAdmin(HashMap<String, Object> selected) {
		HttpHeaders headers = new HttpHeaders();		
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(selected, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "approveLeaverequestByEmpByAdmin"), request,HashMap.class);		
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getFiscalBalanceEmployees() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getFiscalBalanceEmployeeId"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listLeaveRequestBetweenDates(
			HashMap<String, Object> leaverequest) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(leaverequest,headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listLeaveRequestBetweenDates"), request,HashMap.class);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	

	

}
