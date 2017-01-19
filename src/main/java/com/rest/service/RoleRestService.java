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
public interface RoleRestService {

	/**
	 * @return
	 */
	public HashMap<String, Object> listRoleDetails();

	/**
	 * @param role
	 * @return
	 */
	public HashMap<String, Object> createRole(HashMap<String, Object> role);

}
