/**
 * 
 */
package com.rest.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author Krishna
 *
 */
@Controller
public class StockRestController {

	@RequestMapping(value = "/addStock", method = RequestMethod.GET)
	public String addStock(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Stock/addStock";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listStock", method = RequestMethod.GET)
	public String listStock(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Stock/listStock";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addStockAdjustment", method = RequestMethod.GET)
	public String addStockAdjustment(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Stock/addStockAdjustment";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addPurchaseOrder", method = RequestMethod.GET)
	public String addPurchaseOrder(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Stock/addPurchaseOrder";
		} else {
			return "Logout/accessDenied";
		}
	}
}
