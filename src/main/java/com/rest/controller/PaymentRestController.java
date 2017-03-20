/**
 * 
 */
package com.rest.controller;

import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.service.PaymentRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class PaymentRestController {

	@Autowired
	private PaymentRestService paymentRestService;
	
	@RequestMapping(value = "/receivePayment", method = RequestMethod.GET)
	public String receivePayment(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/receivePayment";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/salesReceipt", method = RequestMethod.GET)
	public String salesReceipt(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/salesReceipt";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/expense", method = RequestMethod.GET)
	public String expense(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/expense";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/payBill", method = RequestMethod.GET)
	public String payBill(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/payBill";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/purchaseBill", method = RequestMethod.GET)
	public String purchaseBill(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/purchaseBill";
		} else {
			return "Logout/accessDenied";
		}
	} 
	
	@RequestMapping(value = "/payPurchaseBill", method = RequestMethod.GET)
	public String payPurchaseBill(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/payPurchaseBill";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listBill", method = RequestMethod.GET)
	public String listBill(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/listBill";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/invoice", method = RequestMethod.GET)
	public String invoice(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/invoice";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createPurchaseBill", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createPurchaseBill(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.createPurchaseBill(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/listPurchaseBill")
	public @ResponseBody HashMap<String, Object> listPurchaseBill(HttpSession session) {
		HashMap<String, Object> patient = paymentRestService.listPurchaseBill();
		patient.put("sessionDetails", session.getAttribute("role"));
		System.out.println(patient.get("PurchaseBill"));
		return patient;
	}
	
	@RequestMapping(value = "/getPurchaseBill", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getPurchaseBill(@RequestBody HashMap<String, Object> bill, HttpSession session) {	
		System.out.println(bill);
		HashMap<String, Object> editPatient = paymentRestService.getPurchaseBill(bill);
		System.out.println(editPatient);
		return editPatient;
	}
	
	@RequestMapping(value = "/createExpense", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createExpense(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.createExpense(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/savePurchasePayBill", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> savePurchasePayBill(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.savePurchasePayBill(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/addFinancialTransaction", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addFinancialTransaction(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.addFinancialTransaction(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/listByTransactionIdAndLastDate", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> listByTransactionIdAndLastDate(@RequestBody HashMap<String, Object> bill, HttpSession session) {	
		System.out.println(bill);
		HashMap<String, Object> editPatient = paymentRestService.listByTransactionIdAndLastDate(bill);
		System.out.println(editPatient);
		return editPatient;
	}
	
	@RequestMapping(value = "/createInvoiceDetails", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> createInvoiceDetails(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.createInvoiceDetails(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	
	@RequestMapping(value = "/listInvoiceDetails")
	public @ResponseBody HashMap<String, Object> listInvoiceDetails(HttpSession session) {
		HashMap<String, Object> patient = paymentRestService.listInvoiceDetails();
		patient.put("sessionDetails", session.getAttribute("role"));
		System.out.println(patient.get("PurchaseBill"));
		return patient;
	}
	
	@RequestMapping(value = "/addReceivePayment", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addReceivePayment(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.addReceivePayment(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/addSalesReciept", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addSalesReciept(@RequestBody HashMap<String, Object> purchase, HttpSession session) {	
		System.out.println(purchase);
		HashMap<String, Object> addPatient = paymentRestService.addSalesReciept(purchase);
		System.out.println(addPatient);
		return addPatient;
	}
	
	@RequestMapping(value = "/profitAndLossReport", method = RequestMethod.GET)
	public String profitAndLossReport(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Payment/profitAndLossReport";
		} else {
			return "Logout/accessDenied";
		}
	}
	@RequestMapping(value = "/generateFinancialReport", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> generateFinancialReport(@RequestBody HashMap<String, Object> bill, HttpSession session) {	
		System.out.println(bill);
		HashMap<String, Object> editPatient = paymentRestService.generateFinancialReport(bill);
		System.out.println(editPatient);
		return editPatient;
	}
}
