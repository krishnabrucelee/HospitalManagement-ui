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

import com.rest.service.StockMedicineRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class StockMedicineRestController {

	@Autowired
	private StockMedicineRestService stockMedicineRestService;
	
	@RequestMapping(value = "/addStockMedicine", method = RequestMethod.GET)
	public String stockMedicine(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "StockMedicine/addStockMedicine";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/createStockMedicine")
	public @ResponseBody HashMap<String, Object> addStockMedicineDetails(@RequestBody HashMap<String, Object> stockMedicine) {
		HashMap<String, Object> patient = stockMedicineRestService.addStockMedicineDetails(stockMedicine);
		System.out.println(patient.get("StockMedicine"));
		return patient;
	}
	
	@RequestMapping(value = "/listStockMedicine", method = RequestMethod.GET)
	public String listStockMedicine(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "StockMedicine/listStockMedicine";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listStockMedicineDetails")
	public @ResponseBody HashMap<String, Object> listStockMedicineDetails(HttpSession session) {
		HashMap<String, Object> stock = stockMedicineRestService.listStockMedicineDetails();
		System.out.println(stock.get("StockMedicine"));
		return stock;
	}
	
	@RequestMapping(value = "/adjustStockMedicine")
	public @ResponseBody HashMap<String, Object> adjustStockMedicine(@RequestBody HashMap<String, Object> stockMedicine) {
		HashMap<String, Object> patient = stockMedicineRestService.adjustStockMedicine(stockMedicine);
		System.out.println(patient.get("StockMedicine"));
		return patient;
	}
	
	@RequestMapping(value = "/getStockMedicineById")
	public @ResponseBody HashMap<String, Object> getStockMedicineById(@RequestBody HashMap<String, Object> stockMedicineId) {
		HashMap<String, Object> patient = stockMedicineRestService.getStockMedicineById(stockMedicineId);
		System.out.println(patient.get("StockMedicine"));
		return patient;
	}
}
