/**
 * 
 */
package com.rest.controller;

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

import com.rest.service.SurgeryRoomRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class SurgeryRoomRestController {

	@Autowired
	private SurgeryRoomRestService surgeryRoomRestService; 
	
	@RequestMapping(value = "/addSurgeryRoom", method = RequestMethod.GET)
	public String addSurgeryRoom (Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Surgery/addSurgeryRoom";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addSurgeryRoomDetails")
	public @ResponseBody HashMap<String, Object> addSurgeryRoomDetails(@RequestBody HashMap<String, Object> surgery, HttpSession session) {
		HashMap<String, Object> surgeryDetails = surgeryRoomRestService.addSurgeryRoomDetails(surgery);
		System.out.println(surgeryDetails);
		return surgeryDetails;
	}
	
	@RequestMapping(value = "/addSurgery", method = RequestMethod.GET)
	public String addSurgery (Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Surgery/addSurgery";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addSurgeryDetails")
	public @ResponseBody HashMap<String, Object> addSurgeryDetails(@RequestBody HashMap<String, Object> surgery, HttpSession session) {
		HashMap<String, Object> surgeryDetails = surgeryRoomRestService.addSurgeryDetails(surgery);
		System.out.println(surgeryDetails);
		return surgeryDetails;
	}
	
	@RequestMapping(value = "/listSurgeryRoomDetails")
	public @ResponseBody HashMap<String, Object> listSurgeryRoom() {
		HashMap<String, Object> doctor = surgeryRoomRestService.listSurgeryRoom();
		System.out.println(doctor.get("SurgeryRoom"));
		return doctor;
	}
	
}
