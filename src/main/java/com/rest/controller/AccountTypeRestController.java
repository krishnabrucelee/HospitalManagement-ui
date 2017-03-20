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

import com.rest.service.AccountTypeRestService;
import com.rest.service.AppointmentRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class AccountTypeRestController {

	@Autowired
	private AccountTypeRestService accountTypeRestService;
	
	@RequestMapping(value = "/getAllAccountType")
	public @ResponseBody HashMap<String, Object> getAllAccountType(HttpSession session) {
		HashMap<String, Object> patient = accountTypeRestService.getAllAccountType();
		return patient;
	}

	@RequestMapping(value = "/getAllAccountDetailType")
	public @ResponseBody HashMap<String, Object> getAllAccountDetailType(HttpSession session) {
		HashMap<String, Object> patient = accountTypeRestService.getAllAccountDetailType();
		return patient;
	}
	
	@RequestMapping(value = "/chartOfAccounts", method = RequestMethod.GET)
	public String listChartAccounts(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Account/listChartAccounts";
		} else {
			return "Logout/accessDenied";
		}
	}  
	
	@RequestMapping(value = "/accountHistory", method = RequestMethod.GET)
	public String accountHistory(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Account/accountHistory";
		} else {
			return "Logout/accessDenied";
		}
	} 
	
	@RequestMapping(value = "/getAllTransactionsByAccountDetailType", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getAllTransactionsByAccountDetailType(@RequestBody HashMap<String, Object> patient, HttpSession session) {
		
		System.out.println(patient.get("id"));

		HashMap<String, Object> patientSearch = accountTypeRestService.getAllTransactionsByAccountDetailType(patient);
		System.out.println(patientSearch);
		return patientSearch;
	}
}
