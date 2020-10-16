$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});
//Save
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	
	
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateBookingEventForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

//Valid
	var type = ($("#hidEventIDSave").val() == "") ? "POST" : "PUT";
	$.ajax({
		url : "BookingEventAPI",
		type : type,
		data : $("#formBookingEvent").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onBookingEventSaveComplete(response.responseText, status);
		}
	});
// $("#formBookingEvent").submit();
});
function onBookingEventSaveComplete(response, status) {
	var resultSet = JSON.parse(response);
	if (resultSet.status.trim() == "success") {
		$("#alertSuccess").text("Successfully saved.");
		$("#alertSuccess").show();
		location.reload();	
		$("#divBookingEventGrid").html(resultSet.data);
	} else if (resultSet.status.trim() == "error") {
		$("#alertError").text(resultSet.data);
		$("#alertError").show();
	}

	else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}

	$("#hidEventIDSave").val("");
	$("#formBookingEvent")[0].reset();

}

// UPDATE
$(document).on(
		"click",
		".btnUpdate",
		function(event) {
			
			$("#hidEventIDSave").val($(this).closest("tr").find('#hidEventIDUpdate').val());
			$("#EventCode").val($(this).closest("tr").find('td:eq(0)').text());
			$("#EventName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#EventType").val($(this).closest("tr").find('td:eq(2)').text());
			$("#EventDateFrom").val($(this).closest("tr").find('td:eq(3)').text());
			$("#EventDateTo").val($(this).closest("tr").find('td:eq(4)').text());
			$("#CompanyOrOrganization").val($(this).closest("tr").find('td:eq(5)').text());
			$("#DescribeTypeEvent").val($(this).closest("tr").find('td:eq(6)').text());
			$("#AdditionalRequest").val($(this).closest("tr").find('td:eq(7)').text());
		});

// Remove
$(document).on("click", ".btnRemove", function(event) 
		{  	
			$.ajax(  
			{   
				url : "BookingEventAPI",   
				type : "DELETE",   
				data : "EventID=" + $(this).data("EventID"),   
				dataType : "text",   
				complete : function(response, status)   
				{    
					onBookingEventDeleteComplete(response.responseText, status);   
				}  
			}); 
		}); 

		function onBookingEventDeleteComplete(response, status) 
		{  
			if (status == "success")  
			{   
				var resultSet = JSON.parse(response); 

				if (resultSet.status.trim() == "success")   
				{    
					$("#alertSuccess").text("Successfully deleted.");    
					$("#alertSuccess").show(); 
					location.reload();	
					$("#divBookingEventGrid").html(resultSet.data);   
				} else if (resultSet.status.trim() == "error")   
				{    
					$("#alertError").text(resultSet.data);    
					$("#alertError").show();   
				}

			} else if (status == "error")  
			{   
				$("#alertError").text("Error while deleting.");   
				$("#alertError").show();  
			} else  
			{   
				$("#alertError").text("Unknown error while deleting..");   
				$("#alertError").show();  
			}
		}
// CLIENTMODE
function validateBookingEventForm() {
	// CODE
	if ($("#EventCode").val().trim() == "") {
		return "Insert Event Code.";
	}
	// EventName
	if ($("#EventName").val().trim() == "") {
		return "Insert Event Name.";
	}

	// EventType
	if ($("#EventType").val().trim() == "") {
		return "Insert Event Type.";
	}
	// EventDateFrom
	if ($("#EventDateFrom").val().trim() == "") {
		return "Insert Event Date From.";
	}
	// EventDateTo
	if ($("#EventDateTo").val().trim() == "") {
		return "Insert Event Date To.";
	}
	// CompanyOrOrganization
	if ($("#CompanyOrOrganization").val().trim() == "") {
		return "Insert Company Or Organization.";
	}
	// DescribeTypeEvent
	if ($("#DescribeTypeEvent").val().trim() == "") {
		return "Insert Describe Type Event.";
	}
	// AdditionalRequest
	if ($("#AdditionalRequest").val().trim() == "") {
		return "Insert Additional Request.";
	}	
	return true;
}