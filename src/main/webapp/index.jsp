
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="partials/head.jsp"%>
<%--    <style><%@include file="css/style.css"%></style>--%>
</head>
<body>
<header>
    <h1 class="center">INDEX PAGE</h1>
</header>
<jsp:include page="partials/navbar.jsp" />
<div class="container">

</div>
<body>
    <h1>Your Shopping Cart</h1>


        <c:choose>

        <c:when test="${cart.isEmpty()}">
        <h2>No items in your cart (yet).</h2>
        </c:when>

        <c:otherwise>
        <c:forEach var="item" items="${cart.items}">
        <div class="item">
            <h3>${item.name}</h3>
            <p>${item.description}</p>
            <p>$${item.price}</p>
            <c:if test="${item.isOnSale}">
                <p>This item is on sale!</p>
            </c:if>
            </item>
            </c:forEach>
            </c:otherwise>

            </c:choose>
        </div>

</body>
</html>