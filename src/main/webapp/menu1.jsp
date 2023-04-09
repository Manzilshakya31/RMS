<%-- 
    Document   : menu1
    Created on : 2 Apr 2023, 11:43:00
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
        <title>Cafe House - Food and Drink Menu</title>

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

    </head>

    <style>
        #menulist{
            margin-left: 15%;
        }
    </style>
    <body>
        <!-- Preloader -->
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Preloader -->
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
                                <li><a href="1.jsp">Home</a></li>
                                <li><a href="today-special.jsp">Today Special</a></li>
                                <li><a href="Menuservlet?page=clist" class="active">Menu</a></li>
                                <li><a href="bookServlet?page=clist">Status</a></li>
                                <li><a href="map.jsp">MAP</a></li>
                                <li><a href="NewServlet?page=logout">Logout</a></li>
                            </ul>
                        </nav>   
                    </div>           
                </div>    
            </div>
        </div>
        <section class="tm-welcome-section">
            <div class="container tm-position-relative">
                <div class="tm-lights-container">
                    <img src="img/light.png" alt="Light" class="light light-1">
                    <img src="img/light.png" alt="Light" class="light light-2">
                    <img src="img/light.png" alt="Light" class="light light-3">  
                </div>        
                <div class="row tm-welcome-content">
                    <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="img/header-line.png" alt="Line" class="tm-header-line">&nbsp;Our Menus&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="tm-header-line"></h2>
                    <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>

                    <a href="#main" class="tm-more-button tm-more-button-welcome">Read More</a>      
                </div>
                <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">  
            </div>      
        </section>
        <div class="tm-main-section light-gray-bg">
            <div class="container" id="main">
                <section class="tm-section row">
                    <div class="col-lg-9 col-md-9 col-sm-8">
                        <h2 class="tm-section-header gold-text tm-handwriting-font">Variety of Menus</h2>
                        <h2>Cafe House</h2>
                        <p class="tm-welcome-description"> In Cafe House you can find different <span class="brown-text"><b>menus</b></span> of different restaurant where you will be able to enjoy delicious foods as your desire.</p>
                        <!--            <p class="tm-welcome-description">This is free HTML5 website template from <span class="blue-text">template</span><span class="green-text">mo</span>. Fndimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Ettiam sit amet orci eget eros faucibus tincidunt.</p>-->
                        <a href="#" class="tm-more-button margin-top-30">Read More</a> 
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-4 tm-welcome-img-container">
                        <div class="inline-block shadow-img">
                            <img src="img/1.jpg" alt="Image" class="img-circle img-thumbnail">  
                        </div>              
                    </div>            
                </section>          
                <section class="tm-section row">
                    <div class="col-lg-12 tm-section-header-container margin-bottom-30">
                        <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Our Menus</h2>
                        <div class="tm-hr-container"><hr class="tm-hr"></div>
                    </div>
                    <!--                    <div>-->
                    <div class="col-lg-3 col-md-3">
                        <div class="tm-position-relative margin-bottom-30">              
                            <nav class="tm-side-menu">
                                <ul>
                                    <li><a href="Menuservlet?page=clist" class="active">NPP</a></li>
                                    <li><a href="Menuservlet?page=clist">String</a></li>
                                    <li><a href="Menuservlet?page=clist">GG Machhan</a></li>
                                    <li><a href="#">Burger House</a></li>
                                    <li><a href="#">Adora</a></li>
                                    <li><a href="#">UP TOWN</a></li>
                                    <li><a href="#">KKFC</a></li>
                                    <li><a href="#">Himalayan JAVA</a></li>
                                    <li><a href="#">Velvet</a></li>
                                    <li><a href="bookServlet?page=rlist">Heritage</a></li>
                                    <li><a href="bookServlet?page=clist">Ambience</a></li>
                                </ul>              
                            </nav>    
                            <img src="img/vertical-menu-bg.png" alt="Menu bg" class="tm-side-menu-bg">
                        </div>  
                    </div>            
                    <div class="tm-menu-product-content col-lg-9 col-md-9"> <!-- menu content -->

                        <div class="row"  id="menulist">
                            <div class="col-md-12">
                                <h3 class="h5 mb-4 text-center">Menu List</h3>
                                <div class="table-wrap">
                                    <table class="table myaccordion table-hover" id="accordion">
                                        <thead>
                                            <tr>
                                                <!--                                                    <th>SN</th>-->
                                                <th>Product Name</th>
                                                <th>Description</th>
                                                <th>Price</th>
                                                <th>&nbsp;</th>
                                            </tr>

                                            <!--                                            <tbody>-->

                                            <tr>
                                                <c:forEach items="${userlist}" var="usr">
    <!--                                                <td>${usr.getnId()}</td>-->
                                                    <td>${usr.getnname()}</td>
                                                    <td>${usr.getndesc()}</td>
                                                    <td>${usr.getnprice()}</td>

                                                </tr>
                                            </c:forEach>


                                            <!--                                            </tbody>-->
                                        </thead>
                                        <!--                                            <button type="button">Edit</button>-->
                                        <tbody id="paginated-list" data-current-page="1" aria live="polite">
                                            <!--                                    for(){-->
                                            <tr>
                                                <td></td>
                                            </tr>
                                            <!--                                    }-->
                                        </tbody>
                                    </table>
                                    <nav class="pagination-container">
                                        <button class="pagination-button" id="prev-button" aria-label="Previous page" title="Previous page">
                                            &lt;
                                        </button>

                                        <div id="pagination-numbers">
                                        </div>

                                        <button class="pagination-button" id="next-button" aria-label="Next page" title="Next page">
                                            &gt;
                                        </button>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>  <!<!-- Menu ends here -->        
                </section>
            </div>
        </div> 
        <footer>
            <div class="tm-black-bg">
                <div class="container">
                    <div class="row margin-bottom-60">
                        <nav class="col-lg-3 col-md-3 tm-footer-nav tm-footer-div">
                            <h3 class="tm-footer-div-title">Main Menu</h3>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="#">Directory</a></li>
                                <li><a href="#">Blog</a></li>
                                <li><a href="#">Our Services</a></li>
                            </ul>
                        </nav>
                        <div class="col-lg-5 col-md-5 tm-footer-div">
                            <h3 class="tm-footer-div-title">About Us</h3>
                            <p class="margin-top-15">Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet.</p>
                            <p class="margin-top-15">Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus.</p>
                        </div>
                        <div class="col-lg-4 col-md-4 tm-footer-div">
                            <h3 class="tm-footer-div-title">Get Social</h3>
                            <p>Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante.</p>
                            <div class="tm-social-icons-container">
                                <a href="#" class="tm-social-icon"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-linkedin"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-youtube"></i></a>
                                <a href="#" class="tm-social-icon"><i class="fa fa-behance"></i></a>
                            </div>
                        </div>
                    </div>          
                </div>  
            </div>      

        </footer> <!-- Footer content-->  
        <!-- JS -->
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
        <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->



        <style>
            .hidden {
                display: none;
            }

            .pagination-container {
                width: calc(100% - 2rem);
                display: flex;
                align-items: center;
                /* position: absolute; */
                bottom: 0;
                padding: 1rem 0;
                justify-content: center;
            }

            .pagination-number,
            .pagination-button{
                font-size: 1.1rem;
                background-color: transparent;
                border: none;
                margin: 0.25rem 0.25rem;
                cursor: pointer;
                height: 2.5rem;
                width: 2.5rem;
                border-radius: .2rem;
                color: #dfdfdf;
            }

            .pagination-number:hover,
            .pagination-button:not(.disabled):hover {
                background: #767676;
            }

            .pagination-number.active {
                color: #fff;
                background: #3E3331;
            }
        </style>

        <script>
            const paginationNumbers = document.getElementById("pagination-numbers");
            const paginatedList = document.getElementById("paginated-list");
            const listItems = paginatedList.querySelectorAll("tr");
            const nextButton = document.getElementById("next-button");
            const prevButton = document.getElementById("prev-button");

            const paginationLimit = 10
            const pageCount = Math.ceil(listItems.length / paginationLimit);
            let currentPage = 1;

            const disableButton = (button) => {
                button.classList.add("disabled");
                button.setAttribute("disabled", true);
            };

            const enableButton = (button) => {
                button.classList.remove("disabled");
                button.removeAttribute("disabled");
            };

            const handlePageButtonsStatus = () => {
                if (currentPage === 1) {
                    disableButton(prevButton);
                } else {
                    enableButton(prevButton);
                }

                if (pageCount === currentPage) {
                    disableButton(nextButton);
                } else {
                    enableButton(nextButton);
                }
            };

            const handleActivePageNumber = () => {
                document.querySelectorAll(".pagination-number").forEach((button) => {
                    button.classList.remove("active");
                    const pageIndex = Number(button.getAttribute("page-index"));
                    if (pageIndex == currentPage) {
                        button.classList.add("active");
                    }
                });
            };

            const appendPageNumber = (index) => {
                const pageNumber = document.createElement("button");
                pageNumber.className = "pagination-number";
                pageNumber.innerHTML = index;
                pageNumber.setAttribute("page-index", index);
                pageNumber.setAttribute("aria-label", "Page " + index);

                paginationNumbers.appendChild(pageNumber);
            };

            const getPaginationNumbers = () => {
                for (let i = 1; i <= pageCount; i++) {
                    appendPageNumber(i);
                }
            };

            const setCurrentPage = (pageNum) => {
                currentPage = pageNum;

                handleActivePageNumber();
                handlePageButtonsStatus();

                const prevRange = (pageNum - 1) * paginationLimit;
                const currRange = pageNum * paginationLimit;

                listItems.forEach((item, index) => {
                    item.classList.add("hidden");
                    if (index >= prevRange && index < currRange) {
                        item.classList.remove("hidden");
                    }
                });
            };

            window.addEventListener("load", () => {
                getPaginationNumbers();
                setCurrentPage(1);

                prevButton.addEventListener("click", () => {
                    setCurrentPage(currentPage - 1);
                });

                nextButton.addEventListener("click", () => {
                    setCurrentPage(currentPage + 1);
                });

                document.querySelectorAll(".pagination-number").forEach((button) => {
                    const pageIndex = Number(button.getAttribute("page-index"));

                    if (pageIndex) {
                        button.addEventListener("click", () => {
                            setCurrentPage(pageIndex);
                        });
                    }
                });
            });

        </script>
    </body>
</html>
