<%-- 
    Document   : ServiceDetail
    Created on : Oct 2, 2023, 3:25:00 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <link href="css/service.css" rel="stylesheet" />
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
    <div class="sub_page"> 
        <div class="hero_area">
            <!-- header section starts -->
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
                            </a>

                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class=""> </span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                                    <ul class="navbar-nav  ">
                                        <li class="nav-item ">
                                            <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item active">
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

        </div> 
    </div>

    <!-- end header section -->
    <section class="about_section">
        <div class="container  ">
            <div class="row">
                <div class="col-md-6 ">
                    <div class="img-box">
                        <img src="images/about-img.jpg" alt="">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail-box">
                        <div class="woocommerce-product-rating">
                            <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                <span>Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                <a href="shop-details.html" class="woocommerce-review-link">(<span class="count">3</span> customer reviews)</a>
                            </div>
                        </div>
                        <div class="heading_container">
                            <h2 class="product-title">${detail.tilte}AAAAA</h2>
                        </div>
                        <h2>Price:</h2>
                        <p>Original Price: <strike>$ ${detail.originalPrice}</strike> <strong>$ ${detail.salePrice}</strong></p>
                        <p>${detail.briefInfo}</p>
                        <p>
                            has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors
                        </p>
                        <a href="cart.html" class="vs-btn wave-btn">Booking Service</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</html>
