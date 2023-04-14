<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>BookingTicketPlane</title>
    <link rel="shortcut icon" type="image/jpg" href="images/hinh-anh-may-bay-dep.jpg"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alex+Brush" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">

    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">


    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">

    <link rel="stylesheet" href="css/mii.css">
    
    
</head>

<body>
	
    <jsp:include page="Menu.jsp"></jsp:include>
    
	<jsp:include page="Search.jsp"></jsp:include>

    <br>
    
    <!-- begin list -->
    <div class="container-ticket">
        <div class="post-list-ticket">
            <c:forEach items="${listFlight}" var="o">
                <div class="card">
                    <img class="card-img-top"
                        src="${o.img}"
                        alt="Card image cap">
                    <div class="card-body">
                        <h4 class="card-title show_txt"><a href="" title="View Product">${o.depart}</a>
                            <a href="" title="View Product"> - </a>
                            <a href="" title="View Product">${o.destination}</a>
                        </h4>

                        <div class="row">
                            <div class="col">
                                <p class="card-text show_txt">Ngày giờ đi : </p>
                            </div>
                            <div class="col">
                                <p class="card-text show_txt">${o.dep_dt}</p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <p class="card-text show_txt">Ngày giờ đến : </p>
                            </div>
                            <div class="col">
                                <p class="card-text show_txt">${o.des_dt}</p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <p class="card-text show_txt">Số lượng : </p>
                            </div>
                            <div class="col">
                                <p class="card-text show_txt">${o.numT}</p>
                            </div>
                        </div>

                        <br>
                        <div class="row">
                            <div class="col">
                                <p class="btn btn-danger btn-block">${o.cost} VNĐ</p>
                            </div>
                            <div class="col">
                                <a href="#" class="btn btn-success btn-block">Đặt vé</a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- end-list -->



    <jsp:include page="Footer.jsp"></jsp:include>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00" />
        </svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>

</body>

</html>