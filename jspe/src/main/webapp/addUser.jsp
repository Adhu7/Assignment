<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*, bean.User, dao.UserDAO, db.UserDB" %>
 <%@ page import="javax.servlet.http.*, javax.servlet.*, javax.servlet.jsp.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
<h1>Add User</h1>
<form action="addUserAction.jsp" method="post">
Name: <input type="text" name="name"><br>
Email: <input type="email" name="email"><br>
<input type="submit" value="Add User">
</form>
</body>
</html>