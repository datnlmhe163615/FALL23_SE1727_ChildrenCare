<%-- 
    Document   : doctorDetail
    Created on : Nov 3, 2023, 4:15:32 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>Mico</title>


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
                            <a class="navbar-brand" href="index.jsp">
                                <img src="images/logo.png" alt="">
                            </a>


                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""> </span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                                    <ul class="navbar-nav  ">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="about.jsp"> About</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="treatment.jsp">Treatment</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="doctor.jsp">Doctors</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="testimonial.jsp">Testimonial</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact.jsp">Contact Us</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="quote_btn-container">
                                    <a href="joinwithus.jsp">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <span>
                                            Join With Us
                                        </span>
                                    </a>
                                    <!--                <a href="">
                                                      <i class="fa fa-user" aria-hidden="true"></i>
                                                      <span>
                                                        Sign Up
                                                      </span>
                                                    </a>-->
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

        </div>

        <section class="team_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our <span>Doctors</span>
                    </h2>
                </div>

                <div class="item">
                    <div class="box">
                        <div class="img-box">
                            <img src="${acc.getAvatar()}" alt="" />
                        </div>
                        <div class="detail-box">
                            <h5>
                                ${acc.getFullname()}
                            </h5>                   
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
                    </div>
                </div>
            </div>
        </section>

        <section class="book_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form>
                            <h4>
                                DOCTOR <span>DETAIL</span>
                            </h4>
                            <div class="form-row ">
                                <div class="form-group col-lg-4">
                                    <label for="inputPatientName">Email </label>
                                    <input type="text" class="form-control" value="${acc.getEmail()}" readonly>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputDoctorName">Doctor's Name</label>
                                    <input type="text" class="form-control" value="${acc.getFullname()}"  readonly>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputDepartmentName">Address</label>
                                    <input type="text" class="form-control" value="${acc.getAddress()}"  readonly>
                                </div>
                            </div>
                            <div class="form-row ">
                                <div class="form-group col-lg-4">
                                    <label for="inputPhone">Phone Number</label>
                                    <input type="text" class="form-control" value="${acc.getMobile()}" readonly>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputSymptoms">Gender</label>
                                    <div style="display: flex;    padding: 1px 17px;
                                         font-size: 25px;">
                                        <input style="height: 39px;" type="radio" class="form-control" name="gender" ${acc.isGender()?'checked':''}>male
                                        <input style="height: 39px;" type="radio" class="form-control" name="gender" ${acc.isGender()?'':'checked'} >female
                                    </div>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputPhone">Role</label>
                                    <input type="text" class="form-control" value="Doctor" readonly>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>



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


    </body>

</html>