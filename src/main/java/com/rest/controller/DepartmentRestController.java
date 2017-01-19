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

import com.rest.service.DepartmentRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class DepartmentRestController {

	@Autowired
	private DepartmentRestService departmentRestService;
	
	@RequestMapping(value = "/addDepartment", method = RequestMethod.GET)
	public String department(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Department/addDepartment";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addDepartmentDetails")
	public @ResponseBody HashMap<String, Object> addDepartmentDetails(@RequestBody HashMap<String, Object> department) {
		HashMap<String, Object> patient = departmentRestService.addDepartmentDetails(department);
		System.out.println(patient.get("Department"));
		return patient;
	}
	
	@RequestMapping(value = "/listDepartmentDetails")
	public @ResponseBody HashMap<String, Object> listDepartmentDetails() {
		HashMap<String, Object> patient = departmentRestService.listDepartmentDetails();
		System.out.println(patient.get("Department"));
		return patient;
	}
}
