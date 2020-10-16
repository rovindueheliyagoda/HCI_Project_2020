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
 * Servlet implementation class RequestEventAPI
 */
@WebServlet("/RequestEventAPI")

public class RequestEventAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RequestEvent RequestEventObj = new RequestEvent();
    
	/**
     * @see HttpServlet#HttpServlet()
     */
    public RequestEventAPI() {
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
		String output = RequestEventObj.insertRequestEvent(request.getParameter("RequestCode"), request.getParameter("FullName"),
				request.getParameter("Email"),request.getParameter("ContactNumber"),request.getParameter("NumberOfGuest"),
				request.getParameter("AccommodationFacilities"),request.getParameter("Messages"));
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
    protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String output = RequestEventObj.updateRequestEvent(paras.get("hidRequestIDSave").toString(),
				paras.get("RequestCode").toString(),
				 paras.get("FullName").toString(),
				paras.get("Email").toString(),
				paras.get("ContactNumber").toString(),
				paras.get("NumberOfGuest").toString(),
				paras.get("AccommodationFacilities").toString(),
				paras.get("Messages").toString()); 
		response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
    protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		 String output = RequestEventObj.deleteRequestEvent(paras.get("RequestID").toString());
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
