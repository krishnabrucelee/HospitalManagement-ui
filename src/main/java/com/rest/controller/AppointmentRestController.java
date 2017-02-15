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

import com.rest.service.AppointmentRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class AppointmentRestController {

	@Autowired
	private AppointmentRestService appointmentRestService;
	
	@RequestMapping(value = "/addAppointment", method = RequestMethod.GET)
	public String appointment(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Appointment/addAppointment";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/getDoctorAvaliablities", method = RequestMethod.POST)
	public @ResponseBody JSONObject getDoctorAvaliablities(@RequestBody JSONObject doctor) {
		return appointmentRestService.getDoctorAvaliablities(doctor);
	}
	
	@RequestMapping(value = "/addAppointmentDetails")
	public @ResponseBody HashMap<String, Object> addAppointmentDetails(@RequestBody HashMap<String, Object> appointment) {
		HashMap<String, Object> patient = appointmentRestService.addAppointmentDetails(appointment);
		return patient;
	}
	
	@RequestMapping(value = "/listAppointment", method = RequestMethod.GET)
	public String listAppointment(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Appointment/listAppointment";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listAppointmentDetails")
	public @ResponseBody HashMap<String, Object> listAppointmentDetails() {
		HashMap<String, Object> patient = appointmentRestService.listAppointmentDetails();
		System.out.println(patient.get("Appointment"));
		return patient;
	}
}
