package com.rest.service;

import java.util.HashMap;

public interface LabRestService {
	
	/**
	 * Create MasterLabTest.
	 * 
	 * @param masterLabTest
	 * @return masterLabTest
	 */
	public HashMap<String, Object> saveMasterLabTest(HashMap<String, Object> masterLabTest);
	
	/**
	 * List MasterLabTest.
	 * 
	 * 
	 * @return masterLabTest
	 */
	public HashMap<String, Object> listMasterLabTest();
	
	/**
	 * Update MasterLabTest.
	 * 
	 * @param masterLabTest
	
	 */
	public HashMap<String, Object> updateMasterLabTest(HashMap<String, Object> masterLabTest);
	/**
	 * Delete MasterLabTest.
	 * 
	 * @param masterLabTestId
	 
	 */
	public HashMap<String, Object> deleteMasterLabTest(HashMap<String, Object> masterLabTestId);
	
	
	/**
	 * Create MasterLabTestReport.
	 * 
	 * @param masterLabTestReport
	 * @return masterLabTestReport
	 */
	public HashMap<String, Object> saveMasterLabTestReport(HashMap<String, Object> masterLabTestReport);
	
	/**
	 * List MasterLabTestReport.
	 * 
	 * 
	 * @return  listmasterLabTestReport
	 */
	public HashMap<String, Object> listMasterLabTestReport();
	
	/**
	 * Update MasterLabTestReport.
	 * 
	 * @param masterLabTestReport
	
	 */
	public HashMap<String, Object> updateMasterLabTestReport(HashMap<String, Object> masterLabTestReport);
	/**
	 * Delete MasterLabTest.
	 * 
	 * @param masterLabTestReportId
	 
	 */
	public HashMap<String, Object> deleteMasterLabTestReport(HashMap<String, Object> masterLabTestReportId);
	
	/**
	 * Create PatientLabRequest.
	 * 
	 * @param patientLabRequest
	 * @return patientLabRequest
	 */
	public HashMap<String, Object> savePatientLabRequest(HashMap<String, Object> patientLabRequest);
	
	/**
	 * List PatientLabReport.
	 * 	
	 * @return patientLabReport
	 */
	public HashMap<String, Object> listPatientLabRequest();
	/**
	 * Get patientLabRequest by Id.
	 * 
	 * 
	 * @return patientLabRequestId
	 */
	
	
	public HashMap<String, Object> getPatientLabRequestById(HashMap<String, Object> patientLabRequestId);
	
	/**
	 * Create PatientLabReport.
	 * 
	 * @param patientLabReport
	 * @return patientLabReport
	 */
	public HashMap<String, Object> savePatientLabReport(HashMap<String, Object> patientLabReport);
	
	/**
	 * Get PatientLabReport.
	 * 
	 * 
	 * @return patientLabReport
	 */
	public HashMap<String, Object> getPatientLabReportById(HashMap<String, Object> patientLabReporttId);
	
	/**
	 * Update patientLabReport.
	 * 
	 * @param PatientLabReport
	 * @return patientLabReport
	 */
	public HashMap<String, Object> updatePatientLabRequest(HashMap<String, Object> patientLabRequest);
	
	/**
	 * Update patientLabReport.
	 * 
	 * @param PatientLabReport
	 * @return patientLabReport
	 */
	
	public HashMap<String, Object> updatePatientRequestLabTest(HashMap<String, Object> labTestReport);
	
	
}
