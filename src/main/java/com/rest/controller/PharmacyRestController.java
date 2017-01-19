package com.rest.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
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
		return pharmacyRootFolder+"/MasterOrder";		
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
	
	 @SuppressWarnings("unchecked")
		@RequestMapping(value = "/Order")//call angular  get method getAgentFlightBooking table
		@ResponseBody
		public org.json.simple.JSONObject addDoctorData(@RequestBody HashMap<String, Object> medicineorder)throws Exception {			
			org.json.simple.JSONObject obj = new org.json.simple.JSONObject();			
			ipharmacy.addMedicineOrder(medicineorder);
				return obj;							
		}
	 
	 @SuppressWarnings("unchecked")
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
		 System.out.println("Inside addMasterEntry controller FROM value="+masterEntry);			
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
	 
	 @RequestMapping(value = "/pharmacyRequest", method = RequestMethod.GET)
		public String PharmacyRequest(Locale locale, Model model) {	
			return pharmacyRootFolder+"/PharmacyRequestMedicine";		
		}
	 
	 @RequestMapping(value = "/pharmacyMedicineRequest", method = RequestMethod.POST)
		public @ResponseBody HashMap<String, Object> pharmacyMedicineRequest(@RequestBody HashMap<String, Object> medicineRequest) {			
		 System.out.println("Inside addMasterEntry controller FROM value="+medicineRequest);			
		return ipharmacy.pharmacyMedicineRequest(medicineRequest);
		//return null;
		}
}
