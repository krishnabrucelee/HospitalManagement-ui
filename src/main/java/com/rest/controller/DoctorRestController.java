/**
 * 
 */
package com.rest.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rest.service.DoctorRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class DoctorRestController {

	/**
	 * Doctor Service.
	 */
	@Autowired
	private DoctorRestService doctorRestService;

	/**
	 * Create Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/addDoctor", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addDoctor(@RequestBody HashMap<String, Object> doctor) {
		return doctorRestService.addDoctor(doctor);
	}

	/**
	 * List doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/listDoctor")
	public ModelAndView listDoctor(HttpSession session) {
		ModelAndView model = new ModelAndView("listDoctor");
		HashMap<String, Object> doctor = doctorRestService.listDoctor();
		model.addObject("doctor", doctor.get("Doctor"));
		System.out.println(doctor.get("Doctor"));
		
		if (doctor.containsKey("Doctor")) {
			ArrayList<HashMap<String, Object>> doctorsList = (ArrayList<HashMap<String, Object>>) doctor.get("Doctor");

			for (HashMap<String, Object> hasRole : doctorsList) {
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
		
		model.addObject(session);
		return model;
	}
	
	/**
	 * Update Doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/updateDoctor")
	public @ResponseBody HashMap<String, Object> updateDoctor(@RequestBody HashMap<String, Object> doctor) {
		return doctorRestService.updateDoctor(doctor);
	}

	/**
	 * Delete doctor.
	 * 
	 * @param doctor
	 * @return doctor
	 */
	@RequestMapping(value = "/deleteDoctor", method = RequestMethod.DELETE)
	public @ResponseBody HashMap<String, Object> deleteDoctor(@RequestBody HashMap<String, Object> doctorId) {
		return doctorRestService.deleteDoctor(doctorId);
	}
	
	/**
	 * list Doctor by Id.
	 * 
	 * @param Doctor
	 * @return Doctor
	 */
	@RequestMapping(value = "/listDoctorById")
	public @ResponseBody HashMap<String, Object> listByDoctorId(@RequestBody HashMap<String, Object> doctorId) {
		return doctorRestService.listByDoctorId(doctorId);
	}
}
