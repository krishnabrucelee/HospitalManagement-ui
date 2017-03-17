package com.rest.service;

import java.util.HashMap;

public interface EquipmentService {
		
	
	public HashMap<String, Object> saveDevice(HashMap<String, Object> deviceConfiguration);
	
	public HashMap<String, Object> saveMaintananceConfiguration(HashMap<String, Object> maintananceConfiguration);
	
	public HashMap<String, Object> saveBuildingConfiguration(HashMap<String, Object> buildingConfiguration);
	/**
	 * Create BuildingFloordetails.
	 * 
	 * @param buildingFloordetails
	 * @return buildingFloordetails
	 */
	public HashMap<String, Object> saveEquipmentConfiguration(HashMap<String, Object> equipmentConfiguration);
	
	public HashMap<String, Object> listBuilding();
	
	public HashMap<String, Object> listDevice();
	
	public HashMap<String, Object> listMaintanceConfig();
	
	public HashMap<String, Object> getGroupByEquipment();
	
	public HashMap<String, Object> getLastEquipmentCheck(HashMap<String, Object> lastCheckt);
	
	public HashMap<String, Object> saveEquipmentCheckRequest(HashMap<String, Object> equipmentConfiguration);

	public HashMap<String, Object> getPendingEquipmentMaintananceRequest();

	public HashMap<String, Object> checkEquipmentMaintanace(HashMap<String, Object> checkRequest);

	public HashMap<String, Object> updateEquipmentCheckStatus(HashMap<String, Object> equipmentCheck);


}
