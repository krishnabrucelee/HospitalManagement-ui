package com.rest.service;
import java.util.HashMap;

/**
 * 
 * @author Krishna
 *
 */
public interface PatientRestService {

	/**
	 * Create Patient.
	 * 
	 * @param patient
	 * @return patient
	 */
	public HashMap<String, Object> addPatient(HashMap<String, Object> patient);

	/**
	 * List Patient.
	 * 
	 * @param patient
	 * @return patient
	 */
	public HashMap<String, Object> listPatient();

	/**
	 * Update Patient.
	 * 
	 * @param patient
	 * @return patient
	 */
	public HashMap<String, Object> updatePatient(HashMap<String, Object> patient);

	/**
	 * Delete Patient.
	 * 
	 * @param patient
	 * @return patient
	 */
	public HashMap<String, Object> deletePatient(HashMap<String, Object> patientId);

	/**
	 * @param patientId
	 * @return
	 */
	public HashMap<String, Object> listByPatientId(HashMap<String, Object> patientId);

	/**
	 * @param patient
	 * @return
	 */
	public HashMap<String, Object> createDischargeSummary(HashMap<String, Object> patient);

	/**
	 * @param patient
	 * @return
	 */
	public HashMap<String, Object> editPatientDetails(HashMap<String, Object> patient);
}
