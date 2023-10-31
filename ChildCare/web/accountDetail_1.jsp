<%-- 
    Document   : accountDetail.jsp
    Created on : Sep 26, 2023, 1:52:06 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link rel="stylesheet" href="admin/style.css">
        <link rel="stylesheet" href="admin/account.css">
        <title>Manage</title>
    </head>
    <body>
        <section id="sidebar">
            <a href="manageUser" class="brand">
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
                <form action="#">
                    <div class="form-input">
                    </div>
                </form>
                <a href="#" class="profile">
                    <img src="img/people.png">
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="container">
                    <div class="title">Account Profile</div>
                    <div class="content">
                        <form action="#" method="post">
                            <div class="user-details">
                                <div class="profile-card__img">
                                    <img style=" border-radius: 50%;
                                         position: relative;
                                         margin-left: 27rem;
                                         height: 12rem;" 
                                         src="${acc.getAvatar()}" alt="profile">
                                </div>
                                <div class="input-box">
                                    <span class="details">Full Name</span>
                                    <input type="text" value="${acc.getFullname()}" name="name" readonly>
                                </div>
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="text" value="${acc.getEmail()}" name="email" readonly>
                                </div>
                                <div class="input-box">
                                    <span class="details">Address</span>
                                    <input type="text" value="${acc.getAddress()}"  name="address" readonly>
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input type="text" value="${acc.getMobile()}" name="phone" readonly>
                                </div>
                                <div class="gender-details">
                                    <input type="radio" name="gender" id="dot-1" ${acc.isGender()?"checked":""}>
                                    <input type="radio" name="gender" id="dot-2" ${!acc.isGender()?"checked":""} >
                                    <span class="gender-title">Gender</span>
                                    <div class="category">
                                        <label for="dot-1">
                                            <span class="dot one"></span>
                                            <span class="gender">Male</span>
                                        </label>
                                        <label for="dot-2">
                                            <span class="dot two"></span>
                                            <span class="gender">Female</span>
                                        </label>
                                    </div>
                                </div>
                                <div class="input-box">
                                    <span class="details">Role</span>
                                    <input type="text" value="${acc.getRole()}" name="role" readonly>
                                </div>
                                <div class="input-box">
                                    <span class="details">Create Date</span>
                                    <input type="date" value="${acc.getCreated_at()}" name="createdate" readonly>
                                </div>
                                <div class="input-box">
                                    <span class="details">Update Date</span>
                                    <input type="date"  value="${acc.getUpdated_at()}" name="updatedate" readonly>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->
        <script src="admin/script.js"></script>
    </body>
</html>
