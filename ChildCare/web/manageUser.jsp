<%-- 
    Document   : manageUser
    Created on : Sep 26, 2023, 11:57:11 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="admin/style.css">

        <title>Manage</title>
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <i class='bx bxs-smile'></i>
                <span class="text">MICO</span>
            </a>
            <ul class="side-menu top">
                <li class="active">
                    <a href="manageUser">
                        <i class='bx bxs-dashboard' ></i>
                        <span class="text">Manage User</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="#" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <i class='bx bx-menu' ></i>
                <form action="searchAccount" method="post">
                    <div class="form-input">
                        <input type="search" name="search" placeholder="Search...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                    </div>
                </form>
                <a href="#" class="profile">
                    <img src="img/people.png">
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Manage User</h1>
                    </div>
                    <a href="#" class="btn-download">
                        <i class='bx bxs-add' ></i>
                        <span class="text">Add New User</span>
                    </a>
                </div>

                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <h3>User List</h3>
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Full Name</th>
                                    <th>Email</th>
                                    <th>Mobile</th>
                                    <th>Role</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${account}" var="a">
                                    <tr>
                                        <td><a style="color: black" href="accountDetail?id=${a.getId()}">${a.getId()}</a></td>
                                        <td><a style="color: black" href="accountDetail?id=${a.getId()}">
                                                <img src="${a.getAvatar()}">
                                                <p>${a.getFullname()}</p>
                                            </a>
                                        </td>
                                        <td><a style="color: black" href="accountDetail?id=${a.getId()}">${a.getEmail()}</a></td>
                                        <td><a style="color: black" href="accountDetail?id=${a.getId()}">${a.getMobile()}</a></td>
                                        <td><a style="color: black" href="accountDetail?id=${a.getId()}">${a.getRole()}</a></td>
                                        <c:if test="${a.getStatus() == 1}">
                                            <td><span class="status completed">Active</span></td>
                                        </c:if>
                                    </tr>
                                </c:forEach>               
                            </tbody>
                        </table>
                        <div class="clearfix">
                            <ul class="pagination">
                                <li class="page-item disabled"><a href="manageUser?index=1">Previous</a></li>
                                    <c:forEach var = "i" begin = "1" end = "${numberPage}">
                                    <li class="${param['index']==i?'page-item active':''}"><a class="page-link" href="manageUser?index=${i}"><span>${i}</span></a></li>
                                    </c:forEach>
                                <li class="page-item"><a href="manageUser?index=${numberPage}" class="page-link">Next</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->


        <script src="admin/script.js"></script>
    </body>
</html>
