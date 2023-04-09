<%-- 
    Document   : NPP
    Created on : 27 Mar 2023, 16:31:27
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>NPP menu</title>

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />


    </head>
    <body>
        <!-- Preloader -->
        <!--    <div id="loader-wrapper">
              <div id="loader"></div>
              <div class="loader-section section-left"></div>
              <div class="loader-section section-right"></div>
            </div>-->
        <!-- End Preloader -->
        <div class="tm-top-header">
            <div class="container">
                <div class="row">
                    <div class="tm-top-header-inner">
                        <div class="tm-logo-container">
                            <img src="../img/logo.png" alt="Logo" class="tm-site-logo">
                            <h1 class="tm-site-name tm-handwriting-font">Cafe House</h1>
                        </div>
                        <div class="mobile-menu-icon">
                            <i class="fa fa-bars"></i>
                        </div>
                        <nav class="tm-nav">
                            <ul>
                                <li><a href="index.jsp" class="active">Home</a></li>
                                <li><a href="today-special.jsp">Today Special</a></li>
                                <li><a href="menu.jsp">Menu</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
                                <li><a href="login/ulogin.jsp">Sign In</a></li>
                            </ul>
                        </nav>   
                    </div>           
                </div>    
            </div>
        </div>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="h5 mb-4 text-center">NPP Menu</h3>
                        <div class="table-wrap">
                            <table class="table myaccordion table-hover" id="accordion">
                                <thead>
                                    <tr>
                                        <th>S.N</th>
                                        <th>Product Name</th>
                                        <th>Description</th>
                                        <th>Price</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                
                                
                                    <tr>
                                        <c:forEach items="${userlist}" var="usr">
                                        <td>${usr.getnId()}</td>
                                        <td>${usr.getnname()}</td>
                                        <td>${usr.getndesc()}</td>
                                        <td>${usr.getnprice()}</td>
                                        <td scope="col">
                                            <a href="Reservlet?page=userdetails&id=${usr.getnId()}">
                                                User details
                                            </a>

                                        </td>
                                    </tr>
                                </c:forEach>
                                <td><button type="button">Edit</button></td>

                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </body>
</html>
