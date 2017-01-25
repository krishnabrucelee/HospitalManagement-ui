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
public class ProcumentRestController {

	@RequestMapping(value = "/listProcument", method = RequestMethod.GET)
	public String listProcument(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Procument/listProcument";
		} else {
			return "Logout/accessDenied";
		}
	}
}
