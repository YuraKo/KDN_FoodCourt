<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">

   <title>KDN Restaurant</title>

   <!-- CSS includes -->
   <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
   <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://www.shieldui.com/shared/components/latest/css/light/all.min.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet">

   <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->
</head>
<style type="text/css">
#login {
    padding-top: 50px
}
#login .form-wrap {
    width: 30%;
    margin: 0 auto;
}
#login h1 {
    color: #1fa67b;
    font-size: 18px;
    text-align: center;
    font-weight: bold;
    padding-bottom: 20px;
}
#login .form-group {
    margin-bottom: 25px;
}
#login .checkbox {
    margin-bottom: 20px;
    position: relative;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    -o-user-select: none;
    user-select: none;
}
#login .checkbox.show:before {
    content: '\e013';
    color: #1fa67b;
    font-size: 17px;
    margin: 1px 0 0 3px;
    position: absolute;
    pointer-events: none;
    font-family: 'Glyphicons Halflings';
}
#login .checkbox .character-checkbox {
    width: 25px;
    height: 25px;
    cursor: pointer;
    border-radius: 3px;
    border: 1px solid #ccc;
    vertical-align: middle;
    display: inline-block;
}
#login .checkbox .label {
    color: #6d6d6d;
    font-size: 13px;
    font-weight: normal;
}
#login .btn.btn-custom {
    font-size: 14px;
   margin-bottom: 20px;
}
#login .forget {
    font-size: 13px;
   text-align: center;
   display: block;
}

.form-control {
    color: #212121;
}
.btn-custom {
    color: #fff;
   background-color: #1fa67b;
}
.btn-custom:hover,
.btn-custom:focus {
    color: #fff;
}

#loginFooter {
    color: #6d6d6d;
    font-size: 12px;
    text-align: center;
}
#loginFooter p {
    margin-bottom: 0;
}
#loginFooter a {
    color: inherit;
}
</style>
<body>

<!-- Navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
         </button>
         <a href="#" title="My Restaurant Bootstrap Theme">
                <img class="img-responsive" src="images/kdn.jpg" alt="My Restaurant Bootstrap Theme" />
            </a>
      </div>
      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav navbar-right">
            <li><a href="#news" class="smooth-scroll">Notice</a></li>
            <li><a href="#services" class="smooth-scroll">Menu</a></li>
            <li><a href="#about" class="smooth-scroll">Review</a></li>
            <li><a href="#dishes" class="smooth-scroll">TOP4</a></li>
     
            <c:if test = "${empty id}">
               <li><a href="registerForm.do" class="smooth-scroll"> Register </a></li>
               <li><a href="" class="smooth-scroll" data-toggle="modal" data-target="#myModal"> Login </a></li>
            </c:if>
            <c:if test = "${!empty id}">
               <li><a href="mypageForm.do" class="smooth-scroll" > MyPage </a></li>
               <li><a href="logout.do" class="smooth-scroll" > Logout </a></li>
            </c:if>
         </ul>
      </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
</nav>

<!-- 모달 팝업 --> 
<div class="modal fade forget-modal" id = "myModal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-sm">
      <div class="modal-content">
         <div class="modal-header">
                <h4>Login with Employee Number</h4>
                    <form role="form" action="login.do" method="post" id="login-form" autocomplete="off" >
                        <div class="form-group">
                            <label for="email" class="sr-only">Email</label>
                            <input type="text" name="id" id="id" class="form-control" placeholder="Employee Number">
                        </div>
                        <div class="form-group">
                            <label for="key" class="sr-only">Password</label>
                            <input type="password" name="key" id="key" class="form-control" placeholder="Password">
                        </div>
                        <div class="checkbox">
                            <span class="character-checkbox" onclick="showPassword()"></span>
                            <span class="label">Show password</span>
                        </div>
                        <input type="submit" id="btn-login" class="btn btn-custom btn-lg btn-block" value="Log in">
                    </form>
                    <a href="javascript:;" class="forget" data-toggle="modal" data-target=".forget-modal">Forgot your password?</a>
                    <hr>
         </div>
      </div> <!-- /.modal-content -->
   </div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->

<div class="modal fade forget-modal" tabindex="-1" role="dialog" aria-labelledby="myForgetModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-sm">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
               <span aria-hidden="true">×</span>
               <span class="sr-only">Close</span>
            </button>
            <h4 class="modal-title">Recovery password</h4>
         </div>
         <div class="modal-body">
            <p>Type your email account</p>
            <input type="email" name="recovery-email" id="recovery-email" class="form-control" autocomplete="off">
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
            <button type="button" class="btn btn-custom">Recovery</button>
         </div>
      </div> <!-- /.modal-content -->
   </div> <!-- /.modal-dialog -->
