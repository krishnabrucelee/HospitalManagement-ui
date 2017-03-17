package com.rest.service;

import java.util.HashMap;

public interface RadiologyRestService {
	
	/**
	 * Create RadiologyTest.
	 * 
	 * @param radiologyTest
	 * @return radiologyTest
	 */
	public HashMap<String, Object> saveRadiologyTest(HashMap<String, Object> radiologyTest);
	
	/**
	 * List RadiologyTest.
	 * 
	 * 
	 * @return radiology
	 */
	public HashMap<String, Object> listRadiologyTest();
	
	/**
	 * List PatientRadiologyTest.
	 * 
	 * 
	 * @return listPatientRadiologyTest
	 */
	public HashMap<String, Object> listPatientRadiologyTest();

}
