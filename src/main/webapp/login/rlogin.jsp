<%-- 
    Document   : rlogin
    Created on : 26 Mar 2023, 07:41:31
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="csss/owl.carousel.min.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="csss/bootstrap.min.css">

        <!-- Style -->
        <link rel="stylesheet" href="csss/style.css">

        <title>Login</title>
    </head>
    <style>
        .btn{
            color: #C79C60;
            background-color: #3E3331;
            border-color: #3E3331;
        }
        .btn:hover{
            color: white;
            background-color: #3E3331;
            border-color: #3E3331;
        }
    </style>
    <body>


        <div class="d-lg-flex half">
            <div class="bg order-1 order-md-2" style="background-image: url('images/bg1.jpg');"></div>
            <div class="contents order-2 order-md-1">

                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-md-7">
                            <h3>LOGIN</h3>

                            <form action="../Reservlet?page=login" method="post">
                                <div class="form-group first">
                                    <label for="username">Name</label>
                                    <input type="text" class="form-control" placeholder="your-email@gmail.com" id="username" name="rname">
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" placeholder="Your Password" id="password" name="rpassword">
                                </div>

                                <div class="d-flex mb-3 align-items-center">
<!--                                    <label class="control control--checkbox mb-0"><span class="caption">Remember me</span>
                                        <input type="checkbox" checked="checked"/>
                                        <div class="control__indicator"></div>
                                    </label>-->
                                    <span class="ml-auto"><a href="rforgot.jsp" class="forgot-pass">Forgot Password</a></span> 
                                </div>

                                <input type="submit" value="Log In" class="btn btn-block btn-primary"><br>
                                <p>If you don't have account <a href="rregister.jsp">Sign Up</a> </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>


        </div>



        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
