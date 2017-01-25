package com.rest.service;

import java.util.HashMap;

import org.json.simple.JSONObject;

public interface PharmacyRestService {
	
	/**
	 * Create MasterMedicineOrder.
	 * 
	 * @param orderMasterMedicine
	 * @return orderMasterMedicine
	 */
	public HashMap<String, Object> saveMasterMedicineOrder(HashMap<String, Object> orderMasterMedicine);
	/**
	 * Create MedicineOrder.
	 * 
	 * @param medicineOrder
	 * @return medicineOrder
	 */
	public HashMap<String, Object> addMedicineOrder(HashMap<String, Object> medicineorder);

	/**
	 * List MedicineOrder.
	 * 
	 */
	public HashMap<String, Object> listMedicineOrder();
	
	/**
	 * Create MasterEntry.
	 * 
	 * @param MasterEntry
	 * @return MasterEntry
	 */
	public HashMap<String, Object> addMasterEntry(HashMap<String, Object> masterEntry);
	
	
	/**
	 * List MedicineMaster.
	 * 
	 */
	public HashMap<String, Object> listMedicineMaster();
	
	public HashMap<String, Object> getMedicineId();
	
	public HashMap<String, Object> pharmacyMedicineRequest(HashMap<String, Object> medicineRequest);
	/**
	 * Create pharmacyRequest.
	 * 
	 * @param pharmacyRequest
	 * @return pharmacyRequest
	 */
	public HashMap<String, Object> pharmacyRequest(HashMap<String, Object> pharmacyRequest);
	
	/**
	 * Update updatepharmacyMaster.
	 * 
	 * @param updatepharmacyMaster
	 * @return updatepharmacyMaster
	 */
	public HashMap<String, Object> updatepharmacyRequestMaster(HashMap<String, Object> updatepharmacyRequestMaster);
	/**
	 * Create updatePharmacyEach.
	 * 
	 * @param updatePharmacyEach
	 * @return updatePharmacyEach
	 */
	public HashMap<String, Object> updatePharmacyRequestByPharmacy(HashMap<String, Object> pharmacyUpdateStatus);


}
