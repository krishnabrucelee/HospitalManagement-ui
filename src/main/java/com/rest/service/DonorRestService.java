/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface DonorRestService {

	/**
	 * @param donor
	 * @return
	 */
	HashMap<String, Object> addDonorDetails(HashMap<String, Object> donor);

	/**
	 * @return
	 */
	HashMap<String, Object> listDonorDetails();

}
