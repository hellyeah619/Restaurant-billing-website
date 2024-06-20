package com.DBConnection;
import jakarta.servlet.RequestDispatcher;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;

/**
 * Servlet implementation class AdminCheck
 */
public class AdminCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emailID = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String path = "jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false";
			String user = "root";
			String pwd = "Hellyeah619@";
			Connection conn = DriverManager.getConnection(path,user,pwd);
			Statement st = conn.createStatement();
			String query = "select * from admin where admin_emailID = '"+emailID+"' and admin_password= '"+password+"'";
			ResultSet rs = st.executeQuery(query);
			if(rs.next()) {
				RequestDispatcher rd = request.getRequestDispatcher("AdminPanel.jsp");
				rd.forward(request, response);
			}else {
				RequestDispatcher rd=request.getRequestDispatcher("AdminLoginError.html");  
	        	rd.include(request, response);  
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
