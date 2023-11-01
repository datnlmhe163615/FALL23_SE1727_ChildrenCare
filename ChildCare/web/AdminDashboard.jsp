<%-- 
    Document   : AdminDashboard
    Created on : Oct 8, 2023, 10:00:25 AM
    Author     : hp
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" class="light-style layout-menu-fixed layout-compact" dir="ltr" data-theme="theme-default"
      data-assets-path="../assets/" data-template="vertical-menu-template-free">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
              content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />


        <meta name="description" content="" />
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
              rel="stylesheet" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


        <link rel="stylesheet" href="css/materialdesignicons.css" />

        <!-- Core CSS -->
        <link rel="stylesheet" href="css/core.css" class="template-customizer-core-css" />
        <link rel="stylesheet" href="css/theme-default.css" class="template-customizer-theme-css" />
        <link rel="stylesheet" href="css/demo.css" />

        <!-- Vendors CSS -->
        <link rel="stylesheet" href="css/apex-charts.css" />
        <script src="js/helpers.js"></script>
        <script src="js/config.js"></script>
        </head>
    <body>
        <!-- Layout wrapper -->
        <div class="layout-wrapper layout-content-navbar" style="margin-top: 20px">
            <div class="layout-container">
                <!-- Menu -->
                <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                    <div style="text-align: center; display: flex; flex-direction: column; align-items: center; justify-content: center; height: 100px; margin-bottom: 20px; margin-top: 20px">
                        <a href="admin">
                            <img src="images/logo.png" alt="alt" style="height: 100px;" />
                        </a>
                    </div>
                    <ul class="menu-inner py-1">
                        <!-- Dashboards -->
                        <li class="menu-item active open" style="color: ">
                            <a  class="menu-link " href="admin">
                                <div data-i18n="Dashboards">Dashboards</div>
                            </a>
                        </li>
                     <li class="menu-item open" style="color: ">
                            <a  class="menu-link " href="home">
                                <div data-i18n="Dashboards">Acount</div>
                            </a>
                        </li>
                        <li class="menu-item open" style="color: ">
                            <a  class="menu-link " href="home">
                                <div data-i18n="Dashboards">Logout</div>
                            </a>
                        </li>
                        <li class="menu-item open" style="color: ">
                            <a  class="menu-link " href="home">
                                <div data-i18n="Dashboards">Logout</div>
                            </a>
                        </li>
                    </ul>
                </aside>

                <!-- / Menu -->
                <!-- Layout container -->
                <div class="layout-page">


                    <!-- Content wrapper -->
                    <div class="content-wrapper">
                        <!-- Content -->
                        <div class="container text-left">
                            <div class="row justify-content-center">
                                <div class="col-lg-7">
                                    <form action="admin" class="row" method="post" onsubmit="return validateForm()">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="input_from">From</label>
                                                <input type="date" class="form-control" id="input_from" placeholder="Start Date" name="startDate" value="${sDateSql}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="input_to">To</label>
                                                <input type="date" class="form-control" id="input_to" placeholder="End Date" name="endDate" value="${eDateSql}">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>&nbsp;</label>
                                                <button type="submit" class="btn btn-primary btn-block" style="display: block !important">OK</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="container-xxl flex-grow-1 container-p-y">
                        <div class="row gy-4">
                            <!-- Congratulations card -->
                            <div class="col-md-12 col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-1">Congratulations! 🎉</h4>
                                        <p class="pb-0">Revenue in the last 7 days</p>
                                        <h4 class="text-primary mb-1">${totalRevenue} $</h4>
                                        <p class="mb-2 pb-1">100% of target 🚀</p>
                                        <a href="javascript:;" class="btn btn-sm btn-primary">View Sales</a>
                                    </div>
                                    <img src="images/triangle-light.png"
                                         class="scaleX-n1-rtl position-absolute bottom-0 end-0" width="166" alt="triangle background"
                                         data-app-light-img="icons/misc/triangle-light.png"
                                         data-app-dark-img="icons/misc/triangle-dark.png" />
                                    <img src="images/trophy.png"
                                         class="scaleX-n1-rtl position-absolute bottom-0 end-0 me-4 mb-4 pb-2" width="83" alt="view sales" />
                                </div>
                            </div>
                            <!--/ Congratulations card -->

                            <!-- Transactions -->
                            <div class="col-lg-8">
                                <div class="card">
                                    <div class="card-header">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <h5 class="card-title m-0 me-2">Statistics</h5>
                                            <div class="dropdown">
                                                <i class='bx bx-objects-vertical-bottom'></i>
                                            </div>
                                        </div>
                                        <p class="mt-3"><span class="fw-medium">Statistics for the last 7 days</span> 
                                        </p>
                                    </div>
                                    <div class="card-body">
                                        <div class="row g-3">
                                            <div class="col-md-3 col-6">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar">
                                                        <div class="avatar-initial bg-primary rounded shadow">
                                                            <i class='bx bx-calendar-edit' ></i>                                                      
                                                        </div>
                                                    </div>
                                                    <div class="ms-3">
                                                        <div class="small mb-1">Reservation</div>
                                                        <h6 class="mb-0">${countReservation}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-6">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar">
                                                        <div class="avatar-initial bg-success rounded shadow">
                                                            <i class='bx bx-user' ></i><!-- comment -->                                                    
                                                        </div>
                                                    </div>
                                                    <div class="ms-3">
                                                        <div class="small mb-1">Customers</div>
                                                        <h6 class="mb-0">${countUser}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-6">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar">
                                                        <div class="avatar-initial bg-warning rounded shadow">
                                                            <i class='bx bxs-star-half' ></i><!-- comment -->                       
                                                        </div>
                                                    </div>
                                                    <div class="ms-3">
                                                        <div class="small mb-1">Point</div>
                                                        <h6 class="mb-0">${avgPoint}/5</h6>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3 col-6">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar">
                                                        <div class="avatar-initial bg-info rounded shadow">
                                                            <i class='bx bx-cog'></i>                                                        </div>
                                                    </div>
                                                    <div class="ms-3">
                                                        <div class="small mb-1">MostReserved</div>
                                                        <h6 class="mb-0">${mostService}</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ Transactions -->

                            <!-- Sales by Countries -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card">
                                    <div class="card-header d-flex align-items-center justify-content-between">
                                        <h5 class="card-title m-0 me-2">Newest Customers</h5>
                                        <p class="card-title m-0 me-2" style="color: #9055fd">View all</p>

                                    </div>

                                    <div class="card-body" style="max-height: 300px; overflow-y: auto;">
                                        <c:forEach var="c" items="${requestScope.newestAccounts}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-3" style="margin-top: -20px">
                                                        <img src="images/${c.avatar}" alt="alt" style="border-radius: 50%"/>
                                                    </div>
                                                    <div>
                                                        <div class="d-flex align-items-center gap-1">
                                                            <h6 class="mb-0" style="max-width: 200px; white-space: pre-wrap;">${c.fullname}</h6>
                                                        </div>
                                                        <p style="color: #56ca00;  font-size: 13px; max-width: 150px; white-space: pre-wrap;">${c.email}</p>
                                                    </div>
                                                </div>
                                                <div class="text-end">
                                                    <h6 class="mb-0" style="max-width: 100px; white-space: pre-wrap;">${c.address}</h6>
                                                    <small style="color: #ffb400">${c.created_at}</small>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>


                                </div>
                            </div>
                            <!--/ Sales by Countries -->

                            <!-- Deposit / Withdraw -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card">
                                    <div class="card-header d-flex align-items-center justify-content-between">
                                        <h5 class="card-title m-0 me-2">Revenue by service</h5>
                                        <p class="card-title m-0 me-2" style="color: #9055fd">View all</p>

                                    </div>
                                    <div class="card-body" style="max-height: 300px; overflow-y: auto;">
                                        <c:forEach var="c" items="${requestScope.mostSerItems}">
                                            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-3">
                                                        <div class="avatar-initial bg-label-success rounded-circle">SV</div>
                                                    </div>
                                                    <div>
                                                        <div class="d-flex align-items-center gap-1">
                                                            <h6 class="mb-0" style="max-width: 200px; white-space: pre-wrap;">${c.serviceName}</h6>
                                                        </div>
                                                        <small style="color: #ff4c51">Quantity: ${c.quantity}</small>
                                                    </div>
                                                </div>
                                                <div class="text-end">
                                                    <h6 class="mb-0">${c.service_price} $</h6>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <!-- Deposit / Withdraw -->
                            <div class="col-xl-4 col-md-6">
                                <div class="card">
                                    <div class="card-header d-flex align-items-center justify-content-between">
                                        <h5 class="card-title m-0 me-2">Feedback</h5>
                                        <p class="card-title m-0 me-2" style="color: #9055fd">View all</p>

                                    </div>
                                    <div class="card-body" style="max-height: 300px; overflow-y: auto;">
                                        <c:forEach var="entry" items="${requestScope.feedbackList}">

                                            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                                                <div class="d-flex align-items-center">
                                                    <div class="avatar me-3" style="margin-top: -20px">
                                                        <div class="avatar-initial bg-label-success rounded-circle">US</div>
                                                    </div>
                                                    <div>
                                                        <div class="d-flex align-items-center gap-1">
                                                            <h6 class="mb-0" style="max-width: 200px; white-space: pre-wrap;">${entry.key.customerName}</h6>

                                                        </div>
                                                        <p style="color: #56ca00;  font-size: 13px; max-width: 200px; white-space: pre-wrap;">${entry.key.serviceName}</p>
                                                    </div>
                                                </div>
                                                <div class="text-end">
                                                    <h6 class="mb-0">${entry.key.point}</h6>
                                                    <small > <i class='bx bxs-star' style="color: gold;"></i></small>
                                                </div>
                                            </div>
                                        </c:forEach>  
                                    </div>
                                </div>
                            </div>
                            <!-- Deposit / Withdraw -->

                            <!-- Weekly Overview Chart -->


                            <!--/ Weekly Overview Chart -->

                            <!-- Data Tables -->
                            <div class="col-12">
                                <div style="color: #9055fd">New Rersavation</div>
                                <div class="card">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class="table-light">
                                                <tr>
                                                    <th class="text-truncate">User</th>
                                                    <th class="text-truncate">Total</th>
                                                    <th class="text-truncate">Create At</th>
                                                    <th class="text-truncate">Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="c" items="${requestScope.reservations}">
                                                    <tr>
                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <div class="avatar avatar-sm me-3">
                                                                    <img src="images/avatar1.jpg" alt="Avatar" class="rounded-circle" />
                                                                </div>
                                                                <div>
                                                                    <h6 class="mb-0 text-truncate">${c.customerName}</h6>
                                                                </div>
                                                            </div>
                                                        </td>                                                    
                                                        <td class="text-truncate">${c.total}</td>
                                                        <td class="text-truncate">${c.created_at}</td>
                                                        <c:if test="${c.status == 1}">
                                                            <td><span class="badge bg-label-warning rounded-pill">Submit</span></td>
                                                        </c:if>
                                                        <c:if test="${c.status == 2}">
                                                            <td><span class="badge bg-label-success rounded-pill">Success</span></td>
                                                        </c:if>
                                                        <c:if test="${c.status == 3}">
                                                            <td><span class="badge bg-label-secondary rounded-pill">Inactive</span></td>
                                                        </c:if>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <!--/ Data Tables -->
                        </div>
                    </div>
                    <!-- / Content -->



                    <div class="content-backdrop fade"></div>
                </div>
                <!-- Content wrapper -->
            </div>
            <!-- / Layout page -->
        </div>

        <!-- Overlay -->
        <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
   
    <script src="../assets/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/vendor/libs/popper/popper.js"></script>
    <script src="../assets/vendor/js/bootstrap.js"></script>
    <script src="../assets/vendor/libs/node-waves/node-waves.js"></script>
    <script src="../assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="../assets/vendor/js/menu.js"></script>
    <script>
                                        function validateForm() {
                                            var fromDate = new Date(document.getElementById("input_from").value);
                                            var toDate = new Date(document.getElementById("input_to").value);
                                            var currentDate = new Date();

                                            if (fromDate >= toDate) {
                                                alert("Ngày bắt đầu (From) phải nhỏ hơn ngày kết thúc (To).");
                                                return false;
                                            }

                                            if (fromDate > currentDate) {
                                                alert("Ngày bắt đầu (From) không được lớn hơn ngày hiện tại.");
                                                return false;
                                            }

                                            return true;
                                        }

                                        // Không cho phép người dùng chọn ngày lớn hơn ngày hiện tại
                                        document.getElementById("input_from").setAttribute("max", currentDate.toISOString().split('T')[0]);
                                        document.getElementById("input_to").setAttribute("max", currentDate.toISOString().split('T')[0]);
    </script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="js/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="js/main.js"></script>

    <!-- Page JS -->
    <script src="js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>

</body>

</html>
