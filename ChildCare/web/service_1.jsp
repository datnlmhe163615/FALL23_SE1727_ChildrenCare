<%-- 
    Document   : newjsp
    Created on : Sep 29, 2023, 12:51:54 PM
    Author     : phung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />

        <!-- fonts style -->
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

        <!--owl slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- nice select -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
        <!-- datepicker -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />

    </head>
    <body>



        <div class="hero_area">
            <!-- header section strats -->
            <header class="header_section">
                <div class="header_top">
                    <div class="container">
                        <div class="contact_nav">
                            <a href="">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                                <span>
                                    Call : +01 123455678990
                                </span>
                            </a>
                            <a href="">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <span>
                                    Email : demo@gmail.com
                                </span>
                            </a>
                            <a href="">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                <span>
                                    Location
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="header_bottom">
                    <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container ">
                            <a class="navbar-brand" href="index.html">
                                <img src="images/logo.png" alt="">
                            </a>


                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""> </span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                                    <ul class="navbar-nav  ">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="blog"> Blog</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="treatment.html">Treatment</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="doctor.html">Doctors</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="feedback">FeedBack</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.html">Contact Us</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="quote_btn-container">
                                    <a href="">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <span>
                                            Login
                                        </span>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <span>
                                            Sign Up
                                        </span>
                                    </a>
                                    <form class="form-inline">
                                        <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </header>

            <div class="container">
                <div class="row">
                    <div class="col-lg-10 mx-auto mb-4">
                        <div class="section-title text-center ">
                            <h3 class="top-c-sep">Service</h3>
                        </div>
                    </div>
                </div>
                <c:set var="title" value="initial_value" scope="page" /> <!-- Khai báo biến aaaa ở phạm vi trang -->
                <c:set var="salary" value="initial_value" scope="page" /> 
                <c:set var="serviceid" value="initial_value" scope="page" /> 
                <div class="row">
                    <div class="col-lg-10 mx-auto">
                        <div class="career-search mb-60">


                            <div class="filter-result">
                                <p class="mb-30 ff-montserrat">Total Service : <c:forEach items="${requestScope.count1}" var="c">${c.count}</c:forEach></p>

                                <c:forEach items="${requestScope.listservice}" var="ac" >
                                    <c:set var="title" value="${ac.title}" />
                                    <c:set var="salary" value="${ac.price}" />
                                    <c:set var="serviceid" value="${ac.id}" />
                                    
                                    <div class="job-box d-md-flex align-items-center justify-content-between mb-30">
                                        <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                            <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                                <img src="images/${ac.thumbnail}" alt="Mô tả của hình ảnh" style="margin-right: 20px;width: 150px; height: 100px; border-radius: 10%;" />
                                            </div>

                                            <div class="job-content">
                                                <h5 style="margin-left: 20px" class="text-center text-md-left">${ac.title}</h5>
                                                <div style="max-width: 500px;margin-left: 20px"> <!-- Điều này giới hạn chiều rộng của phần mô tả -->
                                                    <P>${ac.decription}</P>
                                                </div>
                                                <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                                    <li class="mr-md-4">
                                                        <i class="zmdi zmdi-money mr-2"></i> ${ac.price}$
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="job-right my-4 flex-shrink-0">
                                            <button class="btn d-block w-100 d-sm-inline-block btn-light apply-button" data-job="Front End Developer" data-salary="2500-3500/pm" onclick="applyNow()">Apply now</button>
                                        </div>
                                    </div>

                                </c:forEach>


                            </div>
                        </div>

                        <!-- START Pagination -->
                        <nav aria-label="Page navigation">
                            <ul class="pagination pagination-reset justify-content-center">
                                <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                                        <i class="zmdi zmdi-long-arrow-left"></i>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">2</a></li>
                                <li class="page-item d-none d-md-inline-block"><a class="page-link" href="#">3</a></li>
                                <li class="page-item"><a class="page-link" href="#">...</a></li>
                                <li class="page-item"><a class="page-link" href="#">8</a></li>
                                <li class="page-item">
                                    <a class="page-link" href="#">
                                        <i class="zmdi zmdi-long-arrow-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <!-- END Pagination -->
                    </div>
                </div>

            </div>
            <!-- end contact section -->

            <!-- info section -->
            <section class="info_section ">
                <div class="container">
                    <div class="info_top">
                        <div class="info_logo">
                            <a href="">
                                <img src="images/logo.png" alt="">
                            </a>
                        </div>
                        <div class="info_form">
                            <form action="">
                                <input type="email" placeholder="Your email">
                                <button>
                                    Subscribe
                                </button>
                            </form>
                        </div>
                    </div>
                    <div class="info_bottom layout_padding2">
                        <div class="row info_main_row">
                            <div class="col-md-6 col-lg-3">
                                <h5>
                                    Address
                                </h5>
                                <div class="info_contact">
                                    <a href="">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                        <span>
                                            Location
                                        </span>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                        <span>
                                            Call +01 1234567890
                                        </span>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-envelope"></i>
                                        <span>
                                            demo@gmail.com
                                        </span>
                                    </a>
                                </div>
                                <div class="social_box">
                                    <a href="">
                                        <i class="fa fa-facebook" aria-hidden="true"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-twitter" aria-hidden="true"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-linkedin" aria-hidden="true"></i>
                                    </a>
                                    <a href="">
                                        <i class="fa fa-instagram" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="info_links">
                                    <h5>
                                        Useful link
                                    </h5>
                                    <div class="info_links_menu">
                                        <a class="active" href="index.html">
                                            Home
                                        </a>
                                        <a href="about.html">
                                            About
                                        </a>
                                        <a href="treatment.html">
                                            Treatment
                                        </a>
                                        <a href="doctor.html">
                                            Doctors
                                        </a>
                                        <a href="testimonial.html">
                                            Testimonial
                                        </a>
                                        <a href="contact.html">
                                            Contact us
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="info_post">
                                    <h5>
                                        LATEST POSTS
                                    </h5>
                                    <div class="post_box">
                                        <div class="img-box">
                                            <img src="images/post1.jpg" alt="">
                                        </div>
                                        <p>
                                            Normal
                                            distribution
                                        </p>
                                    </div>
                                    <div class="post_box">
                                        <div class="img-box">
                                            <img src="images/post2.jpg" alt="">
                                        </div>
                                        <p>
                                            Normal
                                            distribution
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-3">
                                <div class="info_post">
                                    <h5>
                                        News
                                    </h5>
                                    <div class="post_box">
                                        <div class="img-box">
                                            <img src="images/post3.jpg" alt="">
                                        </div>
                                        <p>
                                            Normal
                                            distribution
                                        </p>
                                    </div>
                                    <div class="post_box">
                                        <div class="img-box">
                                            <img src="images/post4.png" alt="">
                                        </div>
                                        <p>
                                            Normal
                                            distribution
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- end info_section -->
            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script>
                                                $(document).ready(function () {
                                                    $(".apply-button").click(function () {
                                                        // Lấy giá trị từ các thuộc tính data-*
                                                        var jobTitle = "${pageScope.title}";
                                                        var salary = "${pageScope.salary}";
                                                        var gamil_raw = "${requestScope.gamil_raw}";
                                                        var choseservice_raw = "${requestScope.choseservice_raw}";
                                                        var inputHour_raw = "${requestScope.inputHour_raw}";
                                                        var phone_raw = "${requestScope.phone_raw}";
                                                        var address_raw = "${requestScope.address_raw}";
                                                        var date_raw = "${requestScope.date_raw}";
                                                        var serviceid_raw = "${pageScope.serviceid}";
                                                        var doctor_raw = "${requestScope.doctor_raw}";
                                                        
                                                        // Hiển thị hộp thoại xác nhận
                                                        var confirmMessage = "Bạn có chắc chắn muốn tiếp tục?\n";
                                                        if (window.confirm(confirmMessage)) {
                                                            // Nếu người dùng xác nhận, tạo URL với các tham số và gửi yêu cầu GET
                                                            var url = "checkout?jobTitle=" + encodeURIComponent(jobTitle) +
                                                                    "&salary=" + encodeURIComponent(salary) +
                                                                    "&gamil_raw=" + encodeURIComponent(gamil_raw) +
                                                                    "&choseservice_raw=" + encodeURIComponent(choseservice_raw) +
                                                                    "&inputHour_raw=" + encodeURIComponent(inputHour_raw) +
                                                                    "&phone_raw=" + encodeURIComponent(phone_raw) +
                                                                    "&address_raw=" + encodeURIComponent(address_raw) +
                                                                    "&serviceid_raw=" + encodeURIComponent(serviceid_raw) +
                                                                    "&doctor_raw=" + encodeURIComponent(doctor_raw) +
                                                                    "&date_raw=" + encodeURIComponent(date_raw);

                                                            window.location.href = url;
                                                        }
                                                    });
                                                });


            </script>


        </script>
        <!-- footer section -->
        <footer class="footer_section">
            <div class="container">
                <p>
                    &copy; <span id="displayYear"></span> All Rights Reserved By
                    <a href="https://html.design/">Free Html Templates</a>
                </p>
            </div>
        </footer>
        <!-- footer section -->

        <!-- jQery -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- nice select -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
        <!-- owl slider -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <!-- datepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            a.list-group-item {
                height:auto;
                min-height:220px;
            }
            a.list-group-item.active small {
                color:#fff;
            }
            .stars {
                margin:20px auto 1px;
            }
            body{
                background:#f5f5f5;
                margin-top:20px;
            }

            /* ===== Career ===== */
            .career-form {
                background-color: #4e63d7;
                border-radius: 5px;
                padding: 0 16px;
            }

            .career-form .form-control {
                background-color: rgba(255, 255, 255, 0.2);
                border: 0;
                padding: 12px 15px;
                color: #fff;
            }

            .career-form .form-control::-webkit-input-placeholder {
                /* Chrome/Opera/Safari */
                color: #fff;
            }

            .career-form .form-control::-moz-placeholder {
                /* Firefox 19+ */
                color: #fff;
            }

            .career-form .form-control:-ms-input-placeholder {
                /* IE 10+ */
                color: #fff;
            }

            .career-form .form-control:-moz-placeholder {
                /* Firefox 18- */
                color: #fff;
            }

            .career-form .custom-select {
                background-color: rgba(255, 255, 255, 0.2);
                border: 0;
                padding: 12px 15px;
                color: #fff;
                width: 100%;
                border-radius: 5px;
                text-align: left;
                height: auto;
                background-image: none;
            }

            .career-form .custom-select:focus {
                -webkit-box-shadow: none;
                box-shadow: none;
            }

            .career-form .select-container {
                position: relative;
            }

            .career-form .select-container:before {
                position: absolute;
                right: 15px;
                top: calc(50% - 14px);
                font-size: 18px;
                color: #ffffff;
                content: '\F2F9';
                font-family: "Material-Design-Iconic-Font";
            }

            .filter-result .job-box {
                -webkit-box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
                box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
                border-radius: 10px;
                padding: 10px 35px;
            }

            ul {
                list-style: none;
            }

            .list-disk li {
                list-style: none;
                margin-bottom: 12px;
            }

            .list-disk li:last-child {
                margin-bottom: 0;
            }

            .job-box .img-holder {
                height: 65px;
                width: 65px;
                background-color: #4e63d7;
                background-image: -webkit-gradient(linear, left top, right top, from(rgba(78, 99, 215, 0.9)), to(#5a85dd));
                background-image: linear-gradient(to right, rgba(78, 99, 215, 0.9) 0%, #5a85dd 100%);
                font-family: "Open Sans", sans-serif;
                color: #fff;
                font-size: 22px;
                font-weight: 700;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                border-radius: 65px;
            }

            .career-title {
                background-color: #4e63d7;
                color: #fff;
                padding: 15px;
                text-align: center;
                border-radius: 10px 10px 0 0;
                background-image: -webkit-gradient(linear, left top, right top, from(rgba(78, 99, 215, 0.9)), to(#5a85dd));
                background-image: linear-gradient(to right, rgba(78, 99, 215, 0.9) 0%, #5a85dd 100%);
            }

            .job-overview {
                -webkit-box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
                box-shadow: 0 0 35px 0 rgba(130, 130, 130, 0.2);
                border-radius: 10px;
            }

            @media (min-width: 992px) {
                .job-overview {
                    position: -webkit-sticky;
                    position: sticky;
                    top: 70px;
                }
            }

            .job-overview .job-detail ul {
                margin-bottom: 28px;
            }

            .job-overview .job-detail ul li {
                opacity: 0.75;
                font-weight: 600;
                margin-bottom: 15px;
            }

            .job-overview .job-detail ul li i {
                font-size: 20px;
                position: relative;
                top: 1px;
            }

            .job-overview .overview-bottom,
            .job-overview .overview-top {
                padding: 35px;
            }

            .job-content ul li {
                font-weight: 600;
                opacity: 0.75;
                border-bottom: 1px solid #ccc;
                padding: 10px 5px;
            }

            @media (min-width: 768px) {
                .job-content ul li {
                    border-bottom: 0;
                    padding: 0;
                }
            }

            .job-content ul li i {
                font-size: 20px;
                position: relative;
                top: 1px;
            }
            .mb-30 {
                margin-bottom: 30px;
            }
        </style>

</body>
</html>
