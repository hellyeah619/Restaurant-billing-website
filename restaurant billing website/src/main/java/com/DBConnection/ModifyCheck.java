package com.DBConnection;

import jakarta.servlet.RequestDispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class ModifyCheck
 */
public class ModifyCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int foodID = Integer.parseInt(request.getParameter("foodId"));
		String foodName = request.getParameter("food");
		int foodPrice = Integer.parseInt(request.getParameter("price"));
		try{  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false","root","Hellyeah619@");  
			PreparedStatement pstmt = null;
			String table, id,name,price;
			if(foodID > 1 && foodID < 10) {
				table = "food";
				id = "food_id";
				name = "food_name";
				price = "food_price";
			}else {
				table = "drinks";
				id = "drink_id";
				name = "drink_name";
				price = "drink_price";
			}
			String query = "UPDATE " + table + " SET " + name + " = ?, " + price + " = ? WHERE " + id + " = ?";
		    pstmt = con.prepareStatement(query);
		    pstmt.setString(1, foodName);
		    pstmt.setInt(2, foodPrice); 
		    pstmt.setInt(3, foodID);
            int rowsUpdated = pstmt.executeUpdate();
            if (rowsUpdated > 0) {
                response.getWriter().println("The food item was updated successfully.");
            } else {
                response.getWriter().println("No food item found with the specified ID.");
            }
            response.sendRedirect("AdminPanel.jsp");
			con.close();
		   } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("Error: " + e.getMessage());
	        } 
	}

}
