package com.rest.controller;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.LabRestService;
import com.rest.service.RadiologyRestService;
/**
 * 
 * 
 * @author admin
 * 
 * showMasterLab -- Add lab Test
 * patientRequestLab -- Add Patient Lab Request
 * showLabRequest -- View All Patient Lab Request
 *
 */
@Controller
public class LabRestController {
	
	@Autowired
	LabRestService ilab;
	
	@Autowired
	RadiologyRestService radiolody;
	
	private final String labRootFolder = "Lab";
	
	
	@RequestMapping(value="/showMasterLab")
	public String showLab(Model model){
		return labRootFolder+"/LabMasterTest";
	}
	
	
	
	@RequestMapping(value = "/saveMasterLabTest", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveMasterLabTest(@RequestBody HashMap<String, Object> masterLabTest) {						
		return ilab.saveMasterLabTest(masterLabTest);
	}
	
	
	@RequestMapping(value="/showRadiology")
	public String showRadiology(Model model){
		return labRootFolder+"/Radiology";
	}
	
	@RequestMapping(value = "/saveRadiology", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveRadiology(@RequestBody HashMap<String, Object> radiology) {						
		System.out.println("Form value="+radiology);
		return radiolody.saveRadiologyTest(radiology);
	}
	@RequestMapping(value = "/listMasterLabTest")
	public @ResponseBody HashMap<String, Object> listMasterLabTest() {		
		return ilab.listMasterLabTest();
	}
	
	
	@RequestMapping(value = "/listRadiologyTest")
	public @ResponseBody HashMap<String, Object> listRadiologyTest() {		
		return radiolody.listRadiologyTest();
	}
	@RequestMapping(value = "/getMasterLabTestById", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getMasterLabTestById(@RequestBody HashMap<String, Object> masterLabTestId) {						
		return null;//ilab.saveMasterLabTest(masterLabTest);
	}
	@RequestMapping(value = "/updateMasterLabTest", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> updateMasterLabTest(@RequestBody HashMap<String, Object> masterLabTest) {						
		return ilab.saveMasterLabTest(masterLabTest);
	}
	@RequestMapping(value = "/deleteMasterLabTest", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> deleteMasterLabTest(@RequestBody HashMap<String, Object> masterLabTestId) {						
		return ilab.deleteMasterLabTest(masterLabTestId);
	}
	
	@RequestMapping(value="/showMasterReport")
	public String showMasterReport(Model model){
		return labRootFolder+"/LabMasterReport";
	}
	
	@RequestMapping(value = "/saveMasterLabReport", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveMasterLabReport(@RequestBody HashMap<String, Object> masterLabTestReport) {						
		return ilab.saveMasterLabTestReport(masterLabTestReport);				
	}
	
	@RequestMapping(value = "/getMasterLabReportId", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getMasterLabReportById(@RequestBody HashMap<String, Object> masterLabTestReportId) {						
		return  null;//ilab.saveMasterLabTestReport(masterLabTestReport);
	}
	@RequestMapping(value = "/updateMasterLabReport", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> updateMasterLabReport(@RequestBody HashMap<String, Object> masterLabTestReport) {						
		return ilab.updateMasterLabTestReport(masterLabTestReport);
	}
	
	@RequestMapping(value = "/deleteMasterLabReport", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> deleteMasterLabReportId(@RequestBody HashMap<String, Object> masterLabTestReportId) {						
		return ilab.deleteMasterLabTestReport(masterLabTestReportId);
	}
	
	@RequestMapping(value="/patientRequestLab")
	public String patientRequestLab(Model model){
		return labRootFolder+"/PatientRequestLabTest";
	}
	
	@RequestMapping(value = "/savePatientLabRequest", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> savePatientLabRequest(@RequestBody HashMap<String, Object> patientLabRequest) {						
		System.out.println("savePatientLabRequest controller="+patientLabRequest);
		//return null;
		return  ilab.savePatientLabRequest(patientLabRequest);				
	}
	
	@RequestMapping(value="/showLabRequest")
	public String showLabRequest(Model model){
		return labRootFolder+"/ShowPatientLabRequest";
	}
	
	@RequestMapping(value = "/listPatientLabRequest")
	public @ResponseBody HashMap<String, Object> listPatientLabRequest() {		
		System.out.println("listPatientLabRequest");
		return ilab.listPatientLabRequest();
	}
	
	@RequestMapping(value = "/updatePatientRequestLabTest",method=RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> updatePatientRequestLabTest(@RequestBody HashMap<String, Object> labTestReport) {		
		System.out.println("Form value="+labTestReport);
		return ilab.updatePatientRequestLabTest(labTestReport);
	}
	
}
