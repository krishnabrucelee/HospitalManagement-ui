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

import com.rest.service.AppointmentRestService;
import com.rest.service.BillingChartRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class BillingChartRestController {

	@Autowired
	private BillingChartRestService billingChartRestService;
	
	@RequestMapping(value = "/addBillingChart", method = RequestMethod.GET)
	public String addBillingChart(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Billing/addBillingChart";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createBillingChart")
	public @ResponseBody HashMap<String, Object> createBillingChart(@RequestBody HashMap<String, Object> billing) {
		HashMap<String, Object> patient = billingChartRestService.createBillingChart(billing);
		System.out.println(patient.get("Billing"));
		return patient;
	}
}
