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
	public @ResponseBody HashMap<String, Object> listPatient() {
		HashMap<String, Object> patient = patientRestService.listPatient();
		System.out.println(patient.get("Patient"));
		return patient;
	}
}
