package com.rest.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.LeaveRestService;

@Controller
public class LeaveRestController {
	
	private final String leaveRootFolder = "Leave";
	
	@Autowired
	LeaveRestService ileaveservice;
	
	@RequestMapping(value="/showLeaveConfigPage")
	public String showFinancialForm(Model model){
		return leaveRootFolder+"/LeaveConfig";		
	}
	
	@RequestMapping(value="/employeeLeaveAction")
	public String leaveAction(Model model){
		return leaveRootFolder+"/EmployeLeave";		
	}

	@RequestMapping(value = "/saveFinancialYear", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveFinancialYear(@RequestBody HashMap<String, Object> financialYear) {								
		return ileaveservice.saveFinancialYear(financialYear);
	}
	
	
	@RequestMapping(value="/listFinancialYear")
	public @ResponseBody HashMap<String, Object> listFinancialYear(){
		return ileaveservice.listFinancialYear();
	}

	@RequestMapping(value = "/saveLeave", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveLeave(@RequestBody HashMap<String, Object> leaveData) {							
		return ileaveservice.saveLeavedata(leaveData);
	}
	
	
	@RequestMapping(value="/listLeaves")
	public @ResponseBody HashMap<String, Object> listLeave(HttpSession session){
		HashMap<String, Object> listLeaveSearch = ileaveservice.listLeavedata();
		
		if(session != null && session.getAttribute("userId") != null) {			
			listLeaveSearch.put("userId", session.getAttribute("userId"));
		}
		Integer eid = (Integer) listLeaveSearch.get("userId");
		System.out.println("Login user id="+eid);
		return listLeaveSearch;
	}
	
	@RequestMapping(value = "/saveHoliday", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveHoliday(@RequestBody HashMap<String, Object> holidayData) {						
		System.out.println("Form financial value="+holidayData);	
		return ileaveservice.saveHolydays(holidayData);
	}
	
	
	@RequestMapping(value = "/getHolidaysByTypes", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getHolidaysByTypes(@RequestBody HashMap<String, Object> holidaytype) {						
	return ileaveservice.listHoliday(holidaytype);
	}
	
	@RequestMapping(value = "/getFiscalLeaveDetails")
	public @ResponseBody HashMap<String, Object> getFiscalLeaveDetails() {						
	return ileaveservice.getFiscalBalanceEmployees();
	}
	
	@RequestMapping(value = "/deleteLeave", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> deleteLeave(@RequestBody HashMap<String, Object> leaveId) {						
			
		return ileaveservice.deleteLeavedataId(leaveId);
	}
	
	@RequestMapping(value = "/deleteHoliday", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> deleteHoliday(@RequestBody HashMap<String, Object> holidayId) {						
		System.out.println("Form holiday delete value  value="+holidayId);	
		//return null;
		return ileaveservice.deleteHolidayById(holidayId);
	}
	
	@RequestMapping(value = "/getFiscalLeaveDetailsByEmpId", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getFiscalLeaveDetailsByEmpId(@RequestBody HashMap<String, Object> fiscalBalanceByEId) {						
	return ileaveservice.getFiscalBalance(fiscalBalanceByEId);
	}
	
	@RequestMapping(value = "/listLeaveRequestBetweenDates", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> listLeaveRequestBetweenDates(@RequestBody HashMap<String, Object> leaverequest) {						
		System.out.println("Form leave request date  value="+leaverequest);
		//return null;
		return ileaveservice.listLeaveRequestBetweenDates(leaverequest);
	}
	
	
	@RequestMapping(value = "/saveleaveRequest", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveLeaveRequest(@RequestBody HashMap<String, Object> leaverequest) {						
		System.out.println("Form leave request  value="+leaverequest);	
		return ileaveservice.saveLeaveRequest(leaverequest);
	}
	
	@RequestMapping(value="/listLeaveRequest")
	public @ResponseBody HashMap<String, Object> listLeaveRequest(){
		return ileaveservice.listLeaveRequest();
	}
	
	@RequestMapping(value = "/approveLeaveByAdmin", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> approveLeaveByAdmin(@RequestBody HashMap<String, Object> selected) {						
		System.out.println("Form leave APPROVE   value="+selected);
		//return null;
		return ileaveservice.approveLeaveByAdmin(selected);
	}
	
}
