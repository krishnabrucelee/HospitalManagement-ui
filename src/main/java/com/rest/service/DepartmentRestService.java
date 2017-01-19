/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface DepartmentRestService {

	/**
	 * @param department
	 * @return
	 */
	HashMap<String, Object> addDepartmentDetails(HashMap<String, Object> department);

	/**
	 * @return
	 */
	HashMap<String, Object> listDepartmentDetails();

}
