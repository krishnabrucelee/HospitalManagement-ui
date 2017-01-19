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

import com.rest.service.EmrRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class EMedicalRestController {

	@Autowired
	private EmrRestService emrRestService;
	
	@RequestMapping(value = "/addEmr", method = RequestMethod.GET)
	public String addEmr(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "EMR/addEmr";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listEmr", method = RequestMethod.GET)
	public String listEmr(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "EMR/listEmr";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createEmr", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createEmr(@RequestBody HashMap<String, Object> emr, HttpSession session) {
	
		
		System.out.println(emr);
		HashMap<String, Object> addEmr = emrRestService.addEmr(emr);
		System.out.println(addEmr);
		return addEmr;
	}
}
