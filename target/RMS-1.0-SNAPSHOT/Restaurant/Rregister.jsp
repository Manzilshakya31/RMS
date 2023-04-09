<%-- 
    Document   : Login
    Created on : 9 Mar 2023, 20:45:34
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <title>login</title>
    </head>
    <body>
        <style>
            .full{
                position: relative;
                width: 1280px;
                height: 832px;

                background: #DFDFDF;
            }

            .login{
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                padding: 0px;
                gap: 32px;

                position: absolute;
                width: 360px;
                height: 456px;
                left: 200px;
                top: 197px;
            }

            .image{
                position: absolute;
                width: 555px;
                height: 832px;
                left: 900px;
                top: 0px;
            }

            .txtfield{

                box-sizing: border-box;

                /* Auto layout */
                display: flex;
                flex-direction: row;
                align-items: center;
                padding: 10px 14px;
                gap: 8px;

                width: 360px;
                height: 44px;

                /* Base/White */
                background: #FFFFFF;
                /* Gray/300 */
                border: 1px solid #D0D5DD;
                /* Shadow/xs */
                box-shadow: 0px 1px 2px rgba(16, 24, 40, 0.05);
                border-radius: 8px;

                /* Inside auto layout */
                flex: none;
                order: 1;
                align-self: stretch;
                flex-grow: 0;
            }
            .text{
                width: 80px;
                height: 20px;

                font-family: 'Roboto';
                font-style: normal;
                font-weight: 500;
                font-size: 14px;
                line-height: 20px;
                /* identical to box height, or 143% */

                color: #000000;


                /* Inside auto layout */
                flex: none;
                order: 0;
                flex-grow: 0;
            }

        </style>
        <div class="full">
            <div class="login">
                <h1 class="tm-handwriting-font">Register</h1>
                <p>Welcome back! Please enter your details.</p>
                <form action="user?page=newuser" method="post" class="col-lg-12" id="form">
                    <table>
                        <tr>
                            <th><label class="white-text tm-handwriting-font tm-welcome-title" for="fname">Restaurant name:</label></th>
                            <td><input type="text" id="uname" name="rname"></td>
                        </tr>
<!--                        <tr>
                            <th><label class="white-text tm-handwriting-font tm-welcome-title" for="fname">Email:</label></th>
                            <td><input type="text" id="uname" name="uemail"></td>
                        </tr>-->
                        <tr>
                            <th><label class="white-text tm-handwriting-font tm-welcome-title" for="password">Password:</label></th>
                            <td><input type="password" id="upwd" name="rpassword"></td>
                        </tr>
                    </table>
                    <button class="tm-more-button" id="login" type="submit"> Register </button>


                    <label>Do you have an account<a href="register.jsp">Sign up</a></label>

                </form>

            </div>
            <div>
                <img class="image" src="../img/special-1.jpg">
            </div>
        </div>
    </body>
</html>
