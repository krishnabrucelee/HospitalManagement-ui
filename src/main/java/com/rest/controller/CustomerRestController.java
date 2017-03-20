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

import com.rest.service.CustomerRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class CustomerRestController {

	@Autowired
	private CustomerRestService customerRestService;
	
	@RequestMapping(value = "/addCustomer", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Customer/addCustomer";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createCustomer", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createCustomer(@RequestBody HashMap<String, Object> patient, HttpSession session) {	
		System.out.println(patient);
		HashMap<String, Object> addCustomer = customerRestService.addCustomer(patient);
		System.out.println(addCustomer);
		return addCustomer;
	}
	
	@RequestMapping(value = "/listCustomerDetails")
	public @ResponseBody HashMap<String, Object> listCustomerDetails() {
		HashMap<String, Object> doctor = customerRestService.listCustomerDetails();
		
		return doctor;
	}
}
