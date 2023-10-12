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
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Services</title>

        <!-- CSS FILES -->        
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
                            <h2 class="mb-4" style="color: white">Service Category</h2>
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

                <div class="container">
                    <div class="row">

                        <div class="col-12">
                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="design-tab-pane" role="tabpanel" aria-labelledby="design-tab" tabindex="0">
                                    <div class="row">

                                        <c:forEach var="c" items="${category}">
                                            <div style="    margin-top: 20px;" class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                                                <div class="custom-block bg-white shadow-lg">
                                                    <a href="sevicesList?id=${c.getId()}">
                                                        <div class="d-flex">
                                                            <div>
                                                                <h5 class="mb-2">${c.getTitle()}</h5>

                                                                <p class="mb-0">${c.getDecription()}</p>
                                                            </div>
                                                        </div>
                                                        <img src="${c.getThumbnail()}" class="custom-block-image img-fluid" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                        </c:forEach>


                                    </div>
                                </div>                                    
                            </div>

                        </div>
                    </div>
            </section>
        </main>

        <footer class="site-footer section-padding">

        </footer>


        <!-- JAVASCRIPT FILES -->
        <script src="services/js/jquery.min.js"></script>
        <script src="services/js/bootstrap.bundle.min.js"></script>
        <script src="services/js/jquery.sticky.js"></script>
        <script src="services/js/click-scroll.js"></script>
        <script src="services/js/custom.js"></script>
    </body>
</html>