</div> <!-- /.modal -->

<!-- Carousel -->   
<div id="theme-carousel" class="carousel slide" data-ride="carousel">
   <!-- Indicators -->
   <ol class="carousel-indicators">
      <li data-target="#theme-carousel" data-slide-to="0" class="active"></li>
      <li data-target="#theme-carousel" data-slide-to="1"></li>
      <li data-target="#theme-carousel" data-slide-to="2"></li>
   </ol>
   <!-- Wrapper for slides -->
   <div class="carousel-inner" role="listbox">
      <div class="item active">
         <img src="images/carousel1.jpg" alt="carousel1" style="width:100%" />
         <div class="carousel-caption">
            <h2>"People who love to eat are always the best people"</h2>
            <p>Julia Child</p>
         </div>
      </div>
      <div class="item">
         <img src="images/carousel2.jpg" alt="carousel2" style="width:100%" />
         <div class="carousel-caption">
            <h2>What does it come from?</h2>
            <p>Contrary to popular belief, Lorem Ipsum is not simply random text.</p>
         </div>
      </div>
      <div class="item">
         <img src="images/carousel3.jpg" alt="carousel3" style="width:100%">
         <div class="carousel-caption">
            <h2>Why do we use it?</h2>
            <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
         </div>
      </div>
   </div>
   <!-- Controls -->
   <a class="left carousel-control" href="#theme-carousel" role="button" data-slide="prev">
        <div class="carousel-control-arrow">&#8249;</div>
   </a>
   <a class="right carousel-control" href="#theme-carousel" role="button" data-slide="next">
        <div class="carousel-control-arrow">&#8250;</div>
   </a>
</div>

<div class="container-news">
    <div class="container">
        <div class="page-header" id="news">
            <h1 class="text-center text-danger">News &amp; Events</h1>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="col-md-2 text-center">
               <p class="">
                  <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
               </p>
            </div>
            <div class="col-md-10 text-justify">
               <h3>Wine Tasting</h3>
               <p>Saturday, 17th August</p><br />
               <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo 
               ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis 
               dis parturi ent montes, nascetur ridiculus mus.</p>
            </div>
            <div class="col-md-2 text-center">
               <p class="">
                  <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
               </p>
            </div>
            <div class="col-md-10 text-justify">
               <h3>Wine Tasting</h3>
               <p>Saturday, 24th August</p><br />
               <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo 
               ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis 
               dis parturi ent montes, nascetur ridiculus mus.</p>
            </div>
                <div class="col-md-2 text-center">
               <p class="">
                  <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
               </p>
            </div>
            <div class="col-md-10 text-justify">
               <h3>Wine Tasting</h3>
               <p>Sunday, 25th August</p><br />
               <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo 
               ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis 
               dis parturi ent montes, nascetur ridiculus mus.</p>
            </div>
            </div>
            <div class="col-md-4 text-center">
                <h3>Events</h3>
                <div id="calendar" class="calendar"></div>
                <br /><br />
                <h3>Download App</h3>
                <div id="qrcode" class="qrcode"></div>
            </div>
        </div>
    </div>
</div>

<div class="container-services">
    <div class="container">
        <div class="page-header" id="services">
            <h1 class="text-center text-default">We Provide the Following</h1>
        </div>
      <div class="clearfix hidden-xs" style="width:100%; height:50px;"></div>
        <div class="row">
            <div class="col-md-3 text-center">
            <span class="fa fa-calendar svcicon"></span>
                <br /><br />
                <h3 class="text-warning">Open 24/7</h3><br />
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            </p>
            </div>
            <div class="col-md-3 text-center">
                <span class="fa fa-map-signs svcicon"></span>
                <br /><br />
            <h3 class="text-warning">Free parking</h3><br />
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            </p>
            </div>
         <div class="col-md-3 text-center">
                <span class="fa fa-map-o svcicon"></span>
                <br /><br />
            <h3 class="text-warning">Central location</h3><br />
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            </p>
            </div>
            <div class="col-md-3 text-center">
                <span class="fa fa-thumbs-o-up svcicon"></span>
                <br /><br />
            <h3 class="text-warning">High quality</h3><br />
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
            </p>
            </div>
        </div>
    </div>
