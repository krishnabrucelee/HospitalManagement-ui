package com.rest.service;

import java.util.HashMap;

public interface HRService {
	
	/**
	 * Create SalaryConfiguration.
	 * 
	 * @param salaryconfig
	 * 
	 */
	public HashMap<String, Object> saveSalaryConfiguration(HashMap<String, Object> salaryconfig);
	
	/**
	 * List SalaryConfiguration.
	 * 
	 * 
	 * @return financialYearList
	 */
	public HashMap<String, Object> listSalaryConfiguration();
	
	/**
	 * Update SalaryConfiguration.
	 * 
	 * @param salaryconfig
	
	 */
	public HashMap<String, Object> updateSalaryConfiguration(HashMap<String, Object> salaryconfig);
	/**
	 * Delete SalaryConfiguration.
	 * 
	 * @param salaryconfig
	 
	 */
	public HashMap<String, Object> deleteSalaryConfigurationId(HashMap<String, Object> salaryconfig);
	/**
	 * Create SalaryCreationForMonthAllEmployee.
	 * 
	 * @param salaryconfig
	 * 
	 */
	public HashMap<String, Object> createStaffSalaryConfiguration(HashMap<String, Object> staffsalaryconfig);
	
	/**
	 * List MonthSalaryPaySlipAllEmployee.
	 * 
	 * @return salarydetailsallemplyee
	 * 
	 */
	public HashMap<String, Object> listSalaryPaySlipForMoth();
	
	/**
	 * Get MonthSalaryPaySlipForOneEmployee.
	 * 
	 * @return salarydetailsforemplyee
	 * 
	 */
	public HashMap<String, Object> getPayrollForMonthByEId(HashMap<String, Object> getPaySlipForMonthh);
	
	/**
	 * Create SalaryHike.
	 * 
	 * @param hikedata
	 * 
	 */
	public HashMap<String, Object> saveSalaryHike(HashMap<String, Object> hikedata);
	
	/**
	 * Create Bonus.
	 * 
	 * @param bonusdata
	 * 
	 */
	public HashMap<String, Object> saveBonus(HashMap<String, Object> bonusdata);

}
