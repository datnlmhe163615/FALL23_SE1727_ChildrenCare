<%-- 
    Document   : header
    Created on : Oct 12, 2023, 9:23:47 AM
    Author     : mihxdat
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="index.jsp">Child Care</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <span class="fas fa-bars ms-1"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp">Home</a></li>
                    <c:if test="${sessionScope.acc.id eq 1}">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="admin">Management</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc.id eq 3}">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="profile">Welcome ${sessionScope.acc.fullname}</a></li>
                    </c:if>
<!--                <li class="nav-item"><a class="nav-link active" aria-current="page" href="shop?typePage=all&&page=1&&cond=0">Shop</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="ListOfPostPaginaged">Post</a></li>-->
            </ul>

<!--            <a href="carts">
                <button class="btn btn-outline-light" type="submit">
                    <i class="bi-cart-fill me-1"></i>
                    Cart
                    <span class="badge bg-dark text-white ms-1 rounded-pill">${sessionScope.cartSize}</span>
                </button>
            </a>-->
            <a href="${sessionScope.log}"><button class="btn btn-outline-primary ms-lg-2">${sessionScope.value_log}  </button></a>

        </div>
    </div>
</nav>
<header class="bg-dark py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Child Care</h1>
            <p class="lead fw-normal text-white-50 mb-0"><h4 class="masthead-subheading">${sessionScope.acc.fullname}</h4></p>
        </div>
    </div>
</header>
