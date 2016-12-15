/**
 * 
 */
package com.rest.service;

import org.json.simple.JSONObject;


/**
 * @author Krishna
 *
 */
public interface NurseRestService {

	/**
	 * Create Nurse.
	 * 
	 * @param nurse
	 * @return nurse
	 */
	public JSONObject addNurse(JSONObject nurse);

	/**
	 * List Nurse.
	 * 
	 * @param nurse
	 * @return nurse
	 */
	public JSONObject listNurse();

	/**
	 * Update Nurse.
	 * 
	 * @param nurse
	 * @return nurse
	 */
	public JSONObject updateNurse(JSONObject nurse);

	/**
	 * Delete Nurse.
	 * 
	 * @param nurse
	 * @return nurse
	 */
	public JSONObject deleteNurse(JSONObject nurseId);

	/**
	 * @param nurseId
	 * @return
	 */
	public JSONObject listByNurseId(JSONObject nurseId);

}
