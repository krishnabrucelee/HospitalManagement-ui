/**
 * 
 */
package com.rest.controller;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.NurseRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class NurseRestController {
	
	@Autowired
	private NurseRestService nurseRestService;
	
	@RequestMapping(value = "/listNurseDetails")
	public @ResponseBody HashMap<String, Object> listNurseDetails() {
		HashMap<String, Object> doctor = nurseRestService.listNurse();
		System.out.println(doctor.get("Nurse"));
		return doctor;
	}
	
}
