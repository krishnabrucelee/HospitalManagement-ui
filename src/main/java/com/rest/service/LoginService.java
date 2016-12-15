/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface LoginService {

	/**
	 * @param user
	 * @return
	 */
	HashMap<String, Object> checkLoginUser(HashMap<String,Object> user);

}
