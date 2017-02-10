/**
 * 
 */
package com.rest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.DoctorRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class DoctorRestController {

	/**
	 * Doctor Service.
	 */
	@Autowired
	private DoctorRestService doctorRestService;

	/**
	 * Create Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/addDoctor", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addDoctor(@RequestBody HashMap<String, Object> doctor) {
		return doctorRestService.addDoctor(doctor);
	}

	@RequestMapping(value = "/listDoctor", method = RequestMethod.GET)
	public String listDoctor(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Doctor/listDoctor";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	/**
	 * List doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/listDoctorDetails")
	public @ResponseBody HashMap<String, Object> listDoctorDetails() {
		HashMap<String, Object> doctor = doctorRestService.listDoctor();
		
		return doctor;
	}
	
	/**
	 * Update Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/updateDoctor")
	public @ResponseBody HashMap<String, Object> updateDoctor(@RequestBody HashMap<String, Object> doctor) {
		return doctorRestService.updateDoctor(doctor);
	}

	/**
	 * Delete doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/deleteDoctor", method = RequestMethod.DELETE)
	public @ResponseBody HashMap<String, Object> deleteDoctor(@RequestBody HashMap<String, Object> doctorId) {
		return doctorRestService.deleteDoctor(doctorId);
	}
	
	/**
	 * list Doctor by Id.
	 * 
	 * @param Doctor
	 * @return Doctor
	 */
	@RequestMapping(value = "/listDoctorById")
	public @ResponseBody HashMap<String, Object> listByDoctorId(@RequestBody HashMap<String, Object> doctorId) {
		return doctorRestService.listByDoctorId(doctorId);
	}
}
