<%@ page import="model.entity.User" %><%--
  Created by IntelliJ IDEA.
  User: cxworks
  Date: 17-1-30
  Time: 上午9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Blue Water a Hotel Category Flat Bootstrap Responsive Web Template| Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Blue Water Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="../css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../css/style.css" rel='stylesheet' type='text/css' />
    <script src="../js/jquery-1.11.0.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="../js/move-top.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>
<body>
<!--start-banner-->
<div class="banner1" id="home">
    <div class="container">
        <div class="header">
            <div class="menu">
                <a class="toggleMenu" href="#"><img src="../images/menu-icon.png" alt="" /> </a>
                <ul class="nav" id="nav">
                    <li><a href="/index">Home</a></li>
                    <li ><a href="/about.html" class="active">About</a></li>
                    <li><a href="/services.jsp">Services</a></li>
                    <li><a href="/book/booking.jsp">Booking</a></li>
                    <li><a href="/contact.html">Contact</a></li>
                </ul>
                <!----start-top-nav-script---->
                <script type="text/javascript" src="../js/responsive-nav.js"></script>
                <script type="text/javascript">
                    jQuery(document).ready(function($) {
                        $(".scroll").click(function(event){
                            event.preventDefault();
                            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                        });
                    });
                </script>
                <!----//End-top-nav-script---->
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--end-banner-->

<div class="about-top">
    <h3>ID ${user.displayID()}</h3>
</div>
<div class="special">
    <div class="special-main">
        <div class="col-md-6 spl-left">
            <a href="/register/card?id=${user.displayID()}" class="b-link-stripe b-animate-go  thickbox">
                <img class="port-pic" class="img-responsive" src="../images/customer.jpg" />
                <div class="b-wrapper">
                    <h2 class="b-animate b-from-left b-from   b-delay03 ">
                        <span>I'm a customer !</span>
                    </h2>
                </div>
            </a>
        </div>
        <div class="col-md-6 spl-right">
            <a href="/register/hotel?id=${user.displayID()}" class="b-link-stripe b-animate-go  thickbox">
                <img class="port-pic" class="img-responsive" src="../images/manager.jpg" />
                <div class="b-wrapper">
                    <h2 class="b-animate b-from-left b-from   b-delay03 ">
                        <span>I'm a manager !</span>
                    </h2>
                </div>
            </a>
        </div>
    </div>
</div>



</body>
</html>
