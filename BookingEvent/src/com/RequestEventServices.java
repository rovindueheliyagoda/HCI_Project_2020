package com;

import com.RequestEvent;


import javax.ws.rs.*; 

import javax.ws.rs.core.MediaType;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.parser.*;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Path("RequestEvent")
public class RequestEventServices {

	RequestEvent RequestEventObj = new RequestEvent();
	@GET
	@Path("RequestEvent")
	@Produces(MediaType.TEXT_HTML)
	public String readRequestEvent()
	{
	return RequestEventObj.readRequestEvent();
	}
	
	
	@POST
	@Path("RequestEvent")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertRequestEvent(@FormParam("RequestCode") String RequestCode,
			@FormParam("FullName") String FullName,
			@FormParam("Email") String Email,
			@FormParam("ContactNumber") String ContactNumber,
			@FormParam("NumberOfGuest") String NumberOfGuest,
			@FormParam("AccommodationFacilities") String AccommodationFacilities,
			@FormParam("Messages") String Messages)
	{
	 String output = RequestEventObj.insertRequestEvent(RequestCode, FullName, Email, ContactNumber, NumberOfGuest, AccommodationFacilities, Messages );
	return output;
	}

	@PUT
	@Path("RequestEvent")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateRequestEvent(String RequestEventData)
	{
	//Convert the input string to a JSON object
	 JsonObject RequestEventObject = new JsonParser().parse(RequestEventData).getAsJsonObject();
	//Read the values from the JSON object
	 String RequestID = RequestEventObject.get("RequestID").getAsString();
	 String RequestCode = RequestEventObject.get("RequestCode").getAsString();
	 String FullName = RequestEventObject.get("FullName").getAsString();
	 String Email = RequestEventObject.get("Email").getAsString();
	 String ContactNumber = RequestEventObject.get("ContactNumber").getAsString();
	 String NumberOfGuest = RequestEventObject.get("NumberOfGuest").getAsString();
	 String AccommodationFacilities = RequestEventObject.get("AccommodationFacilities").getAsString();
	 String Messages = RequestEventObject.get("Messages").getAsString();
	 String output = RequestEventObj.updateRequestEvent(RequestID,RequestCode,FullName,Email,ContactNumber,NumberOfGuest,AccommodationFacilities,Messages);
	return output;
	} 
	
	@DELETE
	@Path("RequestEvent")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteRequestEvent(String RequestEventData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(RequestEventData, "", Parser.xmlParser());

	//Read the value from the element <itemID>
	 String RequestID = doc.select("RequestID").text();
	 String output = RequestEventObj.deleteRequestEvent(RequestID);
	return output;
	}
}
