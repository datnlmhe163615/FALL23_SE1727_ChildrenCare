
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Reservation</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

        <link rel="stylesheet" href="reservation/css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="reservation/css/animate.css">

        <link rel="stylesheet" href="reservation/css/owl.carousel.min.css">
        <link rel="stylesheet" href="reservation/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="reservation/css/magnific-popup.css">

        <link rel="stylesheet" href="reservation/css/aos.css">

        <link rel="stylesheet" href="reservation/css/ionicons.min.css">

        <link rel="stylesheet" href="reservation/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="reservation/css/jquery.timepicker.css">


        <link rel="stylesheet" href="reservation/css/flaticon.css">
        <link rel="stylesheet" href="reservation/css/icomoon.css">
        <link rel="stylesheet" href="reservation/css/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <form action="ProductLists" class="search-form" method="post" >
                                <div class="form-group">
                                    <div class="icon">
                                        <span class="icon-search"></span>
                                    </div>
                                    <input type="text" class="form-control" name="search" placeholder="Search...">
                                </div>
                            </form>
                        </li>
                        <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Blog</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Treatment</a></li>         
                        <li class="nav-item"><a href="#" class="nav-link">Doctors</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Feedback</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">Reservation</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->

        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(reservation/images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Reservation</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div id="main">
            <div class="container">
                <h1 class="title-page">Reservation List</h1>
                <div class="group-tabs">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">All</a></li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="all">
                            <section class="ftco-section ftco-cart">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-12 ftco-animate">
                                            <div class="cart-list">
                                                <table class="table">
                                                    <thead class="thead-primary">
                                                        <tr class="text-center">                                                        
                                                            <th>STT</th>
                                                            <th>Order Date</th>
                                                            <th>Order Name</th>
                                                            <th>Status</th>
                                                            <th colspan="2">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${requestScope.list}" var="i" varStatus="idx">
                                                            <tr class="text-center">           
                                                                <td>${idx.index}</td>
                                                                <td>${i.formatDate()}</td>
                                                                <td>${i.orderName}</td>
                                                                <td>${i.status.name}</td>
                                                                <td><a href="orderDetail?id=${i.id}">Detail</a></td>
                                                                <c:if test="${i.status.id == 1}">
                                                                    <td><a href="changeStatus?id=${i.id}">Cancel</a></td>
                                                                </c:if>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row justify-content-end">
                                        <div class="col col-lg-3 col-md-6 mt-5 cart-wrap ftco-animate">
                                            <p class="text-center"><a href="Home" class="btn btn-primary py-3 px-4">Back to home</a></p>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
           
                    </div>
                </div>
            </div>
        </div>


        <script src="reservation/js/jquery-migrate-3.0.1.min.js"></script>
        <script src="reservation/js/popper.min.js"></script>
        <script src="reservation/js/bootstrap.min.js"></script>
        <script src="reservation/js/jquery.easing.1.3.js"></script>
        <script src="reservation/js/jquery.waypoints.min.js"></script>
        <script src="reservation/js/jquery.stellar.min.js"></script>
        <script src="reservation/js/owl.carousel.min.js"></script>
        <script src="reservation/js/jquery.magnific-popup.min.js"></script>
        <script src="reservation/js/aos.js"></script>
        <script src="reservation/js/jquery.animateNumber.min.js"></script>
        <script src="reservation/js/bootstrap-datepicker.js"></script>
        <script src="reservation/js/jquery.timepicker.min.js"></script>
        <script src="reservation/js/scrollax.min.js"></script>
        <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script type="text/javascript">
            function updateCart(i) {
                var value = $('#' + i).val();
                window.location.href = "${pageContext.request.contextPath}/updateCart?idx=" + i + "&quantity=" + value;
            }
        </script>
    </body>

</html>
