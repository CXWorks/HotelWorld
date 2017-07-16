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
                    <li><a href="/about.html" class="active">About</a></li>
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
        <div class="col-md-1"></div><h3>Confirm your book</h3>
        <div class="col-md-1"></div><h4>This is Your Book Order</h4>
        <form role="form" class="form-horizontal" method="post" action="/book/new">
            <div class="form-group">
                <label for="cid" class="col-md-2 control-label">Your ID</label>
                <div class="col-md-10">
                    <input type="text" name="cid" class="col-md-4 form-control" id="cid" value="${record.cid}" readonly required>
                </div>
            </div>
            <div class="form-group">
                <label for="mid" class="col-md-2 control-label">Manager ID</label>
                <div class="col-md-10">
                    <input type="text" name="mid" class="col-md-4 form-control" id="mid" value="${record.mid}" readonly required>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="hid" class="col-md-2 control-label">Hotel ID</label>
                <div class="col-md-10">
                    <input type="text" name="hid" class="form-control" id="hid" value="${record.hid}" readonly required>
                </div>
            </div>

            <div class="form-group">
                <label for="start" class="col-md-2 control-label">Start</label>
                <div class="col-md-10">
                    <input type="date"  name="start" class=" form-control" value="${record.start}" id="start"required >
                </div>
            </div>
            <div class="form-group">
                <label for="end" class="col-md-2 control-label">End</label>
                <div class="col-md-10">
                    <input type="date" name="end" class=" form-control" value="${record.end}"  id="end"  required >
                </div>
            </div>
            <div class="form-group">
                <label for="room" class="col-md-2 control-label">Room</label>
                <div class="col-md-10">
                    <input readonly type="text" name="room" class="form-control" id="room" value="${record.room}" required>
                </div>
            </div>



            <div class="form-group">
                <label for="price" class="col-md-2 control-label">Price</label>
                <div class="col-md-10">
                    <input readonly type="text" name="price" class="col-md-4 form-control"  id="price" value="${record.price}" required>
                </div>
            </div>
            <div class="form-group">
                <label for="total" class="col-md-2 control-label">Total</label>
                <div class="col-md-10" >
                    <input readonly type="text" name="total" class="col-md-4 form-control"  id="total" value="${record.total}" required>
                    </div>
            </div>
<c:choose>
            <c:when test="${card == null}">
                <div class="form-group">
                    <label for="inCash" class="col-md-2 control-label">Pay in Cash</label>
                    <div class="col-md-10">
                        <input readonly type="checkbox" name="inCash" class="col-md-4 form-control"  id="inCash" checked="checked" >
                    </div>
                </div>
                <div class="form-group" hidden>
                    <label for="payed" class="col-md-2 control-label">Paying...</label>
                    <div class="col-md-10">
                        <input readonly type="checkbox" name="payed" class="col-md-4 form-control"  id="payed"  >
                    </div>
                </div>


            </c:when>

            <c:otherwise>

                <c:if test="${card.amount >= record.total}">

                    <div class="form-group" hidden>
                        <label for="inCash" class="col-md-2 control-label">Pay in Cash</label>
                        <div class="col-md-10">
                            <input readonly type="checkbox" name="inCash" class="col-md-4 form-control"  id="inCash"  >

                        </div>
                    </div>
                    <div class="form-group" hidden>
                        <label for="payed" class="col-md-2 control-label">Paying...</label>
                        <div class="col-md-10">
                            <input readonly type="checkbox" name="payed" class="col-md-4 form-control"  id="payed" checked="checked" >
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-1"></div>
                        <p class="col-md-2">原价 : ${record.total+cut}   优惠 : ${cut}</p>
                        <p class="col-md-1">最终价 : ${record.total}</p>
                        <p class="col-md-2" >Account left: ${card.amount - record.total}</p>
                    </div>
                </c:if>
                <c:if test="${card.amount < record.total}">
                    <div class="form-group" hidden>
                        <label for="inCash" class="col-md-2 control-label">Pay in Cash</label>
                        <div class="col-md-10">
                            <input type="checkbox" name="inCash" class="col-md-4 form-control"  id="inCash"  >
                        </div>
                    </div>
                    <div class="form-group" hidden >
                        <label for="payed" class="col-md-2 control-label">Paying...</label>
                        <div class="col-md-10">
                            <input type="checkbox" name="payed" class="col-md-4 form-control"  id="payed"  >
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-1"></div>
                        <p class="col-md-2" >Account left: ${card.amount - record.total}</p>
                        <p class="col-md-1" ><a>Pay for card</a></p>
                    </div>
                </c:if>

            </c:otherwise>
</c:choose>
            <div class="form-group" style="height: 200px;">
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
