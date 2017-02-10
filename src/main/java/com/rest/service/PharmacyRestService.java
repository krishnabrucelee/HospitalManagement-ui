package com.rest.service;

import java.util.HashMap;

import org.json.simple.JSONObject;

public interface PharmacyRestService {
	
	
	/**
	 * Create MedicineItemMaster.
	 * 
	 * @param medicineItemMaster
	 * @return medicineItemMaster
	 */
	public HashMap<String, Object> saveMasterMedicineItem(HashMap<String, Object> masterMedicineItem);
	
	/**
	 * List MedicineItemMaster.
	 * 
	 * 
	 * @return medicineItemMaster
	 */
	public HashMap<String, Object> listMasterMedicineItem();
	
	/**
	 * Update MedicineItemMaster.
	 * 
	 * @param medicineItemMaster
	
	 */
	public HashMap<String, Object> updateMasterMedicineItem(HashMap<String, Object> masterMedicineItemupdate);
	/**
	 * Delete MedicineItemMaster.
	 * 
	 * @param medicineItemMaster
	 
	 */
	public HashMap<String, Object> deleteMasterMedicineItem(HashMap<String, Object> masterMedicineItemdelete);
	
	/**
	 * Create PharmacyMasterEntry.
	 * 
	 * @param medicineItemMaster
	 * @return medicineItemMaster
	 */
	public HashMap<String, Object> savePharmacyMasterEntry(HashMap<String, Object> pharmacyMasterEntry);
	
	
	
	/**
	 * List PharmacyMasterEntry.
	 * 
	 * 
	 * @return PharmacyMasterEntry
	 */
	public HashMap<String, Object> listPharmacyMasterEntry();
	
	/**
	 * Update PharmacyMasterEntry.
	 * 
	 * @param medicineItemMaster
	
	 */
	public HashMap<String, Object> updatePharmacyMasterEntry(HashMap<String, Object> pharmacyMasterEntryupdate);
	/**
	 * Delete PharmacyMasterEntry.
	 * 
	 * @param medicineItemMaster
	 
	 */
	public HashMap<String, Object> deletePharmacyMasterEntry(HashMap<String, Object> pharmacyMasterEntrydelete);
	/**
	 * Create PharmacyBillEntry.
	 * 
	 * @param pharmacyBillDatas
	 * @return pharmacyBillDatas
	 */
	public HashMap<String, Object> savePharmacyBill(HashMap<String, Object> pharmacyBillDatas);
	
	/**
	 * List all PharmacyBillEntry.
	 * 
	
	 * @return pharmacyBillDatas
	 */
	public HashMap<String, Object> listPharmacyBill();
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
	
	/**
	 * @return
	 */
	public HashMap<String, Object> listPharamacyRequestDetails();

	/**
	 * Create ExpiryMedicineList.
	 * 
	 * @param orderMasterMedicine
	 */
	public HashMap<String, Object> saveExpiryMedicine(HashMap<String, Object> expiryMedicineList);
	/**
	 * List All MasterMedicineOrder.
	 * 	
	 * @return orderMasterMedicine
	 */
	public HashMap<String, Object> listExpiryMedicine();

}
