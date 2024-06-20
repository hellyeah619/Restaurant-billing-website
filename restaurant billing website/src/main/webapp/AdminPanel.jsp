<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel</title>
<link rel="stylesheet" type="text/css" href="resources/adminPanel.css">
</head>
<body>

<div id="navbar">
    <h1 style = "font-family: Lobster; font-size : 69px;">Admin Panel</h1>
    <a href="index.jsp"><button class = "delete-btn">Logout</button></a>
</div>

<table>
    <thead>
        <tr>
            <th>Food ID</th>
            <th>Food Name</th>
            <th>Food Price</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
       <%
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                String path = "jdbc:mysql://localhost:3306/TNPproject2?autoReconnect=true&useSSL=false";
                String user = "root";
                String pwd = "Hellyeah619@";
                Connection conn = DriverManager.getConnection(path, user, pwd);
                
                String q1 = "SELECT * FROM food";
                String q2 = "SELECT * FROM drinks";
                PreparedStatement st = conn.prepareStatement(q1);
                ResultSet rs = st.executeQuery();
                
                while (rs.next()) {
                    int foodId = rs.getInt("food_id");
                    String foodName = rs.getString("food_name");
                    String foodPrice = rs.getString("food_price");
                    
                    out.println("<tr>");
                    out.println("<td>" + foodId + "</td>");
                    out.println("<td>" + foodName + "</td>");
                    out.println("<td>" + foodPrice + "</td>");
                    out.println("<td>");
                    out.println("<a href='Modify.jsp?p=" + foodId + "'><button class='modify-btn'>Modify</button></a> ");
                    out.println("<a href='Delete.jsp?p=" + foodId + "'><button class='delete-btn'>Delete</button></a> ");
                    out.println("</td>");
                    out.println("</tr>");
                }
                
                st = conn.prepareStatement(q2);
                rs = st.executeQuery();
                
                while (rs.next()) {
                    int drinkId = rs.getInt("drink_id");
                    String drinkName = rs.getString("drink_name");
                    String drinkPrice = rs.getString("drink_price");
                    
                    out.println("<tr>");
                    out.println("<td>" + drinkId + "</td>");
                    out.println("<td>" + drinkName + "</td>");
                    out.println("<td>" + drinkPrice + "</td>");
                    out.println("<td>");
                    out.println("<a href='Modify.jsp?p=" + drinkId + "'><button class='modify-btn'>Modify</button></a> ");
                    out.println("<a href='Delete.jsp?p=" + drinkId + "'><button class='delete-btn'>Delete</button></a> ");
                    out.println("</td>");
                    out.println("</tr>");
                }
                
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<tr><td colspan='4'>Error: " + e.getMessage() + "</td></tr>");
            }
        %>
    </tbody>
</table> 
</body>
</html>
