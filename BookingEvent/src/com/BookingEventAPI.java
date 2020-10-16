package com;


import java.io.IOException;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingEventAPI
 */
@WebServlet("/BookingEventAPI")

public class BookingEventAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BookingEvent BookingEventObj = new BookingEvent();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	public BookingEventAPI() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String output = BookingEventObj.insertBookingEvent(request.getParameter("EventCode"), request.getParameter("EventName"), request.getParameter("EventType"), 
		request.getParameter("EventDateFrom"), request.getParameter("EventDateTo"),request.getParameter("CompanyOrOrganization"), request.getParameter("DescribeTypeEvent"), request.getParameter("AdditionalRequest"));
		response.getWriter().write(output);
	}
	
	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String output = BookingEventObj.updateBookingEvent(paras.get("hidEventIDSave").toString(),
				paras.get("EventCode").toString(),
				 paras.get("EventName").toString(),
				paras.get("EventType").toString(),
				paras.get("EventDateFrom").toString(),
				paras.get("EventDateTo").toString(),
				paras.get("CompanyOrOrganization").toString(),
				paras.get("DescribeTypeEvent").toString(),
				paras.get("AdditionalRequest").toString()); 
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		 String output = BookingEventObj.deleteBookingEvent(paras.get("EventID").toString());
		response.getWriter().write(output); 
	}
	
	// Convert request parameters to a Map
			private static Map getParasMap(HttpServletRequest request) {
				Map<String, String> map = new HashMap<String, String>();
				try {
					Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
					String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
					scanner.close();
					String[] params = queryString.split("&");
					for (String param : params) {
						String[] p = param.split("=");
						map.put(p[0], p[1]);
					}
				} catch (Exception e) {
				}
				return map;
			}
	
}
