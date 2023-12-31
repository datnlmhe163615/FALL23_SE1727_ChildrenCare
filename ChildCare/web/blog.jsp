<%-- 
    Document   : blog
    Created on : Sep 29, 2023, 2:40:32 PM
    Author     : hp
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

        <section class="about_section layout_padding">

            <div class="d-flex align-items-center justify-content-between mb-4" style="margin-left:  20px">

                <div class="d-flex align-items-center">

                </div> 
                <form action="blog" method="post">
                    <div class="d-flex align-items-center">
                        <select id="filterStatus" name="idcategory" class="mr-2">
                            <option value="" name="0">All</option>
                            <c:forEach items="${requestScope.blogcategory}" var="c">
                                <option value="${c.id}" name="0" ${c.id == param.idcategory ? 'selected' : ''}>${c.title}</option>
                            </c:forEach>
                        </select>

                        <select id="filterStatus" name="idday" class="mr-2">
                            <option value="1" name="1" ${param.idday == '1' ? 'selected' : ''}>New</option>
                            <option value="2" name="2" ${param.idday == '2' ? 'selected' : ''}>Old</option>
                        </select>


                        <input type="text" style="margin-right: 20px" name="search" id="searchInput" placeholder="Search..." onkeyup="searchBlog()" class="form-control">
                        <button style="margin-right: 20px;" type="submit" class="btn btn-primary">Search</button>

                    </div>
                </form>
            </div>

            <div class="container  " >
                <c:forEach items="${requestScope.post}" var="c">
                    <div class="row" style="margin-bottom: 50px">
                        <div class="col-md-6 ">
                            <div class="img-box">
                                <img src="images/${c.thumbnail}" alt="">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="detail-box">
                                <div class="heading_container">
                                    <h2>
                                        <span>${c.title}</span>
                                    </h2>
                                </div>

                                <p class="description">
                                    ${c.decription}
                                </p>
                                <a href="blogdeatails?id=${c.id}">
                                    Read More
                                </a>
                            </div>
                        </div>

                    </div>

                </c:forEach>

                <!-- Giao diện phân trang -->
                <c:if test="${requestScope.checkpage == 0}">
                       <ul class="pagination justify-content-center">
                    <c:choose>
                        <c:when test="${requestScope.totalPages <= 7}">
                            <c:forEach begin="1" end="${requestScope.totalPages}" var="page">
                                <li class="page-item <c:if test="${page eq requestScope.currentPage}">active</c:if>">
                                    <a class="page-link" href="?page=${page}">${page}</a>
                                </li>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <c:choose>
                                <c:when test="${requestScope.currentPage <= 3}">
                                    <c:forEach begin="1" end="5" var="page">
                                        <li class="page-item <c:if test="${page eq requestScope.currentPage}">active</c:if>">
                                            <a class="page-link" href="?page=${page}">${page}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item disabled"><span class="page-link">...</span></li>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${requestScope.totalPages}">${requestScope.totalPages}</a>
                                    </li>
                                </c:when>
                                <c:when test="${requestScope.currentPage >= requestScope.totalPages - 2}">
                                    <li class="page-item">
                                        <a class="page-link" href="?page=1">1</a>
                                    </li>
                                    <li class="page-item disabled"><span class="page-link">...</span></li>
                                        <c:forEach begin="${requestScope.totalPages - 4}" end="${requestScope.totalPages}" var="page">
                                        <li class="page-item <c:if test="${page eq requestScope.currentPage}">active</c:if>">
                                            <a class="page-link" href="?page=${page}">${page}</a>
                                        </li>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=1">1</a>
                                    </li>
                                    <li class="page-item disabled"><span class="page-link">...</span></li>
                                        <c:forEach begin="${requestScope.currentPage - 1}" end="${requestScope.currentPage + 1}" var="page">
                                        <li class="page-item <c:if test="${page eq requestScope.currentPage}">active</c:if>">
                                            <a class="page-link" href="?page=${page}">${page}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item disabled"><span class="page-link">...</span></li>
                                    <li class="page-item">
                                        <a class="page-link" href="?page=${requestScope.totalPages}">${requestScope.totalPages}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </ul>
                </c:if>

            </div>

        </section>



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
        <script>
            var maxPages = 5; // Số trang tối đa để hiển thị trước và sau trang hiện tại

            // Sử dụng JavaScript để tính toán giá trị minValue
            var totalPages = ${requestScope.totalPages};
            var minValue = Math.min(totalPages, maxPages);

            // Hiển thị trang phân trang
            var pagination = document.getElementById("pagination");

            // Nếu có nhiều hơn maxPages trang, hiển thị trang đầu và dấu chấm
            if (totalPages > maxPages) {
                var firstPageItem = document.createElement("li");
                firstPageItem.className = "page-item";
                firstPageItem.innerHTML = '<a class="page-link" href="?page=1">1</a>';

                var ellipsisItem = document.createElement("li");
                ellipsisItem.className = "page-item disabled";
                ellipsisItem.innerHTML = '<span class="page-link">...</span>';

                pagination.appendChild(firstPageItem);
                pagination.appendChild(ellipsisItem);
            }

            // Hiển thị các trang trước trang hiện tại
            for (var page = 1; page <= minValue; page++) {
                var pageItem = document.createElement("li");
                pageItem.className = "page-item";

                if (page === ${requestScope.currentPage}) {
                    pageItem.className += " active";
                }

                pageItem.innerHTML = '<a class="page-link" href="?page=' + page + '">' + page + '</a>';

                pagination.appendChild(pageItem);
            }

            // Nếu có nhiều hơn maxPages trang, hiển thị trang cuối và dấu chấm
            if (totalPages > maxPages) {
                var ellipsisItemEnd = document.createElement("li");
                ellipsisItemEnd.className = "page-item disabled";
                ellipsisItemEnd.innerHTML = '<span class="page-link">...</span>';

                var lastPageItem = document.createElement("li");
                lastPageItem.className = "page-item";
                lastPageItem.innerHTML = '<a class="page-link" href="?page=' + totalPages + '">' + totalPages + '</a>';

                pagination.appendChild(ellipsisItemEnd);
                pagination.appendChild(lastPageItem);
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
        <style>
        </style>

    </body>
</html>
