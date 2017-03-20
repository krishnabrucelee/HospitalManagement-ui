/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface AccountTypeRestService {

	/**
	 * @return
	 */
	HashMap<String, Object> getAllAccountType();

	/**
	 * @return
	 */
	HashMap<String, Object> getAllAccountDetailType();

	/**
	 * @param patient
	 * @return
	 */
	HashMap<String, Object> getAllTransactionsByAccountDetailType(HashMap<String, Object> patient);

}
