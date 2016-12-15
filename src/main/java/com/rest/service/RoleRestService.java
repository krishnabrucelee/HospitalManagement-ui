/**
 * 
 */
package com.rest.service;

import org.json.simple.JSONObject;


/**
 * @author Krishna
 *
 */
public interface RoleRestService {

	/**
	 * Create Role.
	 * 
	 * @param role
	 * @return role
	 */
	public JSONObject addRole(JSONObject role);

	/**
	 * List Role.
	 * 
	 * @param role
	 * @return role
	 */
	public JSONObject listRole();

	/**
	 * Update Role.
	 * 
	 * @param role
	 * @return role
	 */
	public JSONObject updateRole(JSONObject role);

	/**
	 * Delete Role.
	 * 
	 * @param role
	 * @return role
	 */
	public JSONObject deleteRole(JSONObject roleId);

}
