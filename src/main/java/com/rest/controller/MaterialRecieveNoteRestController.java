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

import com.rest.service.MaterialRecieveNoteRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class MaterialRecieveNoteRestController {

	@Autowired
	private MaterialRecieveNoteRestService mrnService;
	
	@RequestMapping(value = "/requestMrn", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "PurchaseOrder/requestMrn";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addMrnDetails", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addMrnDetails(@RequestBody HashMap<String, Object> mrn, HttpSession session) {	
		System.out.println(mrn);
		HashMap<String, Object> addPatient = mrnService.addMrnDetails(mrn);
		System.out.println(addPatient);
		return addPatient;
	}
}
