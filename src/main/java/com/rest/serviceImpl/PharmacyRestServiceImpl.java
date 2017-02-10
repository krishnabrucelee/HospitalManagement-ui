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
import com.rest.service.PharmacyRestService;
@Service
public class PharmacyRestServiceImpl implements PharmacyRestService {
	
	@Autowired
	RestTemplate restTemplate;
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveMasterMedicineOrder(
			HashMap<String, Object> orderMasterMedicine) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(orderMasterMedicine, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "orderMasterMedicine"), request,HashMap.class);

			System.out.println("Add orders=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> addMedicineOrder(HashMap<String, Object> medicineorder) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(medicineorder, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "issueOrder"), request,HashMap.class);

			System.out.println("Add orders=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> listMedicineOrder() {
		return null;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> addMasterEntry(HashMap<String, Object> masterEntry) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterEntry, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "addMasterEntry"), request,HashMap.class);
			System.out.println("Add Master Entry medicine=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listMedicineMaster() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listMedicineMaster"), request,
					HashMap.class);

			System.out.println("List MasterMedicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> pharmacyRequest(
			HashMap<String, Object> pharmacyRequest) {
		return null;
	}

	@Override
	public HashMap<String, Object> updatepharmacyRequestMaster(
			HashMap<String, Object> updatepharmacyRequestMaster) {
		return null;
	}

	@Override
	public HashMap<String, Object> updatePharmacyRequestByPharmacy(
			HashMap<String, Object> pharmacyUpdateStatus) {
		return null;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> getMedicineId() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "getMedicineId"), request,
					HashMap.class);

			System.out.println("List MasterMedicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")//pharmacyMedicineRequest
	@Override
	public HashMap<String, Object> pharmacyMedicineRequest(HashMap<String, Object> medicineRequest) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(medicineRequest, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "pharmacyMedicineRequest"), request,HashMap.class);
			System.out.println("Add Pharmacy medicine request=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveMasterMedicineItem(HashMap<String, Object> masterMedicineItem) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterMedicineItem, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "saveMasterMedicineItem"), request,HashMap.class);
			System.out.println("Add Master Entry medicine=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listMasterMedicineItem() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listMasterMedicineItem"), request,
					HashMap.class);

			System.out.println("List MasterMedicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> savePharmacyMasterEntry(		
			HashMap<String, Object> pharmacyMasterEntry) {
		System.out.println("Connect web service=");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(pharmacyMasterEntry, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "savePharmacyMasterEntry"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listPharmacyMasterEntry() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listPharmacyMasterEntry"), request,
					HashMap.class);

			System.out.println("List PharmacyMasterEntry=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public HashMap<String, Object> listPharamacyRequestDetails() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			ResponseEntity<JSONObject> postRes = restTemplate.exchange(new URI(SpringRestConfig.restUrl + "listPharamacyRequestDetails"), HttpMethod.GET, request,JSONObject.class);
			
			result = postRes.getBody();

			System.out.println("list Patient=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> savePharmacyBill(HashMap<String, Object> pharmacyBillDatas) {
		System.out.println("Connect web service=");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(pharmacyBillDatas, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "savePharmacyBill"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updateMasterMedicineItem(
			HashMap<String, Object> masterMedicineItemupdate) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterMedicineItemupdate, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updateMasterMedicineItem"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deleteMasterMedicineItem(
			HashMap<String, Object> masterMedicineItemdelete) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(masterMedicineItemdelete, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updatePharmacyMasterEntry"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> updatePharmacyMasterEntry(
			HashMap<String, Object> pharmacyMasterEntryupdate) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(pharmacyMasterEntryupdate, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updatePharmacyMasterEntry"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> deletePharmacyMasterEntry(
			HashMap<String, Object> pharmacyMasterEntrydelete) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(pharmacyMasterEntrydelete, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "updatePharmacyMasterEntry"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listPharmacyBill() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listPharmacyBill"), request,
					HashMap.class);

			System.out.println("List PharmacyBill=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> saveExpiryMedicine(
			HashMap<String, Object> expiryMedicineList) {
		System.out.println("Connect web service=");
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);
		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(expiryMedicineList, headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {			
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "saveExpiryMedicine"), request,HashMap.class);
			System.out.println("Add savePharmacyMasterEntry=" + result);
		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	@SuppressWarnings("unchecked")
	@Override
	public HashMap<String, Object> listExpiryMedicine() {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_JSON);

		HttpEntity<HashMap<String, Object>> request = new HttpEntity<HashMap<String, Object>>(headers);
		HashMap<String, Object> result = new HashMap<String, Object>();
		try {
			result = restTemplate.postForObject(new URI(SpringRestConfig.restUrl + "listExpiryMedicine"), request,
					HashMap.class);

			System.out.println("List ExpiryMedicine=" + result);

		} catch (RestClientException | URISyntaxException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
}
