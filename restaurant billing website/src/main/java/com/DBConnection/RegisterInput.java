package com.DBConnection;
import java.sql.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;

/**
 * Servlet implementation class Registerinput
 */
public class RegisterInput extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String path = "jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false";
			String user = "root";
			String pwd = "Hellyeah619@";
			Connection con = DriverManager.getConnection(path,user,pwd);
			String query = "insert into customer(customer_name, customer_emailID,customer_password,customer_address) values(?,?,?,?)";
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, password);
			ps.setString(4, address);
			int i = ps.executeUpdate();
			
			if(i>0) {
				response.sendRedirect("index.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
