<%-- 
    Document   : service
    Created on : Sep 27, 2023, 9:27:14 PM
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

        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />
        <!-- nice select -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
        <!-- datepicker -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
        <!-- Custom styles for this template 
        <link href="css/style.css" rel="stylesheet" />-->
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
    <body>
        <div class="banner">
            <!--======== Shop Section ========-->
            <section class="vs-product-wrapper space-page">
                <div class="container">
                    <div class="vs-sort-bar mb-40">
                        <div class="row gy-20 align-items-center">
                            <div class="col-xl-3 col-md-4">
                                <div class="product-search">
                                    <div class="widget widget_search">
                                        <form class="search-form">
                                            <input type="text" placeholder="Search Here">
                                            <button type="submit"><i class="far fa-search"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-auto">
                                <span class="show-product">Showing 1–9 of 12 results</span>
                            </div>
                            <div class="col-sm-auto ms-auto">
                                <select class="form-select sortby" name="sortby" id="sortby">
                                    <option>Sort by Latest</option>
                                    <option>Sort by Oldest</option>
                                    <option>Sort by Ascending</option>
                                    <option>Sort by Descending</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row gy-40 flex-column-reverse flex-lg-row">
                        <div class="col-xl-3 col-lg-4">
                            <div class="sidebar-area shop-sidebar">
                                <div class="widget widget_price_filter">
                                    <h4 class="widget_title">Price Filter</h4>
                                    <div class="price_slider_wrapper">
                                        <div class="price_label">
                                            Price: <span class="from">$0</span> — <span class="to">$70</span>
                                        </div>
                                        <div class="price_slider"></div>
                                        <button type="submit" class="button">Filter</button>
                                    </div>
                                </div>

                                <div class="widget widget_categories">
                                    <h4 class="widget_title">Categories</h4>
                                    <ul>
                                        <c:forEach items="${requestScope.listC}" var="c">
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                            <li><a href="shop.html">${c.categoryName}</a> <span>(10)</span></li>
                                        </c:forEach>
                                    </ul>
                                </div>

                                <div class="widget widget_tag_cloud wow fadeInUp" data-wow-delay="0.1s">
                                    <h4 class="widget_title">Tags</h4>
                                    <div class="tagcloud">
                                        <a href="shop.html">Dental,</a>
                                        <a href="shop.html">Health examination,</a>
                                        <a href="shop.html">Eye examination,</a>
                                        <a href="shop.html">Care for newborns,</a>
                                        <a href="shop.html">Medical test,</a>
                                        <a href="shop.html">obstetrics and gynecology,</a>
                                        <a href="shop.html">Wooden,</a>
                                        <a href="shop.html">Ear - nose - throat</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8">
                            <div >
                                <!--class="row gy-30"-->
                                <!-- Single Item -->
                                <c:forEach items="${requestScope.listS}" var="s">
                                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="service-box" data-overlay="title" data-opacity="6">
                                            
                                            <div class="service-img">
                                                <img src="${s.thumbnail}" alt="service">
                                            </div>
                                            <div class="service-content">
                                                <div class="service-icon">
                                                    <img src="assets/images/logo.png" alt="icon">
                                                </div>
                                                <h3 class="service-title"><a href="detail?serviceID=${s.id}">${s.tilte}Root canal treatment</a></h3>
                                                <p class="service-text">${s.briefInfo}<pre><p>When you go for a dental check-up, your dentist should ask
             questions about your general health and medications. Many health conditions have
             an effect on your oral health and vice versa. Some medicines can affect your mouth
             or need to be taken into consideration before dental treatment.
            
            Your dentist will check each tooth using small instruments, such as a mirror and
             probe (a fine, pick-like tool). The dentist looks for issues such as tooth decay,
             gum disease and other conditions.
                        </p></pre></p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="vs-pagination mt-60">
                                <ul>
                                    <c:set var="page" value="${requestScope.page}"/>
                                    <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                        <li><a href="service?page=${i}" class="${i==page?"active":""}">${i}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="NewSer col-xl col-lg-8">
                        <style>
                            .NewSer{ background-color: #9EDDFF}
                        </style>
                <h1>News Services</h1>
                <div class="row">
                    <c:forEach items="${requestScope.listS}" var="s">
                    <div >
                        <!--class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s"-->
                        <div class="service-box" data-overlay="title" data-opacity="6">
                           <h3 class="service-title"><a href="detail?serviceID=${s.id}">${s.tilte}Root canal treatment</a></h3>
                           <div class="service-img">
<!--                                <img src="${s.thumbnail}" alt="service">-->
                               <img src="assets/images/logo.png" alt="service">
                            </div>
                            <div class="service-content">
                                <div class="service-icon">
                                    <!--<img src="assets/img/icon/sr-1.png" alt="icon">-->
                                    <img src="assets/images/logo.png" alt="icon">
                                </div>
                                
                                <p class="service-text">${s.briefInfo}<pre><p>When you go for a dental check-up, your dentist should ask
             questions about your general health and medications. Many health conditions have
             an effect on your oral health and vice versa. Some medicines can affect your mouth
             or need to be taken into consideration before dental treatment.
            
            Your dentist will check each tooth using small instruments, such as a mirror and
             probe (a fine, pick-like tool). The dentist looks for issues such as tooth decay,
             gum disease and other conditions.
                        </p></pre></p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                </div>
                
            </div>                  
                </div>
            </section>
                           

        </div></section>
            <section class="book_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col">
          <form>
            <h4>
              BOOK <span>APPOINTMENT</span>
            </h4>
            <div class="form-row ">
              <div class="form-group col-lg-4">
                <label for="inputPatientName">Patient Name </label>
                <input type="text" class="form-control" id="inputPatientName" placeholder="">
              </div>
              <div class="form-group col-lg-4">
                <label for="inputDoctorName">Doctor's Name</label>
                <select name="" class="form-control wide" id="inputDoctorName">
                  <option value="Normal distribution ">Normal distribution </option>
                  <option value="Normal distribution ">Normal distribution </option>
                  <option value="Normal distribution ">Normal distribution </option>
                </select>
              </div>
              <div class="form-group col-lg-4">
                <label for="inputDepartmentName">Department's Name</label>
                <select name="" class="form-control wide" id="inputDepartmentName">
                  <option value="Normal distribution ">Normal distribution </option>
                  <option value="Normal distribution ">Normal distribution </option>
                  <option value="Normal distribution ">Normal distribution </option>
                </select>
              </div>
            </div>
            <div class="form-row ">
              <div class="form-group col-lg-4">
                <label for="inputPhone">Phone Number</label>
                <input type="number" class="form-control" id="inputPhone" placeholder="XXXXXXXXXX">
              </div>
              <div class="form-group col-lg-4">
                <label for="inputSymptoms">Symptoms</label>
                <input type="text" class="form-control" id="inputSymptoms" placeholder="">
              </div>
              <div class="form-group col-lg-4">
                <label for="inputDate">Choose Date </label>
                <div class="input-group date" id="inputDate" data-date-format="mm-dd-yyyy">
                  <input type="text" class="form-control" readonly>
                  <span class="input-group-addon date_icon">
                    <i class="fa fa-calendar" aria-hidden="true"></i>
                  </span>
                </div>
              </div>
            </div>
            <div class="btn-box">
              <button type="submit" class="btn ">Submit Now</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>
                </div>
            </form>
        </div>

        <div>

        </div>
    </body>

    <!-- footer section -->
    <footer class="footer_section">
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
    </footer>
    <!-- footer section -->
</html>
