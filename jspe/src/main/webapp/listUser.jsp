<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, bean.User, dao.UserDAO, db.UserDB" %>
 <%@ page import="javax.servlet.http.*, javax.servlet.*, javax.servlet.jsp.*" %>
<% 
UserDAO dao=new UserDAO();
List<User> users= dao.getAllUsers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Users</title>
</head>
<body>
<h1>Users List</h1>
<table border="1">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Actions</th>
    </tr>
   <c:forEach var="user" items="${users}">
       <tr>
       <td><c:out value="${user.id}" /></td>
          <td><c:out value="${user.name}" /></td>
          <td><c:out value="${user.email}" /></td>
          <td>
            <a href="editUser.jsp?id=<c:out value="${user.id}" />">Edit</a>
            <a href="deleteUser.jsp?id=<c:out value="${user.id}"/>">Delete</a>
          </td>
        </tr>
    </c:forEach>
</table>
<a href="addUser.jsp">Add New User</a>
</body>
</html>