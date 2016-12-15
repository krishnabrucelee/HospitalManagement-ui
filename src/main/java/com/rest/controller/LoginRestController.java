/**
 * 
 */
package com.rest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.rest.service.LoginService;

/**
 * @author Krishna
 *
 */
@Controller
public class LoginRestController {

	@Autowired
	private LoginService loginService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "login";
	}
	
	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public String checkLogin(@RequestParam HashMap<String,Object> user, HttpSession session) {
		System.out.println(user);

		HashMap<String, Object> login = loginService.checkLoginUser(user);
		System.out.println(login);
		if (login.get("user") != null) {
			HashMap<String, Object> userMap = login;
			
			
			ArrayList<HashMap<String, Object>> usersList = (ArrayList<HashMap<String, Object>>) userMap.get("user");
			
			for (HashMap<String, Object> hasRole : usersList) {
				session.setAttribute("userId", hasRole.get("userId"));
				 session.setAttribute("email", hasRole.get("userEmail"));
				 session.setAttribute("name", hasRole.get("userName"));
				 session.setAttribute("type", hasRole.get("professionType"));
				
				System.out.println("Role is : " + hasRole.get("role"));
				session.setAttribute("role", hasRole.get("role"));
				
				
				if (hasRole.containsKey("role")) {
					HashMap<String, Object> role = (HashMap<String, Object>) hasRole.get("role");
					
					ArrayList<HashMap<String, Object>> roleList = (ArrayList<HashMap<String, Object>>) role.get("permissionList");

					session.setAttribute("roleList", roleList);
					
					/*for (HashMap<String, Object> hasPermission : roleList) {
						System.out.println("permission is : " + hasPermission.get("action") + " for module " + hasPermission.get("module"));
						session.setAttribute("permission", hasPermission.get("action"));
						session.setAttribute("module", hasPermission.get("module"));
					}*/
				}
			}
		}
		// Userr userStatus =null;
		// try {
		//
		// userStatus = flightBookingService.checkLogin(email, password);
		//
		// if(userStatus != null)
		// {
		// session.setAttribute("userid", userStatus.getUser_id());
		// session.setAttribute("email", userStatus.getEmail());
		// session.setAttribute("name", userStatus.getFirstname() + "
		// "+userStatus.getLastname());
		// session.setAttribute("type", userStatus.getUserType());
		// List<ModuleWiseUser> mowiseuser =
		// getUserAssignedBytype(userStatus.getUser_id());
		// if(mowiseuser != null && !mowiseuser.isEmpty())
		// {
		// session.setAttribute("module_usertype",mowiseuser);
		// }
		//
		// }
		// } catch (Exception e) {
		// e.printStackTrace();
		// }
		// if ((userStatus != null) &&
		// (userStatus.getUserType().equals("admin"))) {
		//
		// return "redirect:/adminHome";
		// }
		// if ((userStatus != null)&&
		// (userStatus.getUserType().equals("employee"))) {
		//
		// return"redirect:/employeeHome";
		// }
		// if ((userStatus != null)&&
		// (userStatus.getUserType().equals("customer"))) {
		//
		// return "redirect:/customerhome";
		// }
		// if ((userStatus != null)&&
		// (userStatus.getUserType().equals("agent"))) {
		// AgentApproval status =
		// flightBookingService.getApprovalStatus(userStatus.getUser_id());
		// boolean apstatus = status.isApprovalstatus();
		// System.out.println("Status="+apstatus);
		// session.setAttribute("status", status.isApprovalstatus());
		// if (apstatus) {
		// return "redirect:/agenthome";
		// } else {
		// session.invalidate();
		// return "redirect:/agentnotapproved";
		// }
		//
		// }
		// else {
		// m.addFlashAttribute("error","Either User name or Password is wrong");
		// }
		return "home";
	}
}
