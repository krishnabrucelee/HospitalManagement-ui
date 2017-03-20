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

import com.rest.service.RoomRestService;

/**
 * @author Krishna
 *
 */
@Controller
public class RoomRestController {

	/**
	 * Room Service.
	 */
	@Autowired
	private RoomRestService roomRestService;

	/**
	 * Create Room.
	 * 
	 * @param room
	 * @return room
	 */
	@RequestMapping(value = "/addRoomDetails", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addRoom(@RequestBody HashMap<String, Object> room) {
		return roomRestService.addRoom(room);
	}

	@RequestMapping(value = "/listRoom", method = RequestMethod.GET)
	public String listRoom(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Room/listRoom";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addRoom", method = RequestMethod.GET)
	public String addRoom(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Room/addRoom";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listRoomByFilter", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> listRoomByFilter(@RequestBody HashMap<String, Object> room) {
		return roomRestService.listRoomByFilter(room);
	}
	
	@RequestMapping(value = "/getRoomDetailsByWardNumber", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> getRoomDetailsByWardNumber(@RequestBody HashMap<String, Object> room) {
		return roomRestService.getRoomDetailsByWardNumber(room);
	}
	
	
	@RequestMapping(value = "/addWaitingList", method = RequestMethod.GET)
	public String addWaitingList(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Room/addWaitingList";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/addWaitingListDetails", method = RequestMethod.POST)
	public @ResponseBody HashMap<String, Object> addWaitingListDetails(@RequestBody HashMap<String, Object> room) {
		return roomRestService.addWaitingListDetails(room);
	}
	
	@RequestMapping(value = "/listWaitingList", method = RequestMethod.GET)
	public String listWaitingList(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("role") != null) {
			return "Room/listWaitingList";
		} else {
			return "Logout/accessDenied";
		}
	}
	
	@RequestMapping(value = "/listWaitingListDetails")
	public @ResponseBody HashMap<String, Object> listWaitingListDetails() {
		return roomRestService.listWaitingListDetails();
	}
}
