/**
 * 
 */
package com.rest.controller;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.NurseRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class NurseRestController {
	
	@Autowired
	NurseRestService nurseRestService;
	
	@RequestMapping(value = "/listNurse", method = RequestMethod.GET)
	public @ResponseBody JSONObject listNurse() {
		return nurseRestService.listNurse();
	}
}
