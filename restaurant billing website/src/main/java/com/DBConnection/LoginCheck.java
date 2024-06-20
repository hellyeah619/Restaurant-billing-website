package com.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class LoginCheck
 */

public class LoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emailID=request.getParameter("email");
		String password=request.getParameter("password"); 
		
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false","root","Hellyeah619@");  
			Statement stmt  =con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from customer where customer_emailID='"+emailID+"' and customer_password = '"+password+"'"); 
				if(rs.next()) {
					RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");  				  
				    rd.forward(request, response);
				}else {
					RequestDispatcher rd=request.getRequestDispatcher("LoginError.html");  
		        	rd.include(request, response);  
				}
//				while(rs.next())
//				{	
//					if((rs.getString(4)).equals(password))
//					{	RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");  				  
//					    rd.forward(request, response);
//					}	
//					else
//					{	
//			        	RequestDispatcher rd=request.getRequestDispatcher("LoginError.html");  
//			        	rd.include(request, response);  
//				    }
//				}	
			con.close();
		   }catch(Exception e){  e.printStackTrace();}
	}

}
