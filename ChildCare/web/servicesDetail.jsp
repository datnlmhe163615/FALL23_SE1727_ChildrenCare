<%-- 
    Document   : servicesList
    Created on : Oct 1, 2023, 8:13:20 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&display=swap" rel="stylesheet">

        <title>Service</title>

        <!-- Bootstrap core CSS -->
        <link href="services/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="services/assets/css/fontawesome.css">
        <link rel="stylesheet" href="services/assets/css/templatemo-stand-blog.css">
        <link rel="stylesheet" href="services/assets/css/owl.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap" rel="stylesheet">

        <link href="services/css/bootstrap.min.css" rel="stylesheet">

        <link href="services/css/bootstrap-icons.css" rel="stylesheet">

        <link href="services/css/templatemo-topic-listing.css" rel="stylesheet">    
    </head>
    <body id="top">
        <main>
            <header>
                <nav class="navbar navbar-expand-lg">
                    <div class="container">
                        <a class="navbar-brand" href="index.html">
                            <i class="bi-back" style="color: royalblue"></i>
                            <span style="color: royalblue">Childcare system</span>
                        </a>

                        <div class="d-lg-none ms-auto me-4">
                            <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                        </div>

                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarNav">
                            <ul class="navbar-nav ms-lg-5 me-lg-auto">
                                <li class="nav-item">
                                    <a class="nav-link click-scroll" href="#section_1">Home</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link click-scroll" href="#section_1">About</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link click-scroll" href="#section_1">Service</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link click-scroll" href="#section_1">Contact</a>
                                </li>

                            </ul>

                            <div class="d-none d-lg-block">
                                <a href="#top" class="navbar-icon bi-person smoothscroll"></a>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <section class="explore-section section-padding" id="section_2">
                <div class="container" style="    background: royalblue;
                     padding-top: 16px;">
                    <div class="row">

                        <div class="col-12 text-center">
                            <h2 class="mb-4" style="color: white">Service Detail</h2>
                        </div>

                    </div>
                </div>

                <div class="container-fluid">
                    <div class="row">
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <c:forEach var="c" items="${category}">
                                <li class="nav-item" role="presentation">
                                    <form action="sevices" method="get">
                                        <input type="hidden" value="${c.getId()}" name="id">
                                        <input type="hidden" value="1" name="mode">
                                        <button class="nav-link" type="submit">${c.getTitle()}</button>
                                    </form>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>
                <section class="blog-posts grid-system">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="all-blog-posts">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="blog-post">
                                                <div class="blog-thumb">
                                                    <video controls style="width:90%; margin-left: 5rem; margin-top: -102px;"> 
                                                        <source src="${media.getMedia().getUrl()}">
                                                    </video>
                                                </div>
                                                <div class="down-content">
                                                    <span>${media.getService().getCategory().getTitle()}</span>
                                                    <a href="#"><h4>${media.getService().getTitle()}</h4></a>
                                                    <ul class="post-info">
                                                        <li><a href="#">${media.getService().getCreated_at()}</a></li>
                                                        <li><a style="    font-size: 20px;
                                                               background-color: red;
                                                               color: white;
                                                               border-radius: 9px;" href="#">Price: 20$</a></li>
                                                    </ul>
                                                    <p>${media.getService().getDecription()}</p>
                                                    <a style="
                                                       height: 100%;
                                                       width: 156px;
                                                       border-radius: 24px;
                                                       border: none;
                                                       color: #fff;
                                                       font-size: 18px;
                                                       font-weight: 500;
                                                       letter-spacing: 1px;
                                                       background: lightpink;
                                                       text-align: center;
                                                       padding: 10px;
                                                       " href="#" >Booking</a>
                                                </div>

                                            </div>

                                        </div>
                                        <div class="col-lg-12">
                                            <div class="sidebar-item comments">
                                                <div class="sidebar-heading">
                                                    <h2>4 comments</h2>
                                                </div>
                                                <div class="content">
                                                    <ul>

                                                        <li>                       
                                                            <div class="right-content">
                                                                <h4>Charles Kate<span>May 16, 2020</span></h4>
                                                                <p>Curabitur a nisl eu lacus convallis eleifend posuere id tellus.</p>
                                                            </div>
                                                        </li>

                                                        <li>

                                                            <div class="right-content">
                                                                <h4>Belisimo Mama<span>May 16, 2020</span></h4>
                                                                <p>Sed vitae suscipit ligula. Vestibulum id turpis volutpat, lobortis turpis ac, molestie nibh.</p>
                                                            </div>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="sidebar-item submit-comment">
                                                <div class="sidebar-heading">
                                                    <h2>Feedback</h2>
                                                </div>
                                                <div class="content">
                                                    <form id="comment" action="#" method="post">
                                                        <div class="row">                                             
                                                            <div class="col-lg-12">
                                                                <fieldset>
                                                                    <textarea name="message" rows="6" id="message" placeholder="Type your comment" required=""></textarea>
                                                                </fieldset>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <fieldset>
                                                                    <button type="submit" id="form-submit" class="main-button">Send</button>
                                                                </fieldset>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>




            </section>
        </main>

        <footer class="site-footer section-padding">

        </footer>
        <script src="services/js/jquery.min.js"></script>
        <script src="services/js/bootstrap.bundle.min.js"></script>
        <script src="services/js/jquery.sticky.js"></script>
        <script src="services/js/click-scroll.js"></script>
        <script src="services/js/custom.js"></script>

        <script src="services/assets/js/custom.js"></script>
        <script src="services/assets/js/owl.js"></script>
        <script src="services/assets/js/slick.js"></script>
        <script src="services/assets/js/isotope.js"></script>
        <script src="services/assets/js/accordions.js"></script>
    </body>
</html>
