/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface LoginService {

	/**
	 * @param user
	 * @return
	 */
	HashMap<String, Object> checkLoginUser(HashMap<String,Object> user);

	/**
	 * @param object
	 * @return
	 */
	HashMap<String, Object> getDoctorDetailsByEmail(HashMap<String,Object> string);

	/**
	 * @param doctorEmail
	 * @return
	 */
	HashMap<String, Object> getNurseDetailsByEmail(HashMap<String, Object> nurseEmail);

}
