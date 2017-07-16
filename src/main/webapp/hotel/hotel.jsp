<%--
Created by IntelliJ IDEA.
User: cxworks
Date: 17-1-30
Time: 上午9:43
To change this template use File | Settings | File Templates.
--%>
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
    <link href="../css/wangEditor.less/wangEditor.min.css" rel="stylesheet" type="text/css"/>
    <script src="../js/jquery-1.11.0.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="../js/move-top.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/wangEditor.min.css">

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
        <div class="col-md-1"></div><h3>Tell us about your hotel</h3>
        <div class="col-md-1"></div><h4>Enter Your Details Here</h4>
        <form role="form" class="form-horizontal" method="post" action="/hotel/change">
            <div class="form-group">
                <label for="id" class="col-md-2 control-label">Hotel ID</label>
                <div class="col-md-10">
                    <input  type="text" name="id" class="col-md-4 form-control" id="id" value="${hotel.id}" readonly required>
                </div>
            </div>
            <div class="form-group">
                <label for="managerid" class="col-md-2 control-label">Manager ID</label>
                <div class="col-md-10">
                    <input  type="text" name="managerid" class="col-md-4 form-control" id="managerid" value="${hotel.managerid}" readonly required>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="name" class="col-md-2 control-label">Hotel Name</label>
                <div class="col-md-10">
                <input type="text" name="name" class="form-control" id="name" value="${hotel.name}" placeholder="Please input your hotel password" required>
            </div>
            </div>
            <div class="form-group">
                <label for="city" class="col-md-2 control-label" >City</label>
                <div class="col-md-10">
                <input type="text" name="city"  class="form-control" id="city" value="${hotel.city}" placeholder="Please input city"
                        required></div>
            </div>
            <div class="form-group">
                <label for="locationX" class="col-md-2 control-label">location X</label>
                <div class="col-md-10">
                <input type="text" name="locationX" value="${hotel.locationX}" class=" form-control" readonly id="locationX" placeholder="Please mark on the map" required >
                </div>
            </div>
            <div class="form-group">
                <label for="locationY" class="col-md-2 control-label">location Y</label>
                <div class="col-md-10">
                <input type="text" name="locationY" value="${hotel.locationY}" class=" form-control" readonly id="locationY" placeholder="Please mark on the map" required >
            </div>
            </div>
            <div class="form-group">
                <label for="manager" class="col-md-2 control-label">Manager Name</label>
                <div class="col-md-10">
                <input readonly type="text" name="manager" value="${hotel.manager}" class="form-control" id="manager" placeholder="Please input your manager name" required>
            </div>
    </div>


            <div class="form-group">
                <label for="manager_identity" class="col-md-2 control-label">manager_id card</label>
                <div class="col-md-10">
                <input type="text" readonly name="manager_identity" value="${hotel.manager_identity}" class="col-md-4 form-control" pattern="[0-9]*" id="manager_identity" placeholder="Please input your manager_id card" required>
                </div>
            </div>
            <div class="form-group">
                <label for="description" class="col-md-2 control-label">description</label>
                <div class="col-md-10" style="height: 400px">
                <textarea name="description" id="description" style="height: inherit" >
                    ${hotel.description}
                </textarea></div>
            </div>
            <div class="col-md-12">
                <div class="col-md-1"></div>
                <label class="col-md-1">Location</label>
                <div class="col-md-8" id="map" style="height: 400px" ></div>
                <div class="col-md-2"></div>
            </div>
            <div class="col-md-12">
            <div class="col-md-1"></div>
            <button type="submit" class="col-md-1 btn btn-info">Confirm</button>
            </div>
        </form>

    </div>
</div>



</body>
<script type="text/javascript" src="../js/wangEditor.min.js"></script>
<script type="text/javascript">
    wangEditor.config.mapAk = 'EQRCjCyVfZ2rzY9CeM8GqVZe1cR1c2bv';
    var editor = new wangEditor('description');

    editor.create();
</script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=EQRCjCyVfZ2rzY9CeM8GqVZe1cR1c2bv"></script>
<script src="http://api.map.baidu.com/library/RichMarker/1.2/src/RichMarker_min.js"></script>

<script src="http://api.map.baidu.com/library/MarkerTool/1.2/src/MarkerTool_min.js"></script>
<script type="application/javascript">
    var map = new BMap.Map("map");
    var point = new BMap.Point(118.853552,32.088996);
    map.centerAndZoom(point,12);

    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){
        if(this.getStatus() == BMAP_STATUS_SUCCESS){

            map.panTo(r.point);
            var mar=new BMap.Marker(r.point);
            map.addOverlay(mar);
        }
        else {
            alert('failed'+this.getStatus());
        }
    },{enableHighAccuracy: true});
    var mkrTool = new BMapLib.MarkerTool(map, {followText: "mark your location"});

    mkrTool.open();

    mkrTool.addEventListener("markend", function(e) {
        temp_p=e.marker.point;
        // lng->x
        // lat->y
        $('#locationX')[0].value=temp_p.lng;
        $('#locationY')[0].value=temp_p.lat;
    });
</script>
</html>
