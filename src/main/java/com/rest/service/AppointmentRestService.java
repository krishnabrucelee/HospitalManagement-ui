/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface AppointmentRestService {

	/**
	 * @param appointment
	 * @return
	 */
	HashMap<String, Object> addAppointmentDetails(HashMap<String, Object> appointment);

	/**
	 * @return
	 */
	HashMap<String, Object> listAppointmentDetails();

}
