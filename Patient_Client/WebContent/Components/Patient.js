$(document).ready(function() 
{
	if ($("#alertSuccess").text().trim() == "")
	{
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {

	// Clear status msges-------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation----------------
	var status = validatePatientForm();
	if (status != true) 
	{
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	
	// If valid-----------------------
	var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT";
	$.ajax( 
			{
				url : "PatientAPI",  
				type : type,  data : 
					$("#formPatient").serialize(), 
					dataType : "text",  
					complete : function(response, status)  
					{   onPatientSaveComplete(response.responseText, status); 
			} 
		}); 
});
function onPatientSaveComplete(response, status) {
	
	var resultSet = JSON.parse(response); 
	 
	if (resultSet.status.trim() == "success") 
	{  
			$("#alertSuccess").text("Successfully saved."); 
			$("#alertSuccess").show(); 
			$("#divItemsGrid").html(resultSet.data); 
			} 
	else if (resultSet.status.trim() == "error")
	{ 
		$("#alertError").text(resultSet.data); 
		$("#alertError").show(); }

	 else if (status == "error") 
	 { 
		 $("#alertError").text("Error while saving."); 
		 $("#alertError").show();
	 }
	 else 
	 { 
		 $("#alertError").text("Unknown error while saving.."); 
		 $("#alertError").show(); 
		 $("#hidItemIDSave").val(""); 
		 $("#formItem")[0].reset(); 
	 }
}
// UPDATE=====================================================================
$(document).on("click",".btnUpdate",function(event) {
			$("#hidItemIDSave").val($(this).closest("tr").find('#hidItemIDUpdate').val());
			$("#FirstName").val($(this).closest("tr").find('td:eq(0)').text());
			$("#LastName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#NIC").val($(this).closest("tr").find('td:eq(2)').text());
			$("#DOB").val($(this).closest("tr").find('td:eq(3)').text());
			$("#Email").val($(this).closest("tr").find('td:eq(4)').text());
			$("#Mobile").val($(this).closest("tr").find('td:eq(5)').text());
			$("#Address").val($(this).closest("tr").find('td:eq(6)').text());
			$("#BloodGroup").val($(this).closest("tr").find('td:eq(7)').text());
			$("#Allergy").val($(this).closest("tr").find('td:eq(8)').text());
			$("#Gender").val($(this).closest("tr").find('td:eq(9)').text());
			$("#Password").val($(this).closest("tr").find('td:eq(10)').text());
		});

//REMOVE========================================================================
$(document).on("click", ".btnRemove", function(event) 
		{  
	$.ajax( 
			{   
				url : "PatientAPI",  
				type : "DELETE",   
				data : "Patient_ID=" + $(this).data("Patient_ID"),   
				dataType : "text",   
				complete : function(response, status)  
				{    
					onPatientSaveComplete(response.responseText, status);  
					} 
			}); 
	}); 
function onPatientSaveComplete(response, status)
{ 
	if (status == "success")  
	{  
		var resultSet = JSON.parse(response); 

if (resultSet.status.trim() == "success")  
{   
	$("#alertSuccess").text("Successfully deleted.");  
	$("#alertSuccess").show(); 
    $("#divItemsGrid").html(resultSet.data);   
 } 
else if (resultSet.status.trim() == "error")  
{   
	$("#alertError").text(resultSet.data);   
	$("#alertError").show();   
	} 

} else if (status == "error")  
{  
	$("#alertError").text("Error while deleting."); 
	$("#alertError").show();  } 
else  
{ 
		$("#alertError").text("Unknown error while deleting.."); 
		$("#alertError").show();  
		} 
	}

// CLIENT-MODEL=================================================================
function validatePatientForm() {
	// FirstName
	if ($("#FirstName").val().trim() == "") {
		return "Insert Patient First Name.";
	}

	// LastName
	if ($("#LastName").val().trim() == "") {
		return "Insert Patient Last Name.";
	}
	// NIC-------------------------------
	if ($("#NIC").val().trim() == "") {
		return "Insert NIC.";
	}
	// DOB-------------------------------
	if ($("#DOB").val().trim() == "") {
		return "Insert Date of Birth.";
	}
	// Email-------------------------------
	if ($("#Email").val().trim() == "") {
		return "Insert Email.";
	}
	// Mobile-------------------------------
	if ($("#Mobile").val().trim() == "") {
		return "Insert Mobile.";
	}
	// Address-------------------------------
	if ($("#Address").val().trim() == "") {
		return "Insert Address.";
	}
	// BloodGroup-------------------------------
	if ($("#BloodGroup").val().trim() == "") {
		return "Select BloodGroup.";
	}
	// Allergy-------------------------------
	if ($("#Allergy").val().trim() == "") {
		return "Insert Allergies.";
	}
	// Gender-------------------------------
	if ($("#Gender").val().trim() == "") {
		return "Select Gender.";
	}
	
	// Password------------------------
	if ($("#password").val().trim() == "") {
		return "Insert Patient Password.";
	}

	// ConfirmPassword------------------------
	if ($("#ConfirmPassword").val().trim() == "") {
		return "Confirm Patient Password.";
	}
	return true;
}