/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface PaymentRestService {

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> createPurchaseBill(HashMap<String, Object> purchase);

	/**
	 * @return
	 */
	HashMap<String, Object> listPurchaseBill();

	/**
	 * @param bill
	 * @return
	 */
	HashMap<String, Object> getPurchaseBill(HashMap<String, Object> bill);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> createExpense(HashMap<String, Object> purchase);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> savePurchasePayBill(HashMap<String, Object> purchase);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> addFinancialTransaction(HashMap<String, Object> purchase);

	/**
	 * @param bill
	 * @return
	 */
	HashMap<String, Object> listByTransactionIdAndLastDate(HashMap<String, Object> bill);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> createInvoiceDetails(HashMap<String, Object> purchase);

	/**
	 * @return
	 */
	HashMap<String, Object> listInvoiceDetails();

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> addReceivePayment(HashMap<String, Object> purchase);

	/**
	 * @param purchase
	 * @return
	 */
	HashMap<String, Object> addSalesReciept(HashMap<String, Object> purchase);

	/**
	 * @param bill
	 * @return
	 */
	HashMap<String, Object> generateFinancialReport(HashMap<String, Object> bill);

	/**
	 * @return
	 */
	HashMap<String, Object> listReceivePaymentDetails();

}
