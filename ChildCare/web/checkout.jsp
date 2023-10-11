<%-- 
    Document   : blog
    Created on : Sep 29, 2023, 2:40:32 PM
    Author     : phung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Blog</title>


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
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
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

                <div class="loading-overlay" id="loadingOverlay">
                    <div class="loader"></div>
                </div>


                <div class="header_bottom">
                    <div class="container-fluid">
                        <nav class="navbar navbar-expand-lg custom_nav-container ">
                            <a class="navbar-brand" href="index.html">
                                <img src="images/logo.png" alt="">
                            </a>
                            </a>

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""> </span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                                    <ul class="navbar-nav  ">
                                        <li class="nav-item ">
                                            <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
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
            <!-- end header section -->
        </div>


        <!-- about section -->
        <form action="checkout" method="POST">
            <!-- Checkout Start -->
            <div class="container-fluid">
                <div class="row px-xl-5">
                    <div class="col-lg-8">
                        <div class="bg-light p-30 mb-5">
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label>E-mail</label>
                                    <input class="form-control" type="text" name="gmail" value="${requestScope.gamil_raw}" placeholder="example@email.com">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Phone number</label>
                                    <input class="form-control"  name="phone" value="${requestScope.phone_raw}" type="text" placeholder="Enter your phone number..">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Address</label>
                                    <input class="form-control" name="address" value="${requestScope.address_raw}" type="text" placeholder="Enter your address...">
                                </div>
                                <input hidden  name="doctor" value="${requestScope.doctor_raw}"/>
                                <input hidden name="total" value="${requestScope.salary}"/>
                                <input hidden name="serviceid" value="${requestScope.serviceid_raw}"/>
                                <input hidden name="inputHour" value="${requestScope.inputHour_raw}"/>
                                <input hidden name="date" value="${requestScope.date_raw}"/>


                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4">
                        <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Order Total</span></h5>
                        <div class="bg-light p-30 mb-5">
                            <div class="border-bottom">
                                <h6 class="mb-3">Products</h6>
                                <div class="d-flex justify-content-between">
                                    <p>${requestScope.jobTitle}</p>
                                    <p>${requestScope.salary} $</p>
                                </div>


                            </div>

                            <div class="pt-2">
                                <div class="d-flex justify-content-between mt-2">
                                    <h5>Total</h5>

                                    <h5>${requestScope.salary}$</h5>


                                </div>
                            </div>
                        </div>
                        <div class="mb-5">
                            <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Payment</span></h5>
                            <div class="bg-light p-30">
                                <!--                            <div class="form-group">
                                                                <div class="custom-control custom-radio">
                                                                    <input type="radio" class="custom-control-input" name="payment" id="paypal">
                                                                    <label class="custom-control-label" for="paypal">Paypal</label>
                                                                </div>
                                                            </div>-->
                                <div class="form-group">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" name="payment" id="directcheck">
                                        <label class="custom-control-label" for="directcheck">Direct Check</label>
                                    </div>
                                </div>


                                <input type="submit" id="placeOrderButton" class="btn btn-block btn-primary font-weight-bold py-3" value="Place Order" onclick="onSubmit()">


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <!-- end about section -->


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
                                    <a class="active" href="about.html">
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
        <style>
        </style>

        <style>
            /* CSS cho hiệu ứng tải */
            .loading-overlay {
                display: none;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background: rgba(255, 255, 255, 0.9);
                z-index: 9999;
                justify-content: center;
                align-items: center;
            }

            .loader {
                border: 4px solid #f3f3f3;
                border-top: 4px solid #3498db;
                border-radius: 50%;
                width: 50px;
                height: 50px;
                animation: spin 2s linear infinite;
            }

            @keyframes spin {
                0% {
                    transform: rotate(0deg);
                }
                100% {
                    transform: rotate(360deg);
                }
            }

        </style>
    </body>
</html>
