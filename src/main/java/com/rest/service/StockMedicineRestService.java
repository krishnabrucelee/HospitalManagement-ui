/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface StockMedicineRestService {

	/**
	 * @param stockMedicine
	 * @return
	 */
	HashMap<String, Object> addStockMedicineDetails(HashMap<String, Object> stockMedicine);

	/**
	 * @return
	 */
	HashMap<String, Object> listStockMedicineDetails();

	/**
	 * @param stockMedicine
	 * @return
	 */
	HashMap<String, Object> adjustStockMedicine(HashMap<String, Object> stockMedicine);

	/**
	 * @param stockMedicineId
	 * @return
	 */
	HashMap<String, Object> getStockMedicineById(HashMap<String, Object> stockMedicineId);

}
