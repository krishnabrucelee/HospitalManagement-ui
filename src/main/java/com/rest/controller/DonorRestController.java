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

import com.rest.service.BloodBankRestService;
import com.rest.service.DonorRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class DonorRestController {

	@Autowired
	private DonorRestService donorRestService;
	
	@RequestMapping(value = "/addDonor", method = RequestMethod.GET)
	public String addDonor(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/addDonor";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listDonor", method = RequestMethod.GET)
	public String listDonor(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "BloodBank/listDonor";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addDonorDetails")
	public @ResponseBody HashMap<String, Object> addDonorDetails(@RequestBody HashMap<String, Object> donor) {
		HashMap<String, Object> donorDetails = donorRestService.addDonorDetails(donor);
		return donorDetails;
	}
	
	@RequestMapping(value = "/listDonorDetails")
	public @ResponseBody HashMap<String, Object> listDonorDetails() {
		HashMap<String, Object> donorDetails = donorRestService.listDonorDetails();
		return donorDetails;
	}
}
