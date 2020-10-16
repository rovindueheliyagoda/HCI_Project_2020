package com;

import com.BookingEvent;


import javax.ws.rs.*; 

import javax.ws.rs.core.MediaType;

import org.jsoup.*;
import org.jsoup.nodes.Document;
import org.jsoup.parser.*;

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@Path("BookingEvent")
public class BookingEventServices {
	
	BookingEvent BookingEventObj = new BookingEvent();
	@GET
	@Path("BookingEvent")
	@Produces(MediaType.TEXT_HTML)
	public String readBookingEvent()
	{
	return BookingEventObj.readBookingEvent();
	}
	
	@POST
	@Path("BookingEvent")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertAppointment(@FormParam("EventCode") String EventCode,
			@FormParam("EventName") String EventName,
			@FormParam("EventType") String EventType,
			@FormParam("EventDateFrom") String EventDateFrom,
			@FormParam("EventDateTo") String EventDateTo,
			@FormParam("CompanyOrOrganization") String CompanyOrOrganization,
			@FormParam("DescribeTypeEvent") String DescribeTypeEvent,
			@FormParam("AdditionalRequest") String AdditionalRequest)
	{
	 String output = BookingEventObj.insertBookingEvent(EventCode, EventName, EventType, EventDateFrom, EventDateTo, CompanyOrOrganization, DescribeTypeEvent,AdditionalRequest);
	return output;
	}
	
	
	@PUT
	@Path("BookingEvent")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateBookingEvent(String BookingEventData)
	{
	//Convert the input string to a JSON object
	 JsonObject BookingEventObject = new JsonParser().parse(BookingEventData).getAsJsonObject();
	//Read the values from the JSON object
	 String EventID = BookingEventObject.get("EventID").getAsString();
	 String EventCode = BookingEventObject.get("EventCode").getAsString();
	 String EventName = BookingEventObject.get("EventName").getAsString();
	 String EventType = BookingEventObject.get("EventType").getAsString();
	 String EventDateFrom = BookingEventObject.get("EventDateFrom").getAsString();
	 String EventDateTo = BookingEventObject.get("EventDateTo").getAsString();
	 String CompanyOrOrganization = BookingEventObject.get("CompanyOrOrganization").getAsString();
	 String DescribeTypeEvent = BookingEventObject.get("DescribeTypeEvent").getAsString();
	 String AdditionalRequest = BookingEventObject.get("AdditionalRequest").getAsString();
	 String output = BookingEventObj.updateBookingEvent(EventID,EventCode,EventName,EventType,EventDateFrom,EventDateTo,CompanyOrOrganization,DescribeTypeEvent,AdditionalRequest);
	return output;
	} 
	
	@DELETE
	@Path("BookingEvent")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteBookingEvent(String BookingEventData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(BookingEventData, "", Parser.xmlParser());

	//Read the value from the element <itemID>
	 String EventID = doc.select("EventID").text();
	 String output = BookingEventObj.deleteBookingEvent(EventID);
	return output;
	}
	

}
