<%-- 
    Document   : change_pass
    Created on : Oct 11, 2023, 11:27:33 PM
    Author     : mihxdat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Login</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

    </head>
    <body>
        <section style="background-color: #181A1B">
            <div class="container py-5 h-100" >
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card bg-dark text-white" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">

                                <div class="mb-md-5 mt-md-4 pb-5">
                                    
                                    <form action="change_pass" method="post">
                                        <h2 class="fw-bold mb-2 text-uppercase">Change password</h2>
                                        <p class="text-white-50 mb-5">Hãy nhập Mật khẩu cũ và mới của bạn!</p>
                                        <p class="text-white-50 mb-5"><%=request.getAttribute("msg")!=null?request.getAttribute("msg"):""%></p>
                                        <div class="form-outline form-white mb-4">
                                            <input name="oldpass" type="password" id="typeOldP" class="form-control form-control-lg" />
                                            <label class="form-label" for="typeOldP">Old Password</label>
                                        </div>  
                                        <div class="form-outline form-white mb-4">
                                            <input name="newpass" type="password" id="typeNewP" class="form-control form-control-lg" />
                                            <label class="form-label" for="typeNewP">New Password</label>
                                        </div>
                                        <div class="form-outline form-white mb-4">
                                            <input name="renewpass" type="password" id="typeReNewP" class="form-control form-control-lg" />
                                            <label class="form-label" for="typeReNewP">ReNew Password</label>
                                        </div>
                                        <button onclick="sendback()" class="btn btn-outline-light btn-lg px-5" type="button">Back</button>
                                        <button class="btn btn-outline-light btn-lg px-5" type="submit">Save</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
    <script>
        function sendback() {
            window.location.href = "profile";
        }
    </script>
</html>

