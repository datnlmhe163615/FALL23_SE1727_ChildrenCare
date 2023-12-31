<%-- 
    Document   : newjsp
    Created on : Sep 29, 2023, 12:51:54 PM
    Author     : hp
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
                                            <a class="nav-link" href="medicalexamination">Medical Examination</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="quote_btn-container">
                                    <a href="login">
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <span>
                                            Login
                                        </span>
                                    </a>
                                    <a href="">


                                    <a href="register">
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
            <!-- slider section -->
            <!-- slider section -->
            <section class="slider_section">
                <div class="dot_design">
                    <img src="images/dots.png" alt="">
                </div>
                <div id="customCarousel1" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <c:forEach items="${requestScope.slide}" var="c" varStatus="status">
                            <div class="carousel-item ${status.index == 0 ? 'active' : ''}">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="detail-box">
                                                <div class="play_btn">
                                                    <button>
                                                        <i class="fa fa-play" aria-hidden="true"></i>
                                                    </button>
                                                </div>
                                                <h1>
                                                    ${c.title} <br>
                                                    <span>
                                                        ${c.sub_title}
                                                    </span>
                                                </h1>
                                                <p>
                                                    ${c.decription}
                                                </p>
                                                <a href="">
                                                    Contact Us
                                                </a>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="img-box">

                                                <img src="images/${c.image}" alt="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <div class="carousel_btn-box">
                        <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
                            <img src="images/prev.png" alt="">
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
                            <img src="images/next.png" alt="">
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </section>

            <!-- end slider section -->
        </div>


        <!-- book section -->

        <section class="book_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form method="get" action="service" onsubmit="return validateForm()">
                            <h4>
                                BOOK <span>APPOINTMENT</span>
                            </h4>
                            <div class="form-row">
                                <div class="form-group col-lg-4">
                                    <label for="inputPatientName">Gmail</label>
                                    <input name="gmail" type="text" class="form-control" id="inputPatientName" placeholder="">
                                    <span style="color: red;" id="errorGmail" class="error-message"></span>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputDoctorName">Service</label>
                                    <select name="choseservice" class="form-control wide" id="inputService">
                                        <option value="0">Choose Service</option>
                                        <c:forEach items="${requestScope.servicelist}" var="svv">
                                            <option value="${svv.id}">${svv.title}</option>
                                        </c:forEach>
                                    </select>
                                    <div> <span style="color: red;" id="errorService" class="error-message"></span>
                                    </div>   
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputHour">Hour</label>
                                    <select name="inputHour" class="form-control wide" id="inputHour">
                                        <option value="">Choose Hour</option>
                                        <option value="01:00">1:00 AM</option>
                                        <option value="02:00">2:00 AM</option>
                                        <option value="03:00">3:00 AM</option>
                                        <option value="04:00">4:00 AM</option>
                                        <option value="05:00">5:00 AM</option>
                                        <option value="06:00">6:00 AM</option>
                                        <option value="07:00">7:00 AM</option>
                                        <option value="08:00">8:00 AM</option>
                                        <option value="09:00">9:00 AM</option>
                                        <option value="10:00">10:00 AM</option>
                                        <option value="11:00">11:00 AM</option>
                                        <option value="12:00">12:00 PM</option>
                                    </select>
                                    <div><span style="color: red;" id="errorHour" class="error-message"></span>
                                    </div>    
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-lg-4">
                                    <label for="inputPhone">Phone Number</label>
                                    <input name="phone" type="text" class="form-control" id="inputPhone" placeholder="XXXXXXXXXX">
                                    <span style="color: red;" id="errorPhone" class="error-message"></span>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputSymptoms">Address</label>
                                    <input name="address" type="text" class="form-control" id="inputAddress" placeholder="">
                                    <span style="color: red;" id="errorAddress" class="error-message"></span>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputDate">Choose Date </label>
                                    <div class="input-group date" id="inputDate" data-date-format="mm-dd-yyyy">
                                        <input name="date" type="text" class="form-control" readonly>
                                        <span class="input-group-addon date_icon">
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                        </span>
                                    </div>
                                    <span style="color: red;" id="errorDate" class="error-message"></span>
                                </div>
                                <div class="form-group col-lg-4">
                                    <label for="inputDoctor">Doctor</label>
                                    <select name="chosesedoctor" class="form-control wide" id="inputDoctor">
                                        <option value="0">Choose Doctor</option>
                                        <c:forEach items="${requestScope.accountdoctor}" var="dt">
                                            <option value="${dt.id}">${dt.fullname}</option>
                                        </c:forEach>
                                    </select>
                                    <div><span style="color: red;" id="errorDoctor" class="error-message"></span>
                                    </div>
                                </div>

                            </div>
                            <div class="btn-box">
                                <button type="submit" class="btn">Submit Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <!-- end book section -->


        <!-- about section -->

        <section class="about_section">
            <div class="container  ">
                <div class="row">
                    <div class="col-md-6 ">
                        <div class="img-box">
                            <img src="images/${requestScope.postRandom.thumbnail}" alt="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="detail-box">
                            <div class="heading_container">
                                <h2>

                                    <span> ${requestScope.postRandom.title}</span>
                                </h2>
                            </div>
                            <p>
                                ${requestScope.postRandom.decription}
                            </p>
                            <a href="blogdeatails?id=${requestScope.postRandom.id}">
                                Read More
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end about section -->


        <!-- treatment section -->

        <section class="treatment_section layout_padding">
            <div class="side_img">
                <img src="images/treatment-side-img.jpg" alt="">
            </div>
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Hospital <span>Treatment</span>
                    </h2>
                </div>
                <div class=" row">
                    <c:forEach items="${requestScope.serviceCategories}" var="ac">
                        <div class="col-md-6 col-lg-3">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/${ac.thumbnail}" alt="">
                                </div>
                                <div class="detail-box">
                                    <h4>
                                        ${ac.title}
                                    </h4>
                                    <p>
                                        ${ac.decription}
                                    </p>
                                    <a href="">
                                        Read More
                                    </a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>

        </section>

        <!-- end treatment section -->

        <!-- team section -->

        <section class="team_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our <span>Doctors</span>
                    </h2>
                </div>
                <div class="carousel-wrap ">
                    <div class="owl-carousel team_carousel">
                        <c:forEach items="${requestScope.accountdoctor}" var="acd">
                            <div class="item">
                                <div class="box">
                                    <div class="img-box">
                                        <img src="images/${acd.avatar}" alt="" />
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            ${acd.fullname}
                                        </h5>
                                        <h6>
                                            ${acd.role}
                                        </h6>
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
                        </c:forEach>

                    </div>
                </div>
            </div>
        </section>

        <!-- end team section -->


        <!-- end client section -->

        <!-- contact section -->
        <section class="contact_section layout_padding-bottom">
            <div class="container">
                <div class="heading_container">
                    <h2>
                        Get In Touch
                    </h2>
                </div>
                <div class="row">
                    <div class="col-md-7">
                        <div class="form_container">
                            <form action="">
                                <div>
                                    <input type="text" placeholder="Full Name" />
                                </div>
                                <div>
                                    <input type="email" placeholder="Email" />
                                </div>
                                <div>
                                    <input type="text" placeholder="Phone Number" />
                                </div>
                                <div>
                                    <input type="text" class="message-box" placeholder="Message" />
                                </div>
                                <div class="btn_box">
                                    <button>
                                        SEND
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="img-box">
                            <img src="images/contact-img.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </section>
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


        <div id="overlay" class="hidden">
            <div class="popup">
                <p id="message">Đây là nội dung thông báo.</p>
            </div>
        </div>

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
        




        <script>



            function validateForm() {
                var serviceSelect = document.getElementById("inputService");
                var hourSelect = document.getElementById("inputHour");
                var phoneInput = document.getElementById("inputPhone");
                var gmailInput = document.getElementById("inputPatientName");
                var AddressInput = document.getElementById("inputAddress");
                var DoctorInput = document.getElementById("inputDoctor");
                var dateInput = document.getElementById("inputDate");

                var errorService = document.getElementById("errorService");
                var errorHour = document.getElementById("errorHour");
                var errorPhone = document.getElementById("errorPhone");
                var errorGmail = document.getElementById("errorGmail");
                var errorAddress = document.getElementById("errorAddress");
                var errorDoctor = document.getElementById("errorDoctor");
                var errorDate = document.getElementById("errorDate");

                // Check if Gmail is empty
                if (gmailInput.value.trim() === "") {
                    errorGmail.textContent = "Please enter your Gmail address.";
                    return false;
                } else {
                    errorGmail.textContent = "";
                }

                // Check if a service is selected
                if (serviceSelect.value === "0") {
                    errorService.textContent = "Please choose a service.";
                    return false;
                } else {
                    errorService.textContent = "";
                }

                // Check if an hour is selected
                if (hourSelect.value === "") {
                    errorHour.textContent = "Please choose an hour.";
                    return false;
                } else {
                    errorHour.textContent = "";
                }

                // Check if a doctor is selected
                if (DoctorInput.value === "0") {
                    errorDoctor.textContent = "Please choose a doctor.";
                    return false;
                } else {
                    errorDoctor.textContent = "";
                }

                // Check if Address is empty
                if (AddressInput.value.trim() === "") {
                    errorAddress.textContent = "Please enter your address.";
                    return false;
                } else {
                    errorAddress.textContent = "";
                }

                // Check phone number
                var phoneNumber = phoneInput.value.trim();
                if (phoneNumber === "" || !/^\d{10}$/.test(phoneNumber)) {
                    errorPhone.textContent = "Please enter a valid phone number (10 digits).";
                    return false;
                } else {
                    errorPhone.textContent = "";
                }

                // Check if a date is selected
                if (dateInput.value.trim() === "") {
                    errorDate.textContent = "Please choose a date.";
                    return false;
                } else {
                    errorDate.textContent = "";
                }

                // Check and display error messages for other input fields

                return true;
            }
        </script>


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
