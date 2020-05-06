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
	var emailReg = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var tmpEmail =  $("#Email").val().trim();
	if(!tmpEmail.match(emailReg)){
		return "Insert a valid Email...!";
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
	if ($("#BloodGroup").val() == "0") {
		return "Select Blood Group.";
	}

	// Allergy-------------------------------
	if ($("#Allergy").val().trim() == "") {
		return "Insert Allergies.";
	}
	// Gender-------------------------------
	if ($('input[name="rdoGender"]:checked').length === 0) {
		return "Select gender.";
	}
	// Password------------------------
	if ($("#Password").val().trim() == "") {
		return "Insert Allergies.";
	}
	
	/*var pwdReg = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$/;
	var tmpPwd =  $("#password").val().trim();
	if(!tmpPwd.match(pwdReg)){
		return "Insert a Password 4 to 8 characters which contain at least one numeric digit, one uppercase and one lowercase letter...!";
	}*/
	// ConfirmPassword------------------------
	if($("#ConfirmPassword").val().trim() == ""){
		return "Insert Confirm Password...!";
	}
	
	/*var tmpCpwd = $("#ConfirmPassword").val().trim();
	if(tmpCpwd != tmpPwd){
		return "Passwords are mismatching...!";
	}*/
	return true;
}