<%--
  Created by IntelliJ IDEA.
  User: markahrens
  Date: 2019-08-21
  Time: 08:08
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
    <link rel="stylesheet" href="/css/style.css">
    <%@ include file="partials/head.jsp"%>
    <style><%@include file="css/style.css"%></style>

</head>
<body>
<header>
    <h1 class="center">PROFILE PAGE</h1>
</header>
<jsp:include page="partials/navbar.jsp" />
</body>
</html>