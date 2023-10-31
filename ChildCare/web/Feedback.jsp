<%-- 
    Document   : Feedback
    Created on : Sep 30, 2023, 8:46:38 PM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

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
        <link href="css/test.css" rel="stylesheet" />

        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    </head>
    <body class="sub_page">

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
                                <img src="images/logox.png" alt="">
                            </a>
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
                                            <a class="nav-link" href="medicalexamination">Medical Examination</a>
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
            <!-- end header section -->
        </div>



        <!-- client section -->
        <section class="client_section layout_padding" style="padding: 15px 0  !important" >
            <div class="container">
                <div class="heading_container">
                    <span style="color: blue">Home&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;Feedback List</span>                
                </div>
            </div>

            <div class="feedback-container" style="    display: flex;
                 justify-content: center;
                 align-items: center; flex-wrap: wrap;">
                <div class="s002">
                    <form action="feedback" method="Post">
                        <fieldset>
                            <legend>SEARCH FEEDBACK</legend>
                        </fieldset>
                        <div class="feedback-form">
                            <div class="feedback-search">
                                <input id="search" type="text" placeholder="What are you looking for?" name="textSearch"/>
                            </div>
                            <div class="service-choice">            
                                <select data-trigger="" name="serviceFilter">
                                    <option value="">Service</option>
                                    <c:forEach items="${requestScope.services}" var="c">
                                        <option value="${c.getId()}">${c.getTitle()}</option>
                                    </c:forEach>

                                </select>
                            </div>
                            <div class="point-choice">
                                <select data-trigger="" name="pointFilter">
                                    <option value="">  Point</option>
                                    <option value="1">1 point</option>
                                    <option value="2">2 point</option>
                                    <option value="3">3 point</option>
                                    <option value="4">4 point</option>
                                    <option value="5">5 point</option>
                                </select>
                            </div>
                            <div class="point-choice">
                                <select data-trigger="" name="sortBy">
                                    <option value="">  Sort By</option>
                                    <option value="fullName">Name</option>
                                    <option value="serviceId">Service</option>
                                    <option value="point">Point</option>
                                </select>
                            </div>
                            <div class="point-choice">
                                <select data-trigger="" name="sortOption">
                                    <option value="">Option</option>
                                    <option value="DESC" >Decrease</option>
                                    <option value="ASC">Increase</option>

                                </select>
                            </div>
                            <div class="search-button" >
                                <button class="search" type="submit">SEARCH</button>
                            </div>
                        </div>
                    </form>
                </div>
                <c:forEach var="entry" items="${requestScope.feedbackList}">
                          
                    <c:set var="imageList" value="${entry.value}" />
                    <c:set var="c" value="${c + 1}" />
                    <div class="feedback">
                        <div class="column image">
                            <img class="avatar" src="images/avatar1.jpg" alt="Avatar" style="width:90px;    border-radius: 50%;
                                 display: block;
                                 margin: 0 auto">
                            <c:if test="${entry.key.point == 1}">
                                <div class="star">
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </div>
                            </c:if>

                            <c:if test="${entry.key.point == 2}">
                                <div class="star">
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </div>
                            </c:if>

                            <c:if test="${entry.key.point == 3}">
                                <div class="star">
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bx-star'></i>
                                    <i class='bx bx-star'></i>
                                </div>
                            </c:if>

                            <c:if test="${entry.key.point == 4}">
                                <div class="star">
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bx-star'></i>
                                </div>
                            </c:if>
                            <c:if test="${entry.key.point == 5}">
                                <div class="star">
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                    <i class='bx bxs-star' style="color: gold;"></i>
                                </div>
                            </c:if>

                        </div>
                        <div class="column detail">
                            <a href="feedbackdetail?id=${entry.key.id}"> <p id="content${c}" style="max-height: 50px;
                               overflow: hidden;">${entry.key.content}</p></a>
                            <div style=" margin-top: 5px">
                                <c:forEach var="img" items="${imageList}">
                                    <img src="images/${img.thumString}" style="width: 50px" />
                                </c:forEach>
                            </div>
                            <p class="more${c}" onclick="toggleContent(${c})" id="more_text">More</p>
                            <div class="information">
                                <div class="column1">
                                    <h6 class="u-custom-font u-text u-text-font u-text-5">By <span class="name">${entry.key.customerName}</span></h6>
                                </div>
                                <div class="column2">
                                    <h6 class="u-text u-text-6">Last update: ${entry.key.updated_at}</h6>
                                </div>
                            </div>
                            <div class="service">
                                <span class="service-name">Service: ${entry.key.serviceName}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>





            </div>
        </section>
        <!-- end client section -->


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
                                    <a href="index.html">
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
                                    <a class="active" href="testimonial.html">
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

        <style>
            #more_text{
                background: transparent; /* Đặt nền trong suốt */
                color: #17a2b8; /* Đặt màu chữ màu xanh */
                border: none; /* Xóa đường viền */
                cursor: pointer;
                margin-top: 10px

            }
            #more_text:focus {
                outline: none;
            }
        </style>
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


        <script>

                                function toggleContent(c) {
                                    var contentElement = document.getElementById("content" + c);
                                    var moreButton = document.querySelector(".more" + c);

                                    if (contentElement.style.maxHeight === "none" || contentElement.style.maxHeight === "") {
                                        contentElement.style.maxHeight = "50px";
                                        moreButton.textContent = "More";
                                    } else {
                                        contentElement.style.maxHeight = "none";
                                        moreButton.textContent = "Less";
                                    }
                                }

        </script>

        <style>
            /* CSS để thiết kế danh sách feedback */
            .feedback-list {
                list-style: none;
                padding: 0;
            }
            .feedback-item {
                margin-bottom: 20px;
                border: 1px solid #ddd;
                padding: 10px;
            }
            .feedback-item h3 {
                font-size: 18px;
                margin-bottom: 5px;
            }
            .feedback-item .service-name {
                color: #007bff;
            }
            .feedback-item .rating {
                color: #f8d615;
            }
            .feedback-details {
                margin-top: 10px;
                max-height: 100px; /* Chiều cao tối đa ban đầu */
                overflow: hidden;
            }
            .show-details,
            .hide-details {
                cursor: pointer;
                color: blue;
                display: none; /* Ẩn mặc định */
            }
            .feedback-images img {
                max-width: 100px;
                margin-right: 10px;
                margin-bottom: 10px;
            }
        </style>
    </body>
</html>
