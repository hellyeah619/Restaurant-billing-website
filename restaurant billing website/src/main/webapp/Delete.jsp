<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Deleted</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .container {
        text-align: center;
    }
    
    .message {
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    .link {
        text-decoration: none;
        color: #ffffff;
        background-color: #007bff;
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s;
    }
    
    .link:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<% 
	int foodID = Integer.parseInt(request.getParameter("p"));
	try{  
	Class.forName("com.mysql.cj.jdbc.Driver");  	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false","root","Hellyeah619@");  
	Statement st = con.createStatement();
	String table,id; 
	if(foodID > 1 && foodID < 10) {
		table = "food";
		id = "food_id";
	}else {
		table = "drinks";
		id = "drink_id";
	}
	String query = "delete from " + table  + " where " + id + " = " + foodID;
	int rowsDeleted = st.executeUpdate(query);
	if (rowsDeleted > 0) {
		out.println("<div class='container'>");
		out.println("    <div class='message'>Your data has been successfully deleted!</div>");
		out.println("    <a href='AdminPanel.jsp' class='link'>Go Back</a>");
		out.println("</div>");
    } else {
        response.getWriter().println("No item found with the specified ID.");
    }
	}catch(Exception e){
		e.printStackTrace();
        response.getWriter().println("Error: " + e.getMessage());
	}
%>
</body>
</html>