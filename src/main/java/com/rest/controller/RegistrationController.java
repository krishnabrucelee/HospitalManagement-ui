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
public class RegistrationController {

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String registration(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Registration/registration";
		} else {
			return "Logout/accessDenied";
		}
	}
}
