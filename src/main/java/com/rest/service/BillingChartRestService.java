/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface BillingChartRestService {

	/**
	 * @param billing
	 * @return
	 */
	HashMap<String, Object> createBillingChart(HashMap<String, Object> billing);

}
