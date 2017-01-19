/**
 * 
 */
package com.rest.controller;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.StaffRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class StaffRestController {

	/**
	 * Staff Service.
	 */
	@Autowired
	private StaffRestService staffRestService;

	/**
	 * Create Staff.
	 * 
	 * @param staff
	 * @return staff
	 */
	@RequestMapping(value = "/createStaff", method = RequestMethod.POST)
	public String addStaff(@RequestBody HashMap<String, Object> staff) {
		System.out.println("Inside Controller");
		ModelAndView mav = new ModelAndView("staff");
		System.out.println("staff data = " + staff);
		HashMap<String, Object> staffResponse = staffRestService.addStaff(staff);
		if (staffResponse.get("status").equals("true")) {
			return "/success";
		} else {
			return "/registration";
		}
	}

//	/**
//	 * List staff.
//	 * 
//	 * @param staff
//	 * @return staff
//	 */
//	@RequestMapping(value = "/listStaff")
//	public @ResponseBody JSONObject listStaff() {
//		return staffRestService.listStaff();
//	}
//	
//	/**
//	 * Update Staff.
//	 * 
//	 * @param staff
//	 * @return staff
//	 */
//	@RequestMapping(value = "/updateStaff")
//	public @ResponseBody JSONObject updateStaff(@RequestBody JSONObject staff) {
//		return staffRestService.updateStaff(staff);
//	}
//
//	/**
//	 * Delete staff.
//	 * 
//	 * @param staff
//	 * @return staff
//	 */
//	@RequestMapping(value = "/deleteStaff", method = RequestMethod.DELETE)
//	public @ResponseBody JSONObject deleteStaff(@RequestBody JSONObject staffId) {
//		return staffRestService.deleteStaff(staffId);
//	}
}
