<%--
  Created by IntelliJ IDEA.
  User: markahrens
  Date: 2019-08-21
  Time: 08:07
  To change this template use File | Settings | File Templates.
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <link rel="stylesheet" href="/css/style.css">--%>
    <%@ include file="partials/head.jsp"%>
<%--    <style><%@include file="css/style.css"%></style>--%>
</head>
<body>
<header>
    <h1 class="center">LOGIN PAGE</h1>
</header>

<%@ include file="partials/navbar.jsp"%>

<%
    if(request.getMethod().equalsIgnoreCase("post")){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if(username.equals("admin") && password.equals("password")){
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<%----%>

<form action="/login.jsp" method="post">
    <label for="username">Username</label>
    <input type="text" name="username" id="username">
    <label for="password">Password</label>
    <input type="password" name="password" id="password">
    <button>Login</button>
</form>

<h1>Welcome To The Site!</h1>
<p>Path: <%= request.getRequestURL() %></p>
<p>Query String: <%= request.getQueryString() %></p>
<p>"username" parameter: <%= request.getParameter("username") %></p>
<p>"password" parameter: <%= request.getParameter("password") %></p>
<p>User-Agent header: <%= request.getHeader("user-agent") %></p>
</body>
</html>