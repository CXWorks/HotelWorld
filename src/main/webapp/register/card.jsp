<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div id="small-dialog1" class="mfp-hide">
    <div class="signup" >
        <div class="col-md-1"></div><h3>Sign Up</h3>
        <div class="col-md-1"></div><h4>Enter Your Details Here</h4>

        <form role="form" class="form-horizontal" method="post" action="/register/card" >
            <div class="form-group">
                <label for="id" class="col-md-2 control-label">ID</label>
                <div class="col-md-10">
                    <input type="text" name="id" class="col-md-4 form-control" id="id" value="${id}" readonly required>
                </div>
            </div>

            <div class="form-group ">
                <label for="pay_password" class="col-md-2 control-label">Pay password</label>
                <div class="col-md-10">
                <input type="password" name="pay_password" class="col-md-4 form-control" id="pay_password" placeholder="Please input pay password" required>
                </div>
                </div>
            <div class="form-group">
                <label for="bankid" class="col-md-2 control-label" >BankCard</label>
                <div class="col-md-10">
                <input type="text"  name="bankid" class="col-md-4 form-control" id="bankid" placeholder="Please input Bank account"
                       pattern="[0-9]*" required></div>
            </div>
            <div class="col-md-1"></div>
            <button type="submit" class="btn btn-info">Confirm</button>
        </form>

    </div>
</div>



</body>
</html>
