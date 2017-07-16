<%@ page import="java.util.Random" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: cxworks
  Date: 17-2-1
  Time: 下午12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
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
    <link href="../css/bootstrap-table.min.css" type="text/css"/>

    <script src="../js/jquery-1.11.0.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="../js/move-top.js"></script>
    <script type="application/javascript" src="../js/bootstrap-table.min.js"></script>
    <script type="application/javascript" src="../js/bootstrap-table-zh-CN.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--start-smoth-scrolling-->
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
<!--start-about-->
<div class="about">
    <div class="container">
        <div class="about-top">
            <h3>New Hotel Applications</h3>
            <div class="about-main">
                <div class="col-md-12 about-top-left">
                    <h4>Please check hotels ...</h4>
                    <%Random random=new Random();%>
                    <c:forEach var="hotel" items="${hotels}">
                        <div class="abt-top">
                            <div class="col-md-5 abt-left">
                                <img src="/images/hotel/images_00<%out.print(random.nextInt(10));%>.jpg" >
                            </div>
                            <div class="col-md-7 abt-right">
                                <h5>城市 : ${hotel.city} </h5>
                                <h5>酒店 : ${hotel.name} </h5>
                                <h5>酒店编号 : ${hotel.id}</h5>
                                <h5>经理: ${hotel.manager} </h5>
                                <h5>身份证: ${hotel.manager_identity}</h5>
                                <p>${hotel.description}</p>


                                <a class="btn-success" href="/root/hotel/pass?id=${hotel.id}">通过</a>
                                <a class="btn-danger" href="/root/hotel/deny?id=${hotel.id}">拒绝</a>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </c:forEach>

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<!--start-footer-->
<div class="footer">
    <div class="container">
        <div class="footer-main">
            <div class="col-md-5 footer-left">
                <h4>Follow Us</h4>
                <ul>
                    <li><a href="#"><span class="twt"> </span></a></li>
                    <li><a href="#"><span class="fb"> </span></a></li>
                    <li><a href="#"><span class="p"> </span></a></li>
                    <li><a href="#"><span class="yt"> </span></a></li>
                    <li><a href="#"><span class="in"> </span></a></li>
                </ul>
                <h4>Address</h4>
                <h5>capetown,Georgia, Lipsum street, New york.</h5>
                <p>Mail Us On <a href="mailto:info@example.com"> 123example@gmail.com</a></p>
                <p>Call Us On  +00 0111 011 111</p>
            </div>
            <div class="col-md-7 footer-right">
                <h4>Subscribe For Updates</h4>
                <span>
						<input type="text"  value="Enter email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter email';}">
						<input type="submit" value="SUBSCRIBE">
					</span>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="../about.html">About</a></li>
                    <li><a href="services.html">Services</a></li>
                    <li><a href="booking.jsp">Booking</a></li>
                    <li><a href="../contact.html">Contact</a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog">Login</a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Signup</a></li>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="footer-text">
            <p>DESIGN BY <a href="http://w3layouts.com/"> W3LAYOUTS</a></p>
        </div>
    </div>
    <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</div>
<!--end-footer-->
</body>
</html>
