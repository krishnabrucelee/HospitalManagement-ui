/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface SupplierRestService {

	/**
	 * @param supplier
	 * @return
	 */
	HashMap<String, Object> addSupplierDetails(HashMap<String, Object> supplier);

}
