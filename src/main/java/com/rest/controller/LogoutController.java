/**
 * 
 */
package com.rest.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Krishna
 *
 */
@Controller
public class LogoutController {

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session){
		
		try {
			session.invalidate();			
		} catch (Exception e) {
			e.printStackTrace();			
		}
		return "redirect:/";
	}
}
