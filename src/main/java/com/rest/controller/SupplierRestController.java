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

import com.rest.service.StockRestService;
import com.rest.service.SupplierRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class SupplierRestController {

	@Autowired
	private SupplierRestService supplierRestService;
	
	@RequestMapping(value = "/addSupplier", method = RequestMethod.GET)
	public String addSupplier(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Supplier/addSupplier";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listSupplier", method = RequestMethod.GET)
	public String listSupplier(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Supplier/listSupplier";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createSupplier")
	public @ResponseBody HashMap<String, Object> addSupplierDetails(@RequestBody HashMap<String, Object> supplier) {
		HashMap<String, Object> supplierDetails = supplierRestService.addSupplierDetails(supplier);
		System.out.println(supplierDetails.get("Supplier"));
		return supplierDetails;
	}
	
	@RequestMapping(value = "/listSupplierDetails", method = RequestMethod.GET)
	public @ResponseBody HashMap<String, Object> listSupplierDetails() {
		HashMap<String, Object> supplierDetails = supplierRestService.listSupplierDetails();
		System.out.println(supplierDetails.get("Supplier"));
		return supplierDetails;
	}
}
