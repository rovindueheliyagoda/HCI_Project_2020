package com;

import java.sql.*;

public class RequestEvent {
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
		
		public String insertRequestEvent(String RequestCode, String FullName, String Email, String ContactNumber, String NumberOfGuest, String AccommodationFacilities, String Messages)  
		{   
			String output = ""; 
		 
			try   
			{    
				Connection con = connect(); 
		 
				if (con == null)    
				{return "Error while connecting to the database for inserting RequestEvent."; } 
		       
				// create a prepared statement    
				String query = " insert into RequestEvent(`RequestID`,`RequestCode`,`FullName`,`Email`,`ContactNumber`, `NumberOfGuest`, `AccommodationFacilities`, `Messages`)" + " values (?, ?, ?, ?, ?, ?, ?, ?)"; 
		 
				PreparedStatement preparedStmt = con.prepareStatement(query); 
		 
				// binding values    
				preparedStmt.setInt(1, 0);    
				preparedStmt.setString(2, RequestCode);    
				preparedStmt.setString(3, FullName);    
				preparedStmt.setString(4, Email);    
				preparedStmt.setString(5, ContactNumber);
				preparedStmt.setString(6, NumberOfGuest);
				preparedStmt.setString(7, AccommodationFacilities);
				preparedStmt.setString(8, Messages);
				
				// execute the statement    
				preparedStmt.execute();    
				con.close(); 
		   
				String newRequestEvent = readRequestEvent(); 
				output =  "{\"status\":\"success\", \"data\": \"" +        
						newRequestEvent + "\"}";    
			}
			catch (Exception e)   
			{    
				output =  "{\"status\":\"error\", \"data\": \"Error while inserting the RequestEvent.\"}";  
				System.err.println(e.getMessage());   
			} 
			
		  return output;  
		}
		
		public String readRequestEvent() {
			String output = "";
			try {
				Connection con = connect();
				if (con == null) {
					return "Error while connecting to the database for reading RequestEvent.";
				}
				// Prepare the html table to be displayed
				 output = "<table border='1'><tr><th>RequestCode</th><th>FullName</th><th>Email</th><th>ContactNumber</th><th>NumberOfGuest</th><th>AccommodationFacilities</th>"+ "<th>Messages</th><th>Update</th><th>Remove</th></tr>";
				String query = "select * from RequestEvent";
				Statement stmt = (Statement) con.createStatement();
				ResultSet rs = ((java.sql.Statement) stmt).executeQuery(query);
				
				// iterate through the rows in the result set
				while (rs.next()) {
					String RequestID = Integer.toString(rs.getInt("RequestID"));
					String RequestCode = rs.getString("RequestCode");
					String FullName = rs.getString("FullName");
					String Email = rs.getString("Email");
					String ContactNumber = rs.getString("ContactNumber");
					String NumberOfGuest = rs.getString("NumberOfGuest");
					String AccommodationFacilities = rs.getString("AccommodationFacilities");
					String Messages = rs.getString("Messages");
					// Add into the html table
					output += "<tr><td><input id='hidRequestIDUpdate'name='hidRequestIDUpdate' type='hidden'value='" + RequestID + "'>" + RequestCode + "</td>";
					output += "<td>" + FullName + "</td>";
					output += "<td>" + Email + "</td>";
					output += "<td>" + ContactNumber + "</td>";
					output += "<td>" + NumberOfGuest + "</td>";
					output += "<td>" + AccommodationFacilities + "</td>";
					output += "<td>" + Messages + "</td>";
					
					// buttons
					output += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td><td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger'  data-RequestID='"+ RequestID + "'>" + "</td></tr>"; 			}
				con.close();
				
				// Complete the html table
				output += "</table>";
				
			} catch (Exception e) {
				output = "Error while reading the RequestEvent.";
				System.err.println(e.getMessage());
			}
			return output;
		}
		
		   public String updateRequestEvent(String RequestID, String RequestCode, String FullName, String Email, String ContactNumber, String NumberOfGuest, String AccommodationFacilities, String Messages ) {
			String output = "";
			try {
				Connection con = connect();
				if (con == null) {
					return "Error while connecting to the database for updating RequestEvent.";
				}
			
				// create a prepared statement
				String query = "UPDATE RequestEvent SET RequestCode=?,FullName=?,Email=?,ContactNumber=?, NumberOfGuest=?, AccommodationFacilities=?, Messages=?  WHERE RequestID=?";
				PreparedStatement preparedStmt = con.prepareStatement(query);

				// binding values
				preparedStmt.setString(1, RequestCode);
				preparedStmt.setString(2, FullName);
				preparedStmt.setString(3, Email);
				preparedStmt.setString(4, ContactNumber);
				preparedStmt.setString(5, NumberOfGuest);
				preparedStmt.setString(6, AccommodationFacilities);
				preparedStmt.setString(7, Messages);
				preparedStmt.setInt(8, Integer.parseInt(RequestID));
				

				// execute the statement
				preparedStmt.execute();
				con.close();
				
				//output = "Updated successfully";
				
				String newRequestEvent = readRequestEvent();
				 output = "{\"status\":\"success\", \"data\": \"" +
						 newRequestEvent + "\"}"; 
				
			} catch (Exception e) {
				output = "{\"status\":\"error\", \"data\": \"Error while updating the newRequestEvent.\"}";
				 System.err.println(e.getMessage()); 
			}
			return output;
		}
		   
		   public String deleteRequestEvent(String RequestID)  
			{   
				String output = ""; 
			 
				try   
				{    
					Connection con = connect(); 
			 
					if (con == null)    
					{return "Error while connecting to the database for deleting."; } 
			 
					// create a prepared statement    
					String query = "delete from RequestEvent where RequestID=?"; 
			 
					PreparedStatement preparedStmt = con.prepareStatement(query); 
			 
					// binding values    
					preparedStmt.setInt(1, Integer.parseInt(RequestID)); 
			 
					// execute the statement    
					preparedStmt.execute();    
					con.close(); 
			 
					String newRequestEvent = readRequestEvent();    
					output = "{\"status\":\"success\", \"data\": \"" +       
							newRequestEvent + "\"}";    
				}   
				catch (Exception e)   
				{    
					output = "Error while deleting the RequestEvent.";    
					System.err.println(e.getMessage());   
				} 
			 
				return output;  
			}
		   
}
