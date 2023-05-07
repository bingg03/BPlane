<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Begin Menu -->
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="home">Ticket</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <!-- <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li> -->
                    <li class="nav-item"><a href="home" class="nav-link">Home</a></li>
                    
                    <!--  user / admin -->
                    <!--<c:if test="${sessionScope.acc.isUser == 1 || sessionScope.acc.isAdmin == 1}">
                    	<li class="nav-item"><a href="myinfo.jsp" class="nav-link">My Info</a></li>
                    </c:if>
                    -->
                    <c:if test="${sessionScope.acc.isUser == 1}">
                    	<li class="nav-item"><a href="myticket.jsp" class="nav-link">My Ticket</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                    	<li class="nav-item"><a href="manage_user.jsp" class="nav-link">Manage Users</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc.isAdmin == 1}">
                    	<li class="nav-item"><a href="manager" class="nav-link">Manage Tickets</a></li>
                    </c:if>
                    
                    
                    
                    <c:if test="${sessionScope.acc == null}">
                    	<li class="nav-item"><a href="register.jsp" class="nav-link">Register</a></li>
                    </c:if>
                    
                    
                    <c:if test="${sessionScope.acc == null}">
                    	<li class="nav-item"><a href="login.jsp" class="nav-link">Log in</a></li>
                    </c:if>
                    
                    <c:if test="${sessionScope.acc != null}">
                    	<li class="nav-item"><a href="logout" class="nav-link">Log out</a></li>
                    	<li class="nav-item cta"><a href="info" class="nav-link"><span>Hello, ${sessionScope.acc.name}</span></a></li>
                    </c:if>
                    
                    
                    <c:if test="${sessionScope.acc == null}">
                    	<li class="nav-item cta"><a href="#" class="nav-link"><span>About</span></a></li>
                    </c:if>

                </ul>
            </div>
        </div>
    </nav>
    <!-- END Menu -->