<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP example</title>
</head>
<body>
<h1>Welcome to JSP!</h1>
<p>Current date and time: <%= new Date() %></p>
<%-- Using implicit objects --%>
<p>Request URI: <%= request.getRequestURI() %></p>
<p>Session ID: <%= session.getId() %></p><%-- Including another JSP page --%>
<jsp:include page="footer.jsp" />
<%-- Using a tag library (JSTL in this case) --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="${not empty sessionScope.user}">
<p>Welcome, ${sessionScope.user}!</p>
</c:if>
</body>
</html>