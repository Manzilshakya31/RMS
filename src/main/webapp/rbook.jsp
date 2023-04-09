<%-- 
    Document   : rbook
    Created on : 6 Apr 2023, 13:46:05
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Restaurant home</title>

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
                                <li><a href="Reservlet?page=mlist">Menu</a></li>
                                <!--                                <li><a href="today-special.jsp">Today Special</a></li>-->
                                <li><a href="menu.jsp"class="active">Status</a></li>
                                <li><a href="map.jsp">Location</a></li>
                                <li><a href="Reservlet?page=logout">Sign Out</a></li>
                            </ul>
                        </nav>   
                    </div>           
                </div>    
            </div>
        </div>

        <section class="ftco-section" id="space">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h3 class="h5 mb-4 text-center"><b>Booking</b></h3>
                        <div class="table-wrap">
                            <table class="table myaccordion table-hover" id="accordion">
                                <thead>
                                    <tr>
                                        <th>S.N</th>
                                        <th>Table name</th>
                                        <th>Seat</th>
                                        <th>Status</th>
                                        <th>&nbsp;</th>
                                    </tr>

                                    <tr>
                                        <c:forEach items="${userlist}" var="usr">
                                            <td>${usr.getdId()}</td>
                                            <td>${usr.getdname()}</td>
                                            <td>${usr.getdescription()}</td>
                                            <td>
                                                <c:choose>
                                                    <c:when test="${usr.getStatus()==1}">
                                                        Red
                                                    </c:when>    
                                                    <c:when test="${usr.getStatus()==2}">
                                                        Yellow 
                                                    </c:when> 
                                                    <c:when test="${usr.getStatus()==3}">
                                                        Green 
                                                    </c:when> 
                                                </c:choose>
                                            </td>
                                            <td scope="col">
                                                <a href="bookServlet?page=userdetails&id=${usr.getdId()}">
                                                    User details
                                                </a>

                                            </td>
                                            <td>
                                                <a href="bookServlet?page=deleteuser&id=${usr.getdId()}">
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                <td><button type="button">Edit</button></td>

                                </thead>
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
            </div>
        </section>

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

        </script><!-- comment -->

    </body>
</html>
