<%-- 
    Document   : index
    Created on : 26 Mar 2023, 15:49:00
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Cafe House</title>

  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />


  </head>
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
                <li><a href="1.jsp" class="active">Home</a></li>
                <li><a href="today-special.jsp">Today Special</a></li>
                <li><a href="Menuservlet?page=clist">Menu</a></li>
                <li><a href="bookServlet?page=clist">Status</a></li>
                <li><a href="map.jsp">Map</a></li>
                <li><a href="user?page=logout">Logout</a></li>
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
          <h2 class="white-text tm-handwriting-font tm-welcome-header"><img src="img/header-line.png" alt="Line" class="tm-header-line">&nbsp;Welcome To&nbsp;&nbsp;<img src="img/header-line.png" alt="Line" class="tm-header-line"></h2>
          <h2 class="gold-text tm-welcome-header-2">Cafe House</h2>
          <!--<p class="gray-text tm-welcome-description">Cafe House template is a mobile-friendly responsive <span class="gold-text">Bootstrap v3.3.5</span> layout by <span class="gold-text">templatemo</span>. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculusnec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>
          --><a href="#main" class="tm-more-button tm-more-button-welcome">Details</a>      
        </div>
        <img src="img/table-set.png" alt="Table Set" class="tm-table-set img-responsive">             
      </div>      
    </section>
    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <div class="col-lg-9 col-md-9 col-sm-8">
            <h2 class="tm-section-header gold-text tm-handwriting-font">The Best Coffee for you</h2>
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
        <section class="tm-section tm-section-margin-bottom-0 row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Popular Items</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>
          <div class="col-lg-12 tm-popular-items-container">
            <div class="tm-popular-item">
              <img src="img/popular-1.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">a</span>mericano</h3><hr class="tm-popular-item-hr">
                <p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. sed ipsum.</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Order Now</a>
                </div>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="img/popular-2.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">c</span>appuccino</h3><hr class="tm-popular-item-hr">
                <p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. sed ipsum.</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Order Now</a>
                </div>
              </div>              
            </div>
            <div class="tm-popular-item">
              <img src="img/popular-3.jpg" alt="Popular" class="tm-popular-item-img">
              <div class="tm-popular-item-description">
                <h3 class="tm-handwriting-font tm-popular-item-title"><span class="tm-handwriting-font bigger-first-letter">m</span>ocha</h3><hr class="tm-popular-item-hr">
                <p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque. sed ipsum.</p>
                <div class="order-now-container">
                  <a href="#" class="order-now-link tm-handwriting-font">Order Now</a>
                </div>
              </div>              
            </div>
          </div>          
        </section>
        <section class="tm-section row">
          <div class="col-lg-12 tm-section-header-container">
            <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Today's Special</h2>
            <div class="tm-hr-container"><hr class="tm-hr"></div>
          </div>          
          <div class="col-lg-12 tm-special-container margin-top-60">
            <div class="tm-special-container-left"> <!-- left -->
              <div class="tm-special-item">
                <div class="tm-special-img-container">
                  <img src="img/special-1.jpg" alt="Special" class="tm-special-img img-responsive">  
                  <a href="#">
                    <div class="tm-special-description">
                      <h3 class="tm-special-title">Donec pede justo</h3>
                      <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>  
                    </div>            
                  </a>
                </div>
              </div>
            </div>
            <div class="tm-special-container-right"> <!-- right -->
              <div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/special-2.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <h3 class="tm-special-title">Etiam sit amet</h3>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>
              <div class="tm-special-container-lower">
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/special-3.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>Vivamus elementum</p>
                      </div>
                    </a>
                  </div>
                </div>
                <div class="tm-special-item">
                  <div class="tm-special-img-container">
                    <img src="img/special-4.jpg" alt="Special" class="img-responsive">  
                    <a href="#">
                      <div class="tm-special-description">
                        <p>Quisque rutrum.</p>
                      </div>
                    </a>
                  </div>
                </div>  
              </div>              
            </div>
          </div>
        </section>
        <section class="tm-section">
          <div class="row">
            <div class="col-lg-12 tm-section-header-container">
              <h2 class="tm-section-header gold-text tm-handwriting-font"><img src="img/logo.png" alt="Logo" class="tm-site-logo"> Daily Menu</h2> 
              <div class="tm-hr-container"><hr class="tm-hr"></div> 
            </div>  
          </div>          
          <div class="row">
            <div class="tm-daily-menu-container margin-top-60">
              <div class="col-lg-4 col-md-4">
                <img src="img/menu-board.png" alt="Menu board" class="tm-daily-menu-img">      
              </div>            
              <div class="col-lg-8 col-md-8">
                <p>Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.</p>
                <ol class="margin-top-30">
                  <li>Tellus eget condimentum rhoncus.</li> 
                  <li>Sem quam semper libero.</li>
                  <li>Sit amet adipiscing sem neque sed ipsum.</li> 
                  <li>Nam quam nunc, blandit vel, luctus pulvinar.</li> 
                  <li>Maecenas nec odio et ante tincidunt tempus.</li> 
                  <li>Donec vitae sapien ut libero ventenatis faucibus.</li> 
                </ol>
                <a href="menu.jsp" class="tm-more-button margin-top-30">Read More</a>    
              </div>
            </div>
          </div>          
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
<!--      <div>
        <div class="container">
          <div class="row tm-copyright">
           <p class="col-lg-12 small copyright-text text-center">Copyright &copy; Your Cafe House Zimnal</p>
         </div>  
       </div>
     </div>-->
   </footer> <!-- Footer content-->  
   <!-- JS -->
   <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      <!-- jQuery -->
   <script type="text/javascript" src="js/templatemo-script.js"></script>      <!-- Templatemo Script -->

 </body>
 </html>