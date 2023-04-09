
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Book Edit</title>

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
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
                                <li><a href="login/ulogin.jsp">Sign Out</a></li>
                            </ul>
                        </nav>   
                    </div>           
                </div>    
            </div>
        </div>
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="h5 mb-4 text-center">Booking Edit</h3>
                        <div class="table-wrap">
                            <form action="bookServlet?page=editUser" method="post">
                                <input type="number" value="${usr.getdId()}" name="id" hidden> 
                                <input type="text" value="${usr.getdname()}" name="name">
                                <input type="text" value="${usr.getdescription()}" name="description">
                                <input type="text" value="${usr.getStatus()}" name="Status">
                                <input type="submit" value="Edit">
<!--                                <button type="button" >Edit</button>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
