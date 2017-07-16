<%--
  Created by IntelliJ IDEA.
  User: cxworks
  Date: 17-2-2
  Time: 上午11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.entity.User" %>
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
    <link rel="stylesheet" type="text/css" href="../css/wangEditor.min.css">
    <link rel="stylesheet" type="text/css" href="../css/flatpickr.min.css" />
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

<div id="small-dialog1" class="mfp-hide">
    <div class="signup">
        <div class="col-md-1"></div><h3>Tell us about your plan</h3>
        <div class="col-md-1"></div><h4>Enter Your Details Here</h4>
        <form role="form" class="form-horizontal" method="post" action="/hotel/newPlan">
            <div class="form-group">
                <label for="managerid" class="col-md-2 control-label">Manager ID</label>
                <div class="col-md-10">
                    <input type="text" name="mid" class="col-md-4 form-control" id="managerid" value="${hotel.managerid}" readonly required>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="name" class="col-md-2 control-label">Hotel ID</label>
                <div class="col-md-10">
                    <input type="text" name="hid" class="form-control" id="name" value="${hotel.id}" readonly required>
                </div>
            </div>
            <div class="form-group">
                <label for="city" class="col-md-2 control-label" >City</label>
                <div class="col-md-10">
                    <input type="text" name="city"  class="form-control" id="city" value="${hotel.city}"
                           required></div>
            </div>
            <div class="form-group">
                <label for="start" class="col-md-2 control-label">Start</label>
                <div class="col-md-10">
                    <input type="date"  name="start" class=" form-control"  id="start"required >
                </div>
            </div>
            <div class="form-group">
                <label for="end" class="col-md-2 control-label">End</label>
                <div class="col-md-10">
                    <input type="date" name="end" class=" form-control"  id="end"  required >
                </div>
            </div>
            <div class="form-group">
                <label for="room" class="col-md-2 control-label">Room</label>
                <div class="col-md-10">
                    <input type="text" name="room" class="form-control" id="room" placeholder="Please input your room" required>
                </div>
            </div>


            <div class="form-group">
                <label for="people" class="col-md-2 control-label">People</label>
                <div class="col-md-10">
                    <input type="number" name="people" class="col-md-4 form-control" pattern="[0-9]*" id="people" placeholder="Please input your people num" required>
                </div>
            </div>
            <div class="form-group">
                <label for="price" class="col-md-2 control-label">Price</label>
                <div class="col-md-10">
                    <input type="text" name="price" class="col-md-4 form-control"  id="price" placeholder="Please input your price" required>
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-md-2 control-label">description</label>
                <div class="col-md-10" style="height: 350px">
                    <textarea name="description" id="description" style="height: inherit" >
                        <p>${hotel.description}</p>
                    </textarea></div>
            </div>

            <div class="col-md-12">
                <div class="col-md-1"></div>
                <button type="submit" class="col-md-1 btn btn-info">Confirm</button>
            </div>
        </form>

    </div>
</div>



</body>
<script type="text/javascript" src="../js/flatpickr.min.js"></script>
<script type="text/javascript" src="../js/zh.js"></script>
<script type="text/javascript" src="../js/wangEditor.min.js"></script>
<script type="text/javascript">
    wangEditor.config.mapAk = 'EQRCjCyVfZ2rzY9CeM8GqVZe1cR1c2bv';
    var editor = new wangEditor('description');

    editor.create();
</script>
<script type="application/javascript">
    $(function () {
        $("#start").flatpickr({
            locale: 'zh'
        });
        $("#end").flatpickr({
            locale: 'zh'
        });
    });
</script>
</html>
