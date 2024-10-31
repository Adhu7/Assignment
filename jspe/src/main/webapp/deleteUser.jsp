<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, bean.User, dao.UserDAO, db.UserDB" %>
<%@ page import="javax.servlet.http.*, javax.servlet.*, javax.servlet.jsp.*" %>    
<%
 int id = Integer.parseInt(request.getParameter("id"));
UserDAO dao=new UserDAO();
dao.deleteUser(id);
response.sendRedirect("listUser.jsp");
 %>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->