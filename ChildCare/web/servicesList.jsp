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
        <link href="services/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="services/assets/css/fontawesome.css">
        <link rel="stylesheet" href="services/assets/css/templatemo-stand-blog.css">
        <link rel="stylesheet" href="services/assets/css/owl.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <!-- CSS FILES -->        
        <link rel="preconnect" href="https://fonts.googleapis.com">

        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500;600;700&family=Open+Sans&display=swap" rel="stylesheet">

        <link href="services/css/bootstrap.min.css" rel="stylesheet">

        <link href="services/css/bootstrap-icons.css" rel="stylesheet">

        <link href="services/css/templatemo-topic-listing.css" rel="stylesheet"> 
        <style>
            .wrapper{
                height: 100%;
            }
            .search-area{
                display: flex;
                justify-content: center;
                height: 100%;
            }
            .single-search {
                margin-bottom: auto;
                margin-top: auto;
                height: 40px;
                background-color: #fafafa;
                border-radius: 30px;
                padding: 10px;
                box-shadow: 0 8px 10px rgba(0,0,0,0.3);
            }
            .custom-input{
                border: 0;
                outline: 0;
                width: 0;
                transition: width 0.4s linear;
                background: #fafafa;
            }
            input::placeholder {
                color: #262626;
                font-size: 20px;
            }
            .icon-area {
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                height: 40px;
                width: 40px;
                float: right;
                display: flex;
                text-decoration: none;
                color: #262626;
                margin: -11px 0px 0px 10px;
                border: saddlebrown;
                background: #fafafa;
            }
            .single-search:hover > .custom-input{
                padding: 0 10px;
                width: 500px;
                caret-color:#262626;
                transition: width 0.4s linear;
            }
            .single-search:hover > .icon-area{
                background: white;
                color: #262626;
            }

        </style>
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
                            <h2 class="mb-4" style="color: white">Service List</h2>
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
                                        <form action="searchService" method="post">
                                            <div class="wrapper">
                                                <div class="search-area">
                                                    <div class="single-search">

                                                        <input class="custom-input" type="text" name="search" placeholder="Search......">
                                                        <button type="submit" class="icon-area"><i class="fa fa-search"></i></button>

                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <c:forEach var="s" items="${services}">
                                            <div style="    margin-top: 20px;" class="col-lg-4 col-md-6 col-12 mb-4 mb-lg-0">
                                                <div class="custom-block bg-white shadow-lg">
                                                    <a href="sevicesDetail?id=${s.getId()}">
                                                        <div class="d-flex">
                                                            <div>
                                                                <h5 class="mb-2">${s.getTitle()}</h5>
                                                                <p class="mb-0">${s.getBrief_information()}</p>
                                                            </div>
                                                            <span style="margin-right: 5px;
                                                                  background-color: gray;
                                                                  color: black;" class="badge bg-finance rounded-pill ms-auto">${s.getPrice()}$</span>
                                                            <span class="badge bg-finance rounded-pill ms-auto">${s.getSale_price()}$</span>
                                                        </div>
                                                        <img src="${s.getThumbnail()}" class="custom-block-image img-fluid" alt="">
                                                    </a>
                                                    <p><a style="
                                                          height: 100%;
                                                          width: 132px;
                                                          border-radius: 16px;
                                                          border: none;
                                                          color: #fff;
                                                          font-size: 18px;
                                                          font-weight: 500;
                                                          letter-spacing: 1px;
                                                          background: lightpink;
                                                          text-align: center;
                                                          margin-top: 10px;
                                                          margin-left: 13rem;
                                                          " href="#" >Booking</a></p>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>                                    
                            </div>
                        </div>
                    </div>
                </div>
                <c:if test="${!check.equal(hidden)}">
                <div class="col-lg-12" style="margin-top: 50px">
                    <ul class="page-numbers">
                        <li><a href="sevicesList?index=1&&id=${id}&&mode=1"><i class="fa fa-angle-double-left"></i></a></li>
                                <c:forEach var = "i" begin = "1" end = "${numberPage}">
                            <li class="${param['index']==i?'active':''}"><a href="sevicesList?index=${i}&&id=${id}&&mode=1">${i}</a></li>
                            </c:forEach>
                        <li><a href="sevicesList?index=${numberPage}&&id=${id}&&mode=1"><i class="fa fa-angle-double-right"></i></a></li>
                    </ul>
                </div>
                </c:if>
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
