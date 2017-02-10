package com.rest.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.PharmacyRestService;
@Controller
public class PharmacyRestController {
	
	@Autowired
	PharmacyRestService ipharmacy;
	
	private final  String  pharmacyRootFolder ="Pharmacy";
	
	@RequestMapping(value = "/inline", method = RequestMethod.GET)
	public String inline(Locale locale, Model model) {	
		return pharmacyRootFolder+"/Inline";		
	}
	@RequestMapping(value = "/med", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {	
		return pharmacyRootFolder+"/MedicineOrder";		
	}
	
	@RequestMapping(value = "/orderMasterMedicine", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> orderMasterMedicine(@RequestBody HashMap<String, Object> orderMasterMedicine) {		
		System.out.println("FORM vAlue="+orderMasterMedicine);
		return ipharmacy.saveMasterMedicineOrder(orderMasterMedicine);
		//return null;
	}
	
	@RequestMapping(value = "/issueOrder", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> issueOrder(@RequestBody HashMap<String, Object> medicineorder) {		
		return ipharmacy.addMedicineOrder(medicineorder);
	}
	
	@RequestMapping(value = "/pharmacyMasterConfiguration", method = RequestMethod.GET)
	public String showMasterItemForm(Locale locale, Model model) {	
		return pharmacyRootFolder+"/MedicineItem";		
	}
	
		@RequestMapping(value = "/saveMasterMedicineItem", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> saveMasterMedicineItem(@RequestBody HashMap<String, Object> masterMedicineItem) {				
		return ipharmacy.saveMasterMedicineItem(masterMedicineItem);
		}
		
		@RequestMapping(value = "/updateMasterMedicineItem", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> updateMasterMedicineItem(@RequestBody HashMap<String, Object> masterMedicineItemupdate) {				
		return ipharmacy.updateMasterMedicineItem(masterMedicineItemupdate);
		}
		
		
		
		@RequestMapping(value = "/listMasterMedicineItem")
		public 	@ResponseBody HashMap<String, Object> listMasterMedicineItem(){					
		return ipharmacy.listMasterMedicineItem();
		}
		
		@RequestMapping(value = "/deleteMasterMedicineItem", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> deleteMasterMedicineItem(@RequestBody HashMap<String, Object> masterMedicineItemdelete) {				
		return ipharmacy.deleteMasterMedicineItem(masterMedicineItemdelete);
		}
		
		
		@RequestMapping(value = "/pharmacyMasterStockEntry", method = RequestMethod.GET)
		public String showPharmacyMaster(Locale locale, Model model) {	
			return pharmacyRootFolder+"/PharmacyMasterEntry";
							
		}
		
		@RequestMapping(value = "/savePharmacyMasterEntry", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> savePharmacyMasterEntry(@RequestBody HashMap<String, Object> pharmacyMasterEntry) {				
		 System.out.println("Form value="+pharmacyMasterEntry);
		 System.out.println("Inside web controller =");
		//return null;
			return ipharmacy.savePharmacyMasterEntry(pharmacyMasterEntry);
		}
		
		
		@RequestMapping(value = "/listPharmacyMasterEntry")
		public 	@ResponseBody HashMap<String, Object> listPharmacyMasterEntry(){					
		return ipharmacy.listPharmacyMasterEntry();
		}
		
		@RequestMapping(value = "/updatePharmacyMasterEntry", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> updatePharmacyMasterEntry(@RequestBody HashMap<String, Object> pharmacyMasterEntryupdate) {				
		return ipharmacy.updatePharmacyMasterEntry(pharmacyMasterEntryupdate);
		}
		
		@RequestMapping(value = "/deletePharmacyMasterEntry", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> deletePharmacyMasterEntry(@RequestBody HashMap<String, Object> pharmacyMasterEntrydelete) {				
		return ipharmacy.deletePharmacyMasterEntry(pharmacyMasterEntrydelete);
		}
		@RequestMapping(value = "/Order")
		@ResponseBody
		public org.json.simple.JSONObject addDoctorData(@RequestBody HashMap<String, Object> medicineorder)throws Exception {			
			org.json.simple.JSONObject obj = new org.json.simple.JSONObject();			
			ipharmacy.addMedicineOrder(medicineorder);
				return obj;							
		}
	 
	
		@RequestMapping(value = "/issue", method = RequestMethod.POST)
		@ResponseBody
		public org.json.simple.JSONObject addDoctorDatas(@RequestBody HashMap<String, Object> medicineorder)throws Exception {			
			org.json.simple.JSONObject obj = new org.json.simple.JSONObject();			
		
				return obj;						
		}
	 @RequestMapping(value = "/masterEntry", method = RequestMethod.GET)
		public String masterEntryShow(Locale locale, Model model) {	
		 
			return pharmacyRootFolder+"/MasterEntry";		
		}
	 
	 @RequestMapping(value = "/addMasterEntry", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> addMasterEntry(@RequestBody HashMap<String, Object> masterEntry) {						
		return ipharmacy.addMasterEntry(masterEntry);
		//return null;
		}
	 
	 @RequestMapping(value = "/listMedicineMaster")
		public 	@ResponseBody HashMap<String, Object> listMedicineMaster(){					
		 return ipharmacy.listMedicineMaster();
		}
	
	 @RequestMapping(value = "/getMedicineId")
		public 	@ResponseBody HashMap<String, Object> getMedicineId(){					
		 return ipharmacy.getMedicineId();
		}
	 
	 @RequestMapping(value = "/pharmacyRequestMedicine", method = RequestMethod.GET)
		public String PharmacyRequest(Locale locale, Model model) {	
			return pharmacyRootFolder+"/PharmacyRequestMedicine";		
		}
	 
	 @RequestMapping(value = "/medicineRequestPharmacy", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> pharmacyMedicineRequest(@RequestBody HashMap<String, Object> medicineRequest) {			
		 System.out.println("Inside pharmacyRequestMedicine  controller FROM value="+medicineRequest);			
		 return ipharmacy.pharmacyMedicineRequest(medicineRequest);
		
		}
	
	 
	 @RequestMapping(value = "/pharmacyBill", method = RequestMethod.GET)
		public String medicineBill(Locale locale, Model model) {	
			return pharmacyRootFolder+"/PharmacyBill";		
		}
	 
	 @RequestMapping(value = "/listPharamacyRequest", method = RequestMethod.GET)
		public String listPharamacyRequest(Locale locale, Model model) {	
			return pharmacyRootFolder+"/listPharamacyRequest";		
		}

	 	@RequestMapping(value = "/listPharamacyRequestDetails")
		public @ResponseBody HashMap<String, Object> listPharamacyRequestDetails(HttpSession session) {			
		return ipharmacy.listPharamacyRequestDetails();
		
		}
		
		@RequestMapping(value = "/savePharmacyBill", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> savePharmacyBill(@RequestBody HashMap<String, Object> medicineRequest) {			
		 System.out.println("Inside pharmacyRequestMedicine LIST controller FROM value="+medicineRequest);			
		return ipharmacy.savePharmacyBill(medicineRequest);		
		}
	 @RequestMapping(value = "/listPharmacyBill")
		public 	@ResponseBody HashMap<String, Object> listPharmacyBill(){					
		 return ipharmacy.listPharmacyBill();
		}
		
	 
	 @RequestMapping(value = "/expiryMedicine", method = RequestMethod.GET)
		public String medicine(Locale locale, Model model) {	
			return pharmacyRootFolder+"/ExpiryMedicine";		
		}
	 
}
