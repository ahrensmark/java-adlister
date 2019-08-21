<%--
  Created by IntelliJ IDEA.
  User: markahrens
  Date: 2019-08-21
  Time: 08:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Navbar</title>
</head>
<body>
<header>
<%--    <h1>NAVBAR PAGE</h1>--%>
</header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="login.jsp">Login <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="index.jsp">Index</a>
            <a class="nav-item nav-link" href="profile.jsp">Profile</a>
<%--            <a class="nav-item nav-link" href="partials/head.jsp">Head</a>--%>
<%--            <a class="nav-item nav-link" href="partials/navbar.jsp">Navbar</a>--%>
        </div>
    </div>
</nav>
</body>
</html>
