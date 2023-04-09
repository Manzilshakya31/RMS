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

        <title>Add Menu</title>
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
                            <h3>Add Menu</h3>

                            <form action="../Menuservlet?page=addlist" method="post">
                                <div class="form-group first">
                                    <label for="username">Disk Name</label>
                                    <input type="text" class="form-control" placeholder="Dish Name" name="nname">
                                </div>
                                <div class="form-group first">
                                    <label for="email">Description</label>
                                    <input type="text" class="form-control" placeholder="Description" name="ndesc">
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Price</label>
                                    <input type="text" class="form-control" placeholder="Price"  name="nprice">
                                </div>

                                <div class="d-flex mb-5 align-items-center">
                                   
<!--                                    <span class="ml-auto"><a href="#" class="forgot-pass">Forgot Password</a></span> -->
                                </div>

                                <input type="submit" value="Add" class="btn btn-block btn-primary">
<!--                                <p>If you already have account <a href="rlogin.jsp">Sign In</a> </p>-->
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