</div>

<div class="container-about">
    <div class="container">
        <div class="page-header" id="about">
            <h1 class="text-center text-danger">The Chefs' Opinion</h1>
        </div>
        <div class="row">
            <div class="col-md-4 text-center">
                <p>"Great service and food"</p>
                <br />
            <p><img src="images/image3.jpg" style="border-radius:50%; width:180px; height:180px;;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <p>"Exceeds expectations"</p>
                <br />
            <p><img src="images/image1.jpg" style="border-radius:50%; width:180px; height:180px;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <p>"This is the best restaurant"</p>
                <br />
            <p><img src="images/image2.jpg" class="img-responsive" style="border-radius:50%; width:180px; height:180px;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
        </div>
    </div>
</div>

<div class="container-dishes">
   <div class="clearfix hidden-xs" style="width:100%; height:10px;"></div>
   <div class="container">
      <div class="page-header" id="dishes">
         <h1 class="text-center text-danger">Chef's Recommended</h1>
      </div>
      <div class="row">
         <div class="col-md-6">
            <div class="panel panel-default">
               <div class="panel-body">
                  <img src="images/dishes1.jpg" class="img-responsive" />
                  <h4 class="text-danger">Dishes name</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
               </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="panel panel-default">
               <div class="panel-body">
                  <img src="images/dishes2.jpg" class="img-responsive" />
                  <h4 class="text-danger">Dishes name</h4>
                  <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
               </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="panel panel-default">
               <div class="panel-body">
                  <img src="images/dishes3.jpg" class="img-responsive" />
                  <h4 class="text-danger">Dishes name</h4>
                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur ex ea commodo.</p>
               </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="panel panel-default">
               <div class="panel-body">
                  <img src="images/dishes4.jpg" class="img-responsive" />
                  <h4 class="text-danger">Dishes name</h4>
                  <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur ex ea commodo.</p>
               </div>
            </div>
         </div>
      </div>
   </div>
   <div class="clearfix hidden-xs" style="width:100%; height:50px;"></div>
</div>

<div class="container-imagess">
    <div class="container">
        <div class="page-header" id="about">
            <h1 class="text-center text-danger">The Chefs' Opinion</h1>
        </div>
        <div class="row">
            <div class="col-md-4 text-center">
                <p>"Great service and food"</p>
                <br />
            <p><img src="images/image3.jpg" style="border-radius:50%; width:180px; height:180px;;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <p>"Exceeds expectations"</p>
                <br />
            <p><img src="images/image1.jpg" style="border-radius:50%; width:180px; height:180px;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
            <div class="col-md-4 text-center">
                <p>"This is the best restaurant"</p>
                <br />
            <p><img src="images/image2.jpg" class="img-responsive" style="border-radius:50%; width:180px; height:180px;" /></p>
                <br />
            <p class="text-warning">
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                </p>
            </div>
        </div>
    </div>
</div>



<!--<div class="container-gallery">
    <div class="container">
        <div class="page-header" id="gallery">
            <h1 class="text-center text-default">Gallery</h1>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <ul class="list-unstyled text-center">
               <li class="filter btn btn-success" data-filter=".dishes">Dishes</li>
                    <li class="filter btn btn-success" data-filter=".restaurant">Restaurant</li>
                    <li class="filter btn btn-success" data-filter=".garden">Garden</li>
                    <li class="filter btn btn-success" data-filter=".kids">Kids</li>
               <li class="filter btn btn-success" data-filter="all">All</li>
                </ul>
            </div>
            <div class="mix restaurant col-md-4">
                <a href="images/gallery/gallery1.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery1.jpg" />
                </a>
            </div>
            <div class="mix restaurant col-md-4">
                <a href="images/gallery/gallery2.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery2.jpg" />
                </a>
            </div>
            <div class="mix restaurant col-md-4">
                <a href="images/gallery/gallery3.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery3.jpg" />
                </a>
            </div>
            <div class="mix restaurant col-md-4">
                <a href="images/gallery/gallery4.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery4.jpg" />
                </a>
            </div>
            <div class="mix garden col-md-4">
                <a href="images/gallery/gallery5.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery5.jpg" />
                </a>
            </div>
            <div class="mix garden col-md-4">
                <a href="images/gallery/gallery6.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery6.jpg" />
                </a>
            </div>
            <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery7.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery7.jpg" />
                </a>
            </div>
            <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery8.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery8.jpg" />
                </a>
            </div>
            <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery9.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery9.jpg" />
                </a>
            </div>
         <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery10.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery10.jpg" />
                </a>
            </div>
         <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery11.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery11.jpg" />
                </a>
            </div>
         <div class="mix dishes col-md-4">
                <a href="images/gallery/gallery12.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery12.jpg" />
                </a>
            </div>
         <div class="mix kids col-md-4">
                <a href="images/gallery/gallery13.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery13.jpg" />
                </a>
            </div>
         <div class="mix kids col-md-4">
                <a href="images/gallery/gallery14.jpg" class="img-wrapper">
                    <img class="img-responsive" src="images/gallery/gallery13.jpg" />
                </a>
            </div>
        </div>
    </div>
    <div class="clearfix hidden-xs" style="width:100%; height:50px;"></div>
