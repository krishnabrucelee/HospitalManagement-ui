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

	JSONObject getDoctorAvaliablities(JSONObject doctor);

}
