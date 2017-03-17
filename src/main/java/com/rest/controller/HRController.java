package com.rest.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.HRService;

@Controller
public class HRController {
	
	private  final String hrRootFolder = "HR";
	
	@Autowired
	HRService ihrservice;
	
	@RequestMapping(value="/showSalaryConfig")
	public String SalaryConfigForm(Model model){
		return hrRootFolder+"/SalaryConfig";		
	}
	
	@RequestMapping(value = "/saveSalaryConfiguration", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> saveSalaryConfiguration(@RequestBody HashMap<String, Object> salaryconfig) {								
		System.out.println("Form value="+salaryconfig);
		return ihrservice.saveSalaryConfiguration(salaryconfig);
	}
	
	@RequestMapping(value="/listSalaryConfiguration")
	public @ResponseBody HashMap<String, Object> listSalaryConfiguration(){
		return ihrservice.listSalaryConfiguration(); 
	}
	
	@RequestMapping(value="/showSalaryConfigStaff")
	public String showSalaryConfigStaff(Model model){
		return hrRootFolder+"/SalaryConfigStaff";		
	}
	
	
	@RequestMapping(value="/showSalaryDetails")
	public String showSalaryDetails(Model model){
		return hrRootFolder+"/CreateSalary";		
	}
	
	
	@RequestMapping(value = "/generatePayrollForMonth", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createSalaryConfig(@RequestBody HashMap<String, Object> staffsalaryconfig) {								
		System.out.println("Form staffsalaryconfig  value="+staffsalaryconfig);
		
		return ihrservice.createStaffSalaryConfiguration(staffsalaryconfig);
	}
	
	@RequestMapping(value="/listMonthlySalary")
	public String listMonthlySalary(Model model){
		return hrRootFolder+"/ListMonthlySalary";		
	}
	
	/*@RequestMapping(value="/listSalaryPaySlipForMonth")
	public @ResponseBody HashMap<String, Object> listSalaryPaySlipForMonth(){
		return ihrservice.listSalaryPaySlipForMoth();
	}*/
	
	@RequestMapping(value="/showSalaryDetailsEId")
	public String getSalaryDetailsEId(Model model){
		return hrRootFolder+"/GetSalarySlip";		
	}
	
	@RequestMapping(value = "/getPayrollForMonthByEId", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getPayrollForMonthByEId(@RequestBody HashMap<String, Object> getPaySlipForMonthh) {								
		System.out.println("Form staffsalaryconfig  value="+getPaySlipForMonthh);
		//return null;
		return ihrservice.getPayrollForMonthByEId(getPaySlipForMonthh);
	}
	
	@RequestMapping(value="/showHikeBonus")
	public String showHikeBonus(Model model){
		return hrRootFolder+"/AddHikeBonus";		
	}
	
	@RequestMapping(value = "/addHikes", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addHikes(@RequestBody HashMap<String, Object> hikedata) {								
		
		return ihrservice.saveSalaryHike(hikedata);
	}
	
	@RequestMapping(value = "/createBonusAndIncentiveForStaff", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createBonusAndIncentiveForStaff(@RequestBody HashMap<String, Object> bonusdata) {								
		System.out.println("Form BONUS  value="+bonusdata);
		//return null;
		return ihrservice.saveBonus(bonusdata);
	}
}
