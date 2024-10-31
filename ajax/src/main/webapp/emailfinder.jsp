<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
 <%
 String email=request.getParameter("email");
 if (email != null && email.contains("@") && email.contains(".")){
	 try {
		 Class.forName("com.mysql.jdbc.Driver");
		 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ajax","USER", "PASSWORD");
		 PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE email = ?");
		 ps.setString(1, email);
		 ResultSet rs = ps.executeQuery();
		 if (rs.next()) {
	            out.print("Unavailable!");
	        } else {
	            out.print("Available!");
	        }
		 rs.close();
		 ps.close();
		 con.close();
	 } catch (Exception e){
		 out.print("Error: " + e.getMessage());
	 }
 } else {
	 out.print("Invalid eamil!");
 }
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>