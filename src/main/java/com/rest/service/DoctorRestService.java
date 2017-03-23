/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

import org.json.simple.JSONObject;


/**
 * @author Krishna
 *
 */
public interface DoctorRestService {

	/**
	 * Create Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	public HashMap<String, Object> addDoctor(HashMap<String, Object> doctor);

	/**
	 * List Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	public HashMap<String, Object> listDoctor();

	/**
	 * Update Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	public HashMap<String, Object> updateDoctor(HashMap<String, Object> doctor);

	/**
	 * Delete Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	public HashMap<String, Object> deleteDoctor(HashMap<String, Object> doctorId);

	/**
	 * list Doctor by Id.
	 * 
	 * @param doctorId
	 * @return Doctor
	 */
	public HashMap<String, Object> listByDoctorId(HashMap<String, Object> doctorId);

	/**
	 * @return
	 */
	public HashMap<String, Object> listConsultantDetails();
}
