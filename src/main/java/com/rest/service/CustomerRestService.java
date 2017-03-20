/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface CustomerRestService {

	/**
	 * @return
	 */
	HashMap<String, Object> listCustomerDetails();

	/**
	 * @param patient
	 * @return
	 */
	HashMap<String, Object> addCustomer(HashMap<String, Object> patient);

}
