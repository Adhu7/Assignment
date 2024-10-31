<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.util.*, bean.User, dao.UserDAO, db.UserDB" %>
 <%@ page import="javax.servlet.http.*, javax.servlet.*, javax.servlet.jsp.*" %>
 <%
 int id=Integer.parseInt(request.getParameter("id"));
 String name=request.getParameter("name");
 String email=request.getParameter("email");
 User user = new User();
 user.setId(id);
 user.setName(name);
 user.setEmail(email);
 UserDAO dao = new UserDAO();
 dao.updateUser(user);
 response.sendRedirect("listUsers.jsp");
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