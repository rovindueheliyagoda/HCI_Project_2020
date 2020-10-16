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
	var status = validateRequestEventForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

//Valid
	var type = ($("#hidRequestIDSave").val() == "") ? "POST" : "PUT";
	$.ajax({
		url : "RequestEventAPI",
		type : type,
		data : $("#formRequestEvent").serialize(),
		dataType : "text",
		complete : function(response, status) {
			onRequestEventSaveComplete(response.responseText, status);
		}
	});
// $("#formRequestEvent").submit();
});
function onRequestEventSaveComplete(response, status) {
	var resultSet = JSON.parse(response);
	if (resultSet.status.trim() == "success") {
		$("#alertSuccess").text("Successfully saved.");
		$("#alertSuccess").show();
		location.reload();	
		$("#divRequestEventGrid").html(resultSet.data);
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

	$("#hidRequestIDSave").val("");
	$("#formRequestEvent")[0].reset();

}

// UPDATE
$(document).on(
		"click",
		".btnUpdate",
		function(event) {
			
			$("#hidRequestIDSave").val(
					$(this).closest("tr").find('#hidRequestIDUpdate').val());
			$("#RequestCode").val($(this).closest("tr").find('td:eq(0)').text());
			$("#FullName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#Email").val($(this).closest("tr").find('td:eq(2)').text());
			$("#ContactNumber").val($(this).closest("tr").find('td:eq(3)').text());
			$("#NumberOfGuest").val($(this).closest("tr").find('td:eq(4)').text());
			$("#AccommodationFacilities").val($(this).closest("tr").find('td:eq(5)').text());
			$("#Messages").val($(this).closest("tr").find('td:eq(6)').text());
		});

// Remove
$(document).on("click", ".btnRemove", function(event) 
		{  	
			$.ajax(  
			{   
				url : "RequestEventAPI",   
				type : "DELETE",   
				data : "RequestID=" + $(this).data("RequestID"),   
				dataType : "text",   
				complete : function(response, status)   
				{    
					onRequestEventDeleteComplete(response.responseText, status);   
				}  
			}); 
		}); 

		function onRequestEventDeleteComplete(response, status) 
		{  
			if (status == "success")  
			{   
				var resultSet = JSON.parse(response); 

				if (resultSet.status.trim() == "success")   
				{    
					$("#alertSuccess").text("Successfully deleted.");    
					$("#alertSuccess").show(); 
					location.reload();	
					$("#divRequestEventGrid").html(resultSet.data);   
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
function validateRequestEventForm() {
	// CODE
	if ($("#RequestCode").val().trim() == "") {
		return "Insert Request Code.";
	}
	// FullName
	if ($("#FullName").val().trim() == "") {
		return "Insert Full Name.";
	}

	// Email
	if ($("#Email").val().trim() == "") {
		return "Insert Email.";
	}
	// ContactNumber
	if ($("#ContactNumber").val().trim() == "") {
		return "Insert Contact Number.";
	}
	// NumberOfGuest
	if ($("#NumberOfGuest").val().trim() == "") {
		return "Insert Number Of Guest.";
	}
	// AccommodationFacilities
	if ($("#AccommodationFacilities").val().trim() == "") {
		return "Insert Accommodation Facilities.";
	}
	// Messages
	if ($("#Messages").val().trim() == "") {
		return "Insert Messages.";
	}
	return true;
}