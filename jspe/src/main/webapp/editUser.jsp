<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, bean.User, dao.UserDAO, db.UserDB" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*, javax.servlet.jsp.*" %>
<% 
int id=Integer.parseInt(request.getParameter("id"));
UserDAO dao=new UserDAO();
User user= dao.getUserById(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
</head>
<body>
<h1>Edit User</h1>
<form action="editUserAction.jsp" method="post">
 <input type="hidden" name="id" value="<c:out value="${user.id}"/>"/>
 Name: <input type="text" name="name" value="<c:out value="${user.name}"/>"/><br>
 Email: <input type="email" name="email" value="<c:out value="${user.email}"/>"/><br>
 <input type="submit" value="Update User"/>
</form>
</body>
</html>