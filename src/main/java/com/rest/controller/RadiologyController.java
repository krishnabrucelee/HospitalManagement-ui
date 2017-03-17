package com.rest.controller;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.RadiologyRestService;

@Controller
public class RadiologyController {
	
	@Autowired
	RadiologyRestService iradiologyService;
	
	@RequestMapping(value = "/listPatientRadiologyTest")
	public 	@ResponseBody HashMap<String, Object> listPatientRadiologyTest(){	
		System.out.println("call & web page return PatientRadiologyTest value");
	return iradiologyService.listPatientRadiologyTest();
	}
	
	

}
