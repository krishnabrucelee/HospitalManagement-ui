/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface SurgeryRoomRestService {

	/**
	 * @param surgery
	 * @return
	 */
	HashMap<String, Object> addSurgeryRoomDetails(HashMap<String, Object> surgery);

	/**
	 * @return
	 */
	HashMap<String, Object> listSurgeryRoom();

	/**
	 * @param surgery
	 * @return
	 */
	HashMap<String, Object> addSurgeryDetails(HashMap<String, Object> surgery);

	/**
	 * @return
	 */
	HashMap<String, Object> listSurgeryDetails();

}
