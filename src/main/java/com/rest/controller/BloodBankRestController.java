/**
 * 
 */
package com.rest.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.BloodBankRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class BloodBankRestController {

	@Autowired
	private BloodBankRestService bloodBankRestService;
	
	@RequestMapping(value = "/addBloodBankCamp", method = RequestMethod.GET)
	public String addBloodBankCamp(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/addBloodBankCamp";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	
	@RequestMapping(value = "/addBloodBank", method = RequestMethod.GET)
	public String addBloodBank(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/addBloodBank";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listBloodBankCamp", method = RequestMethod.GET)
	public String listBloodBankCamp(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/listBloodBankCamp";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	
	@RequestMapping(value = "/issueBlood", method = RequestMethod.GET)
	public String issueBlood(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/issueBlood";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listBloodRequest", method = RequestMethod.GET)
	public String listBloodRequest(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/listBloodRequest";
		} else {
			return "Logout/accessDenied";
		}
	}
	
//	@RequestMapping(value = "/getDoctorAvaliablities", method = RequestMethod.POST)
//	public @ResponseBody JSONObject getDoctorAvaliablities(@RequestBody JSONObject doctor) {
//		return appointmentRestService.getDoctorAvaliablities(doctor);
//	}
//	
	@RequestMapping(value = "/addBloodBankCampDetails")
	public @ResponseBody HashMap<String, Object> addBloodBankCampDetails(@RequestBody HashMap<String, Object> bloodBank) {
		HashMap<String, Object> bloodBankCamp = bloodBankRestService.addBloodBankCampDetails(bloodBank);
		return bloodBankCamp;
	}	
	
	@RequestMapping(value = "/addBloodBankDetails")
	public @ResponseBody HashMap<String, Object> addBloodBankDetails(@RequestBody HashMap<String, Object> bloodBank) {
		HashMap<String, Object> bloodBankDetails = bloodBankRestService.addBloodBankDetails(bloodBank);
		return bloodBankDetails;
	}
	
	@RequestMapping(value = "/issueBloodDetails")
	public @ResponseBody HashMap<String, Object> issueBloodDetails(@RequestBody HashMap<String, Object> bloodBank) {
		HashMap<String, Object> bloodBankDetails = bloodBankRestService.issueBloodDetails(bloodBank);
		return bloodBankDetails;
	}
	
	@RequestMapping(value = "/listBloodBankCampDetails")
	public @ResponseBody HashMap<String, Object> listBloodBankCampDetails() {
		HashMap<String, Object> doctor = bloodBankRestService.listBloodBankCampDetails();
		return doctor;
	}
	
	@RequestMapping(value = "/listBloodRequestDetails")
	public @ResponseBody HashMap<String, Object> listBloodRequestDetails() {
		HashMap<String, Object> doctor = bloodBankRestService.listBloodRequestDetails();
		return doctor;
	}
	
}
