/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface BloodBankRestService {

	/**
	 * @param bloodBank
	 * @return
	 */
	HashMap<String, Object> addBloodBankCampDetails(HashMap<String, Object> bloodBank);

	/**
	 * @param bloodBank
	 * @return
	 */
	HashMap<String, Object> addBloodBankDetails(HashMap<String, Object> bloodBank);

	/**
	 * @param bloodBank
	 * @return
	 */
	HashMap<String, Object> issueBloodDetails(HashMap<String, Object> bloodBank);

	/**
	 * @return
	 */
	HashMap<String, Object> listBloodBankCampDetails();

	/**
	 * @return
	 */
	HashMap<String, Object> listBloodRequestDetails();

}
