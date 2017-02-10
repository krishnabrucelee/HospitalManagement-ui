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
public interface StaffRestService {

	/**
	 * Create Staff.
	 * 
	 * @param staff
	 * @return staff
	 */
	public HashMap<String, Object> addStaff(HashMap<String, Object> staff);

	/**
	 * List Staff.
	 * 
	 * @param staff
	 * @return staff
	 */
	public HashMap<String, Object> listStaff();
//
//	/**
//	 * Update Staff.
//	 * 
//	 * @param staff
//	 * @return staff
//	 */
//	public JSONObject updateStaff(JSONObject staff);
//
//	/**
//	 * Delete Staff.
//	 * 
//	 * @param staff
//	 * @return staff
//	 */
//	public JSONObject deleteStaff(JSONObject staffId);

}
