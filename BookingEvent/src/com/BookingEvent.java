package com;

import java.sql.*;

public class BookingEvent {
	// A common method to connect to the DB
		private Connection connect() {
			Connection con = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");

				// Provide the correct details: DBServer/DBName, username, password

				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
			} catch (Exception e) {
				e.printStackTrace();
			}
			return con;
		}
		
		public String insertBookingEvent(String EventCode, String EventName, String EventType, String EventDateFrom, String EventDateTo, String CompanyOrOrganization, String DescribeTypeEvent, String AdditionalRequest)  
		{   
			String output = ""; 
			
			try   
			{    
				Connection con = connect();
				
				if (con == null)    
				{return "Error while connecting to the database for inserting BookingEvent."; }
				
				// create a prepared statement    
				String query = " insert into BookingEvent(`EventID`,`EventCode`,`EventName`,`EventType`,`EventDateFrom`, `EventDateTo`,`CompanyOrOrganization`,`DescribeTypeEvent`,`AdditionalRequest`)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
		 
				PreparedStatement preparedStmt = con.prepareStatement(query); 
				
				// binding values    
				preparedStmt.setInt(1, 0);    
				preparedStmt.setString(2, EventCode);    
				preparedStmt.setString(3, EventName);    
				preparedStmt.setString(4, EventType);    
				preparedStmt.setString(5, EventDateFrom);
				preparedStmt.setString(6, EventDateTo);
				preparedStmt.setString(7, CompanyOrOrganization);
				preparedStmt.setString(8, DescribeTypeEvent);
				preparedStmt.setString(9, AdditionalRequest);
				
				// execute the statement    
				preparedStmt.execute();    
				con.close(); 
		   
				String newBookingEvent = readBookingEvent(); 
				output =  "{\"status\":\"success\", \"data\": \"" +        
						newBookingEvent + "\"}";    
			}
			catch (Exception e)   
			{    
				output =  "{\"status\":\"error\", \"data\": \"Error while inserting the BookingEvent.\"}";  
				System.err.println(e.getMessage());   
			} 
			
		  return output;  
		}
		
		public String readBookingEvent() {
			String output = "";
			try {
				Connection con = connect();
				if (con == null) {
					return "Error while connecting to the database for reading BookingEvent.";
				}
				// Prepare the html table to be displayed
				 output = "<table border='1'><tr><th>EventCode</th><th>EventName</th><th>EventType</th><th>EventDateFrom</th><th>EventDateTo</th><th>CompanyOrOrganization</th><th>DescribeTypeEvent</th>"+ "<th>AdditionalRequest</th><th>Update</th><th>Remove</th></tr>";
				String query = "select * from BookingEvent";
				Statement stmt = (Statement) con.createStatement();
				ResultSet rs = ((java.sql.Statement) stmt).executeQuery(query);
				
				// iterate through the rows in the result set
				while (rs.next()) {
					String EventID = Integer.toString(rs.getInt("EventID"));
					String EventCode = rs.getString("EventCode");
					String EventName = rs.getString("EventName");
					String EventType = rs.getString("EventType");
					String EventDateFrom = rs.getString("EventDateFrom");
					String EventDateTo = rs.getString("EventDateTo");
					String CompanyOrOrganization = rs.getString("CompanyOrOrganization");
					String DescribeTypeEvent = rs.getString("DescribeTypeEvent");
					String AdditionalRequest = rs.getString("AdditionalRequest");
					// Add into the html table
					output += "<tr><td><input id='hidEventIDUpdate'name='hidEventIDUpdate' type='hidden'value='" + EventID + "'>" + EventCode + "</td>";
					output += "<td>" + EventName + "</td>";
					output += "<td>" + EventType + "</td>";
					output += "<td>" + EventDateFrom + "</td>";
					output += "<td>" + EventDateTo + "</td>";
					output += "<td>" + CompanyOrOrganization + "</td>";
					output += "<td>" + DescribeTypeEvent + "</td>";
					output += "<td>" + AdditionalRequest + "</td>";
					
					// buttons
					output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td><td><input name='btnRemove' type='button' value='Remove'class='btnRemove btn btn-danger' data-EventID='"+ EventID + "'>" + "</td></tr>"; 			}
				con.close();
				
				// Complete the html table
				output += "</table>";
				
				
			} catch (Exception e) {
				output = "Error while reading the BookingEvent.";
				System.err.println(e.getMessage());
			}
			return output;
		}
				
		public String updateBookingEvent(String EventID, String EventCode, String EventName, String EventType, String EventDateFrom, String EventDateTo, String CompanyOrOrganization, String DescribeTypeEvent, String AdditionalRequest){
			String output = "";
			try {
				Connection con = connect();
				if (con == null) {
					return "Error while connecting to the database for updating BookingEvent.";
				}		
				
				// create a prepared statement
				String query = "UPDATE BookingEvent SET EventCode=?,EventName=?,EventType=?,EventDateFrom=?, EventDateTo=?, CompanyOrOrganization=?, DescribeTypeEvent=?, AdditionalRequest=?  WHERE EventID=?";
				PreparedStatement preparedStmt = con.prepareStatement(query);

				// binding values
				preparedStmt.setString(1, EventCode);
				preparedStmt.setString(2, EventName);
				preparedStmt.setString(3, EventType);
				preparedStmt.setString(4, EventDateFrom);
				preparedStmt.setString(5, EventDateTo);
				preparedStmt.setString(6, CompanyOrOrganization);
				preparedStmt.setString(7, DescribeTypeEvent);
				preparedStmt.setString(8, AdditionalRequest);
				preparedStmt.setInt(9, Integer.parseInt(EventID));
				
				// execute the statement
				preparedStmt.execute();
				con.close();
				
				//output = "Updated successfully";
				
				String newBookingEvent = readBookingEvent();
				 output = "{\"status\":\"success\", \"data\": \"" +
						 newBookingEvent + "\"}"; 
				 
			} catch (Exception e) {
				output = "{\"status\":\"error\", \"data\": \"Error while updating the BookingEvent.\"}";
				 System.err.println(e.getMessage()); 
			}
			return output;
		}
		
		public String deleteBookingEvent(String EventID)  
		{   
			String output = "";
		 
			try   
			{   
				Connection con = connect(); 
				 
				if (con == null)    
				{return "Error while connecting to the database for deleting."; } 
		 
				// create a prepared statement    
				String query = "delete from BookingEvent where EventID=?"; 
		 
				PreparedStatement preparedStmt = con.prepareStatement(query); 
		 
				// binding values    
				preparedStmt.setInt(1, Integer.parseInt(EventID)); 
		 
				// execute the statement    
				preparedStmt.execute();    
				con.close(); 
		 
				String newBookingEvent = readBookingEvent();    
				output = "{\"status\":\"success\", \"data\": \"" +       
						newBookingEvent + "\"}";   
			}   
			catch (Exception e)   
			{    
				output = "Error while deleting the BookingEvent.";    
				System.err.println(e.getMessage());   
			} 
		 
			return output;  
		}
				
}