</div>
 -->


<footer id="subfooter" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-thumbs-o-up text-danger"></span> VISIT US</p>
                <p>We are driven by uncompromising freshness and quality, gracious hospitality and a growing list of dishes</p>
            </div>
            <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-clock-o text-danger"></span> OPEN HOURS</p>
                <p>Mondays : Closed</p>
            <p>Tue-Fri : 0am - 12am</p>
                <p>Sat-Sun : 7am - 1am</p>
            </div>
         <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-map-marker text-danger"></span> CONTACTS</p>
                <p>54, North Road, PA 45086, USA</p>
                <p>+1 888 455 6677</p>
                <p><a href="mailto:mail@example.com">mail@example.com</a></p>
            </div>
            <div class="col-md-3">
                <p style="font-size:18px;"><span class="fa fa-envelope-o text-danger"></span> NEWSLETTER</p>
                <p>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Enter your email..." />
                        <span class="input-group-btn">
                            <button class="btn btn-primary" type="button">Subscribe</button>
                        </span>
                    </div>
                </p>
                <p><br /></p>
                <p>
                    <a class="fa fa-twitter footer-socialicon" target="_blank" href="https://twitter.com/"></a>
                    <a class="fa fa-facebook footer-socialicon" target="_blank" href="https://www.facebook.com/"></a>
                    <a class="fa fa-google-plus footer-socialicon" target="_blank" href="https://plus.google.com/"></a>
                    <a class="fa fa-linkedin footer-socialicon" target="_blank" href="https://plus.google.com/"></a>
                </p>
            </div>
        </div>
    </div>
</footer>

<footer id="footer" class="clearfix">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                
            </div>
            <div class="col-md-4">
                <p>Created by <a href="https://www.shieldui.com" title="Shield UI">Shield UI</a> and hosted by <a href="https://www.prepbootstrap.com" title="PrepBootstrap">PrepBootstrap</a></p>
            </div>
        </div>
    </div>
</footer>

<script src="js/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="js/jquery.mixitup.min.js"></script>
<link href="css/magnific-popup.css" rel="stylesheet">
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/theme.js"></script>
<script src="https://maps.googleapis.com/maps/api/js"></script>
<script type="text/javascript" src="https://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> 

<script type="text/javascript">
    jQuery(function($) {
        // Mix It Up Gallery and Magnific Popup setup
        $('.container-gallery').mixItUp({
         load: {
            filter: '.dishes'
         }
      });
        $('.container-gallery').magnificPopup({
            delegate: 'a',
            type: 'image'
        });

        // ShieldUI Calendar setup
        $("#calendar").shieldCalendar({
            footer: {
                enabled: true,
                footerTemlpate: "{0:dd.MM.yy}"
            },
            min: new Date("2009/2/23"),
            max: new Date("2039/3/1"),
            value: new Date()
        });

        // ShieldUI QRCode setup
        $("#qrcode").shieldQRcode({
            mode: "byte",
            size: 150,
            value: "https://demos.shieldui.com",
            style: {
                color: "#ed1b24"
            }
        });

        // Google Maps setup
        var googlemap = new google.maps.Map(
            document.getElementById('googlemap'),
            {
                center: new google.maps.LatLng(44.5403, -78.5463),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            }
        );
    });
    
    function showPassword() {
        
        var key_attr = $('#key').attr('type');
        if(key_attr != 'text') {
            $('.checkbox').addClass('show');
            $('#key').attr('type', 'text');
        } else {
            $('.checkbox').removeClass('show');
            $('#key').attr('type', 'password');
        }
    }
</script>

</body>
</html>