/**
 * 
 */
package com.rest.service;

import java.util.HashMap;

/**
 * @author Krishna
 *
 */
public interface RoomRestService {

	/**
	 * @param room
	 * @return
	 */
	HashMap<String, Object> addRoom(HashMap<String, Object> room);

	/**
	 * @param room
	 * @return
	 */
	HashMap<String, Object> listRoomByFilter(HashMap<String, Object> room);

	/**
	 * @param room
	 * @return
	 */
	HashMap<String, Object> getRoomDetailsByWardNumber(HashMap<String, Object> room);

	/**
	 * @param room
	 * @return
	 */
	HashMap<String, Object> addWaitingListDetails(HashMap<String, Object> room);

	/**
	 * @return
	 */
	HashMap<String, Object> listWaitingListDetails();

}
