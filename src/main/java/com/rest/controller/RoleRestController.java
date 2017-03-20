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

import com.rest.service.RoleRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class RoleRestController {
	
	/**
	 * Role Service.
	 */
	@Autowired
	private RoleRestService roleRestService;
	
	@RequestMapping(value = "/addRole", method = RequestMethod.GET)
	public String addRole(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Role/addRole";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createRole", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createRole(@RequestBody HashMap<String, Object> role, HttpSession session) {
	
		
		System.out.println(role);
		HashMap<String, Object> addRole= roleRestService.createRole(role);
		System.out.println(addRole);
		return role;
	}
	
	@RequestMapping(value = "/listRoleDetails")
	public @ResponseBody HashMap<String, Object> listRoleDetails() {
		HashMap<String, Object> role = roleRestService.listRoleDetails();
		System.out.println(role.get("Role"));
		return role;
	}

}
