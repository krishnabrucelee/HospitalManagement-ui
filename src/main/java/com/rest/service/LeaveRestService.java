package com.rest.service;

import java.util.HashMap;

public interface LeaveRestService {
	

	/**
	 * Create FinancialYear.
	 * 
	 * @param financialYear
	 * 
	 */
	public HashMap<String, Object> saveFinancialYear(HashMap<String, Object> financialYear);
	
	/**
	 * List FinancialYear.
	 * 
	 * 
	 * @return financialYearList
	 */
	public HashMap<String, Object> listFinancialYear();
	
	/**
	 * Update FinancialYear.
	 * 
	 * @param masterLabTest
	
	 */
	public HashMap<String, Object> updateFinancialYear(HashMap<String, Object> financialYear);
	/**
	 * Delete FinancialYear.
	 * 
	 * @param masterLabTestId
	 
	 */
	public HashMap<String, Object> deleteFinancialYearId(HashMap<String, Object> financialYearId);
	
	/**
	 * Create Leavedata.
	 * 
	 * @param leaveData
	 * 
	 */
	public HashMap<String, Object> saveLeavedata(HashMap<String, Object> leaveData);
	
	/**
	 * List Leavedata.
	 * 
	 * 
	 * @return leaveDataList
	 */
	public HashMap<String, Object> listLeavedata();
	
	/**
	 * Update Leavedata.
	 * 
	 * @param leaveData
	
	 */
	public HashMap<String, Object> updateLeavedata(HashMap<String, Object> leavedata);
	/**
	 * Delete Leavedata.
	 * 
	 * @param leaveDataId
	 
	 */
	public HashMap<String, Object> deleteLeavedataId(HashMap<String, Object> leaveId);
	
	
	/**
	 * Create Holiday.
	 * 
	 * @param holidayData
	 * 
	 */
	public HashMap<String, Object> saveHolydays(HashMap<String, Object> holidayData);
	
	/**
	 * List Holiday.
	 * 
	 * 
	 * @return holidayList
	 */
	public HashMap<String, Object> listHoliday(HashMap<String, Object> holidaytype);
	
	/**
	 * Update Holiday.
	 * 
	 * @param leaveData
	
	 */
	public HashMap<String, Object> updateHoliday(HashMap<String, Object> holiday);
	/**
	 * Delete Holiday.
	 * 
	 * @param holidayId
	 
	 */
	public HashMap<String, Object> deleteHolidayById(HashMap<String, Object> holidayId);
	
	/**
	 * List FiscalLeaveBalanceEmployeeId.
	 * 	
	 * @return fiscalLeaveBalanceList.
	 */
	public HashMap<String, Object> getFiscalBalanceEmployees();
	
	/**
	 * List FiscalLeaveBalance.
	 * 
	 * @param fiscalLeaveBalanceEId.
	 * @return fiscalLeaveBalanceList.
	 */
	public HashMap<String, Object> getFiscalBalance(HashMap<String, Object> fiscalBalanceByEId);
	/**
	 * Create LeaveRequest.
	 * 
	 * @param leaveRequest
	 * 
	 */
	public HashMap<String, Object> saveLeaveRequest(HashMap<String, Object> leaverequest);
	
	/**
	 * List LeaveRequest.
	 * 
	 * @param leaveRequest
	 * 
	 */
	public HashMap<String, Object> listLeaveRequestBetweenDates(HashMap<String, Object> leaverequest);
	
	/**
	 * List LeaveRequest.
	 * 
	 * @return leaveRequest
	 * 
	 */
	public HashMap<String, Object> listLeaveRequest();
	/**
	 * Approve LeaveRequest.
	 * 
	 * @param leaveRequest
	 * 
	 */
	public HashMap<String, Object> approveLeaveByAdmin(HashMap<String, Object> selected);
	

}
