package com.rest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.PatientRestService;

/**
 * Patient Controller.
 * 
 * @author Krishna
 *
 */
@Controller
public class PatientRestController {
	
	@Autowired
	private PatientRestService patientRestService;
	
	@RequestMapping(value = "/addPatient", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Patient/addPatient";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createPatient", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createPatient(@RequestBody HashMap<String, Object> patient, HttpSession session) {	
		System.out.println(patient);
		HashMap<String, Object> addPatient = patientRestService.addPatient(patient);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/listPatient", method = RequestMethod.GET)
	public String createHoliday(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Patient/listPatient";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listPatientDetails")
	public @ResponseBody HashMap<String, Object> listPatient(HttpSession session) {
		HashMap<String, Object> patient = patientRestService.listPatient();
		patient.put("sessionDetails", session.getAttribute("role"));
		System.out.println(patient.get("Patient"));
		return patient;
	}
	
	@RequestMapping(value = "/viewPatient", method = RequestMethod.GET)
	public String viewPatient(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Patient/viewPatient";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/editPatient", method = RequestMethod.GET)
	public String editPatient(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Patient/editPatient";
		} else {
			return "Logout/accessDenied";
		}
	} 
	
	@RequestMapping(value = "/editPatientDetails", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> editPatientDetails(@RequestBody HashMap<String, Object> patient, HttpSession session) {	
		System.out.println(patient);
		HashMap<String, Object> editPatient = patientRestService.editPatientDetails(patient);
		System.out.println(editPatient);
		return editPatient;
	}
	
	@RequestMapping(value = "/dischargeSummary", method = RequestMethod.GET)
	public String dischargeSummary(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Patient/dischargeSummary";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createDischargeSummary", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createDischargeSummary(@RequestBody HashMap<String, Object> patient, HttpSession session) {	
		System.out.println(patient);
		HashMap<String, Object> dischargeSummary = patientRestService.createDischargeSummary(patient);
		System.out.println(dischargeSummary);
		return dischargeSummary;
	}
	
	@RequestMapping(value = "/viewPatientById", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> viewPatientById(@RequestBody HashMap<String, Object> patient, HttpSession session) {
		
		System.out.println(patient.get("id"));

		HashMap<String, Object> patientSearch = patientRestService.listByPatientId(patient);
		System.out.println(patientSearch);
		if(session != null && session.getAttribute("user") != null) {			
			patientSearch.put("user", session.getAttribute("user"));
		} if (session != null && session.getAttribute("doctorDetails") != null) {
			patientSearch.put("Doctor", session.getAttribute("doctorDetails"));
		} if (session != null && session.getAttribute("nurseDetails") != null) {
				patientSearch.put("Nurse", session.getAttribute("nurseDetails"));
			}
		else {
			System.err.println("Session is Invalid. UserId Must be required to Generate PNR. Try Login again");
			patientSearch.put("status",false);
			patientSearch.put("reason","Session is Invalid. UserId Must be required to Generate PNR. Try Login again");
			return patientSearch;
		}
		return patientSearch;
	}
	
}
