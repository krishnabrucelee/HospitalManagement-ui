package com.rest.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.EquipmentService;

@Controller
public class EquipmentController {
	
	@Autowired
	EquipmentService iequipment;
	
	private  final String  equipmentRootFolder ="Equipment";
	
	@RequestMapping(value="/showDeviceForm")
	public String showDeviceForm(Model model){	
		return equipmentRootFolder+"/Device";
	}
	
	@RequestMapping(value = "/saveDevice", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveDevice(@RequestBody HashMap<String, Object> deviceConfiguration) {								
		
		return iequipment.saveDevice(deviceConfiguration);
	}
	@RequestMapping(value="/showMaintananceConfig")
	public String showMaintananceConfigForm(Model model){	
		return equipmentRootFolder+"/MaintananceConfig";
	}
	
	@RequestMapping(value = "/saveMaintananceConfig", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveMaintananceConfig(@RequestBody HashMap<String, Object> maintananceConfiguration) {								
		
		return iequipment.saveMaintananceConfiguration(maintananceConfiguration);
	}
	@RequestMapping(value="/showBuildingForm")
	public String showBuildingForm(Model model){	
		return equipmentRootFolder+"/AddBuilding";
	}
	
	@RequestMapping(value = "/saveBuilding", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveBuilding(@RequestBody HashMap<String, Object> buildingConfiguration) {								
		return iequipment.saveBuildingConfiguration(buildingConfiguration);
	}
	
	@RequestMapping(value="/showEquipmentForm")
	public String showEquipmentForm(Model model){	
		return equipmentRootFolder+"/AddEquipment";
	}
	
	@RequestMapping(value = "/listBuilding")
	public @ResponseBody HashMap<String, Object> listBuilding() {		
		return iequipment.listBuilding();
	}

	@RequestMapping(value = "/listDevice")
	public @ResponseBody HashMap<String, Object> listDevice() {		
		return iequipment.listDevice();
	}

	@RequestMapping(value = "/listMainatanceConfig")
	public @ResponseBody HashMap<String, Object> listMaintanceConfig() {		
		return iequipment.listMaintanceConfig();
	}
	
	@RequestMapping(value = "/saveEquipment", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveEquipment(@RequestBody HashMap<String, Object> equipmentDetails) {								
		return iequipment.saveEquipmentConfiguration(equipmentDetails);
	}
	

	@RequestMapping(value = "/getGroupByEquipment")
	public @ResponseBody HashMap<String, Object> getGroupByEquipment() {		
		return iequipment.getGroupByEquipment();
	}

	@RequestMapping(value="/maintananceRequest")
	public String equipmentCheck(Model model){
		
		return equipmentRootFolder+"/EquipmentCheckRequest";
	}

	@RequestMapping(value = "/getLastEquipmentCheck", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getLastEquipmentCheck(@RequestBody HashMap<String, Object> equipmentcheck) {						
	
		return iequipment.getLastEquipmentCheck(equipmentcheck);
	}
	
	@RequestMapping(value = "/saveEquipmentCheck", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveEquipmentCheck(@RequestBody HashMap<String, Object> equipmentCheckRequest) {						
	
		return iequipment.saveEquipmentCheckRequest(equipmentCheckRequest);
	}
	
	
	
	@RequestMapping(value="/maintananceRequestPending")
	public String EquipmentCheck(Model model){
		
		return equipmentRootFolder+"/EquipmentCheckUpdate";
	}
	
	@RequestMapping(value = "/getEquipmentMaintanancePending")
	public @ResponseBody HashMap<String, Object> getEquipmentMaintanancePending() {		
		return iequipment.getPendingEquipmentMaintananceRequest();
	}
	
	@RequestMapping(value = "/checkEquipmentMaintanance")
	public @ResponseBody HashMap<String, Object> checkEquipmentMaintanance(@RequestBody HashMap<String, Object> checkRequest) {		
		return iequipment.checkEquipmentMaintanace(checkRequest);
	}
	
	@RequestMapping(value = "/updateEquipmentMaintananceStatus")
	public @ResponseBody HashMap<String, Object> updateEquipmentMaintananceStatus(@RequestBody HashMap<String, Object> equipmentCheckStatus) {		
		System.out.println("From value="+equipmentCheckStatus);
		
		return iequipment.updateEquipmentCheckStatus(equipmentCheckStatus);
	}
}
