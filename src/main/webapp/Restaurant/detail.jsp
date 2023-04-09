<%-- 
    Document   : detail
    Created on : 20 Mar 2023, 14:28:41
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
    <head>
        <title>Table 08</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="css/style.css">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

    </head>
    <body>
        <div class="tm-top-header">
      <div class="container">
        <div class="row">
          <div class="tm-top-header-inner">
            <div class="tm-logo-container">
              <img src="img/logo.png" alt="Logo" class="tm-site-logo">
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

<!-- HEader ends -->

        <div class="search-container">
            <form action="">
                <input type="text" placeholder="Search.." name="search">
                <button type="submit"><i class="fa fa-search"></i></button>
            </form>
        </div>


        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="h5 mb-4 text-center">Updates</h3>
                        <div class="table-wrap">
                            <table class="table myaccordion table-hover" id="accordion">
                                <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <c:forEach items="${userlist}" var="usr">
                                        <tr>
                                            <td>${usr.getId()}</td>
                                            <td>${usr.getUsername()}</td>
                                            <td>${usr.getPassword()}</td>
                                            <td scope="col">
                                                <a href="Reservlet?page=userdetails&id=${usr.getId()}">
                                                    User details
                                                </a>

                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                
                                <button type="button">Edit</button>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <script src="js/jquery.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>


