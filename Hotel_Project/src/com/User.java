package com;

public class User {
	
	public String login(String un, String pw) {
		
		String output = "";
		
		if (!un.equals("thamindu")) { // Hard coded test value
			
			output = "Invalid username";
			
		} else if (un.equals("thamindu")) { // Hard Coded test value
			
			if (!pw.equals("thami@88K")) { // Hard Coded test value
				
				output = "Invalid password";
				
			} else if (pw.equals("thami@88K")) { // Hard Coded Test Value
				
				output = "success";

			} // End else if

		}
		
		return output;
		
	}

}
