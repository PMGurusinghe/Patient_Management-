package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
/**
 * Servlet implementation class PatientAPI
 */
@WebServlet("/PatientAPI")
public class PatientAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	Patient patientObj = new Patient();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String output = patientObj.insertPatient(request.getParameter("FirstName"),      request.getParameter("LastName"),     request.getParameter("NIC"),        request.getParameter("DOB"),        request.getParameter("Email"),        request.getParameter("Mobile"),        request.getParameter("Address"),        request.getParameter("BloodGroup"),        request.getParameter("Allergy"),        request.getParameter("Gender"),        request.getParameter("password"),        request.getParameter("ConfirmPassword")); 
		
		 response.getWriter().write(output); 
	}
	

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);

		String output = patientObj.updatePatient(paras.get("hidItemIDSave").toString(), paras.get("FirstName").toString(),
				paras.get("LastName").toString(), paras.get("NIC").toString(), paras.get("DOB").toString(), paras.get("Email").toString(), paras.get("Mobile").toString(), paras.get("Mobile").toString(), paras.get("Address").toString(), paras.get("BloodGroup").toString(), paras.get("Allergy").toString(), paras.get("Gender").toString(), paras.get("password").toString());

		response.getWriter().write(output);
	}

	

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub 
		Map paras = getParasMap(request);

		String output = patientObj.deletePatient(paras.get("Patient_ID").toString());

		response.getWriter().write(output);
	}

	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request) {
		
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			
			scanner.close();

			String[] params = queryString.split("&");
			for (String param : params) 
			{
				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e)
		{
		}
		return map;
	}

}

