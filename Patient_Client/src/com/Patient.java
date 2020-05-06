package com;

import java.sql.*;

public class Patient {

public Connection connect() {
		Connection con = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/patient", "root", "");

			// For testing
			System.out.print("Successfully connected");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

public String insertPatient(String FName, String LName, String NIC,String DOB,String Email,String Mobile,String Address,String BloodGroup, String Allergy,String Gender,String password,String ConfirmPassword)
		
		 
{
		String output = "";

		try {

			Connection con = connect();

			if (con == null) 
			{
				return "Error while connecting to the database for inserting.";
			}

			// create a prepared statement
			String query = " insert into patient(`Patient_ID`,`FirstName`,`LastName`,`NIC`,`DOB`,`Email`,`Mobile`,`Address`,`BloodGroup`,`Allergy`,`Gender`,`password`,`ConfirmPassword`)" + " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; 
			 
			 
			
			PreparedStatement preparedStmt = con.prepareStatement(query);

			// binding values
			preparedStmt.setInt(1, 0);
			preparedStmt.setString(2, FName);
			preparedStmt.setString(3, LName);
			preparedStmt.setString(4, NIC);
			preparedStmt.setString(5, DOB);
			preparedStmt.setString(6, Email);
			preparedStmt.setString(7, Mobile);
			preparedStmt.setString(8, Address);
			preparedStmt.setString(9, BloodGroup);
			preparedStmt.setString(10, Allergy);
			preparedStmt.setString(11, Gender);
			preparedStmt.setString(12, password);
			preparedStmt.setString(13, ConfirmPassword);
		
			/* preparedStmt.setDouble(4, Double.parseDouble(price)); */
			// execute the statement
			preparedStmt.execute();
			con.close();

			output = "Inserted successfully";
			
		   }
		
		catch (Exception e) 
		{
			output = "Error while inserting the Patient Details.";
			System.err.println(e.getMessage());
		}

		return output;

	}
public String readPatient()  
{   
	String output = ""; 

	try   
	{    
	Connection con = connect(); 
	if (con == null)   
	{return "Error while connecting to the database for reading."; } 
	 
	   // Prepare the html table to be displayed    
	output = "<table border=\"1\"><tr><th>First Name</th><th>Last Name</th><th>NIC</th><th>DOB</th><th>Email</th><th>Mobile</th><th>Address</th><th>Blood Group</th><th>Allergy</th><th>Gender</th><th>password</th><th>Update</th><th>Remove</th></tr>"; 
	 
	 
	 
	   String query = "select * from patient";    
	   Statement stmt = con.createStatement();    
	   ResultSet rs = stmt.executeQuery(query); 
	   
	// iterate through the rows in the result set   
	   while (rs.next())   
	   {   
		    String Patient_ID = Integer.toString(rs.getInt("Patient_ID"));
		    String FirstName = rs.getString("FirstName");     
		    String LastName = rs.getString("LastName");     
		    String NIC = rs.getString("NIC"); 
		    String DOB = rs.getString("DOB"); 
		    String Email = rs.getString("Email"); 
		    String Mobile = rs.getString("Mobile"); 
		    String Address = rs.getString("Address"); 
		    String BloodGroup = rs.getString("BloodGroup"); 
		    String Allergy = rs.getString("Allergy"); 
		    String Gender = rs.getString("Gender"); 
		    String Password = rs.getString("Password"); 
		    
		 /* String itemPrice = Double.toString(rs.getDouble("itemPrice")); */  
		    
		 // Add into the html table     
		    output += "<tr><td>" + FirstName + "</td>";     
		    output += "<td>" + LastName + "</td>";     
		    output += "<td>" + NIC + "</td>";     
		    output += "<td>" + DOB + "</td>"; 
		    output += "<td>" + Email + "</td>"; 
		    output += "<td>" + Mobile + "</td>"; 
		    output += "<td>" + Address + "</td>"; 
		    output += "<td>" + BloodGroup + "</td>"; 
		    output += "<td>" + Allergy + "</td>";
		    output += "<td>" + Gender + "</td>"; 
		    output += "<td>" + Password + "</td>"; 
		    
		 // buttons     
		    output += "<td><input name=\"btnUpdate\" type=\"button\"value=\"Update\" class=\"btn btn-secondary\"></td>"
		    		+ "<td><form method=\"post\" action=\"PatientRegistration.jsp\">"      
		    		+ "<input name=\"btnRemove\" type=\"submit\" value=\"Remove\" class=\"btn btn-danger\">"      
		    		+ "<input name=\"itemID\" type=\"hidden\" value=\"" + Patient_ID     
		    		+ "\">" + "</form></td></tr>";    
		    
	   } 
		    
		    con.close(); 
		  
		    // Complete the html table    
		    output += "</table>";   
		}   
		catch (Exception e)   
		{    
				output = "Error while reading the Patient Details.";    
				System.err.println(e.getMessage());   } 
	 
	  return output;  
	  
}
public String updatePatient(String Patient_ID,String FName, String LName, String NIC,String DOB,String Email,String Mobile,String Address,String BloodGroup, String Allergy,String Gender,String password,String ConfirmPassword) 
	{  
		String output = ""; 
	
	
		try   { 
				Connection con = connect(); 
		 
		   if (con == null)   
		   {return "Error while connecting to the database for updating."; } 
		 
		   // create a prepared statement   
		   String query = "UPDATE patient SET FirstName=?,LastName=?,NIC=?,DOB=?,Email=?,Mobile=?,Address=?,BloodGroup=?,Allergy=?,Gender=?,password=?,ConfirmPassword=? WHERE Patient_ID=?"; 
		 
		   PreparedStatement preparedStmt = con.prepareStatement(query);
		  
		   

		// binding values
			
					preparedStmt.setString(1, FName);
					preparedStmt.setString(2, LName);
					preparedStmt.setString(3, NIC);
					preparedStmt.setString(4, DOB);
					preparedStmt.setString(5, Email);
					preparedStmt.setString(6, Mobile);
					preparedStmt.setString(7, Address);
					preparedStmt.setString(8, BloodGroup);
					preparedStmt.setString(9, Allergy);
					preparedStmt.setString(10, Gender);
					preparedStmt.setString(11, password);
					preparedStmt.setString(12, ConfirmPassword);
					preparedStmt.setInt(13, Integer.parseInt(Patient_ID)); 
		    // execute the statement   
		   preparedStmt.execute();    
		   con.close(); 
		 
		   output = "Updated successfully"; 
		 
		}   
		catch (Exception e)   
		{    
			output = "Error while updating the item.";    
			System.err.println(e.getMessage());   
		} 
	
		return output;
	} 
public String deletePatient(String Patient_ID) 
	{   
		String output = ""; 
	
		try   
		{   
			Connection con = connect(); 
	
			if (con == null)   
			{return "Error while connecting to the database for deleting."; } 
	
			// create a prepared statement    
			String query = "delete from patient where Patient_ID=?"; 
	
			PreparedStatement preparedStmt = con.prepareStatement(query); 
	
			// binding values    
			preparedStmt.setInt(1, Integer.parseInt(Patient_ID)); 
	
			// execute the statement    
			preparedStmt.execute();    
			con.close(); 
	
			output = "Deleted successfully";   
			
		}  
		catch (Exception e)   
		{   
			output = "Error while deleting the Patient Details.";    
			System.err.println(e.getMessage());  
		} 
	
		return output;  
	} 

}
