/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface PurchaseOrderRestService {

	/**
	 * @param department
	 * @return
	 */
	HashMap<String, Object> getItemsByDepartment(HashMap<String, Object> department);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> addPurchaseOrderDetails(HashMap<String, Object> purchase);

	/**
	 * @return
	 */
	HashMap<String, Object> listPurchaseOrderDetails();

	/**
	 * @return
	 */
	HashMap<String, Object> listPurchaseOrderTransactionDetails();

}
