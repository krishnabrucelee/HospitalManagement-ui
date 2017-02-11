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

import com.rest.service.PurchaseOrderRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class PurchaseOrderRestController {

	@Autowired
	private PurchaseOrderRestService purchaseOrderService;
	
	@RequestMapping(value = "/listPurchaseOrder", method = RequestMethod.GET)
	public String listPurchaseOrder(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "PurchaseOrder/listPurchaseOrder";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addPurchaseOrder", method = RequestMethod.GET)
	public String addPurchaseOrder(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "PurchaseOrder/addPurchaseOrder";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/getItemsByDepartment")
	public @ResponseBody HashMap<String, Object> getItemsByDepartment(@RequestBody HashMap<String, Object> department, HttpSession session) {
		HashMap<String, Object> requestItemSearch = purchaseOrderService.getItemsByDepartment(department);
		System.out.println(requestItemSearch);
		return requestItemSearch;
	}
	
	@RequestMapping(value = "/addPurchaseOrderDetails")
	public @ResponseBody HashMap<String, Object> addPurchaseOrderDetails(@RequestBody HashMap<String, Object> purchase, HttpSession session) {
		HashMap<String, Object> purchaseOrderDetails = purchaseOrderService.addPurchaseOrderDetails(purchase);
		System.out.println(purchaseOrderDetails);
		return purchaseOrderDetails;
	}
	
	@RequestMapping(value = "/listPurchaseOrderDetails")
	public @ResponseBody HashMap<String, Object> listPurchaseOrderDetails() {
		HashMap<String, Object> purchaseOrderDetails = purchaseOrderService.listPurchaseOrderDetails();
		System.out.println(purchaseOrderDetails);
		return purchaseOrderDetails;
	}
}
