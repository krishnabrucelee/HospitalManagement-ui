/**
 * 
 */
package com.rest.service;

import java.util.HashMap;


/**
 * @author Krishna
 *
 */
public interface MaterialRecieveNoteRestService {

	/**
	 * @param mrn
	 * @return
	 */
	HashMap<String, Object> addMrnDetails(HashMap<String, Object> mrn);

	/**
	 * @return
	 */
	HashMap<String, Object> listMrnDetails();

	/**
	 * @param patient
	 * @return
	 */
	HashMap<String, Object> getMrnByPurchaseId(HashMap<String, Object> patient);

}
