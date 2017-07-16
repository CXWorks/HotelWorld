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
            <h3>Search Result</h3>
            <div class="about-main">
                <div class="col-md-12 about-top-left">
                    <h4>Self Information & choices</h4>

                        <div class="abt-top">
                            <div class="col-md-5 abt-left">
                                <%Random random=new Random();%>
                                <img src="/images/hotel/images_00<%out.print(random.nextInt(10));%>.jpg" >
                            </div>
                            <br class="col-md-7 abt-right">
                            <form role="form" class="col-lg-7 form-horizontal" method="post" action="/user/modify">
                                <div class="form-group">
                                    <label for="id" class="col-md-2 control-label">Your ID</label>
                                    <div class="col-md-10">
                                        <input type="text" name="id" class="col-md-4 form-control" id="id" value="${user.id}" readonly required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="uname" class="col-md-2 control-label">Your Username</label>
                                    <div class="col-md-10">
                                        <input type="text" name="username" class="col-md-4 form-control" id="uname" value="${user.username}" readonly required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-md-2 control-label">Your First Name</label>
                                    <div class="col-md-10">
                                        <input type="text" name="firstname" class="col-md-4 form-control" id="firstname" value="${user.firstname}" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="secondname" class="col-md-2 control-label">Your Second Name</label>
                                    <div class="col-md-10">
                                        <input type="text" name="secondname" class="col-md-4 form-control" id="secondname" value="${user.secondname}" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="password" class="col-md-2 control-label">Your Password</label>
                                    <div class="col-md-10">
                                        <input type="password" name="password" class="col-md-4 form-control" id="password" value="${user.password}" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-2"></div>
                                    <button type="submit" class="col-md-2 btn btn-info">Confirm</button>
                                </div>
                            </form>

                                <form role="form" class="col-lg-7 form-horizontal" method="post" action="/card/modify">
                                    <div class="form-group">
                                        <label for="cid" class="col-md-2 control-label">Your ID</label>
                                        <div class="col-md-10">
                                            <input type="text" name="id" class="col-md-4 form-control" id="cid" value="${card.id}" readonly required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="pay_password" class="col-md-2 control-label">Your Pay Password</label>
                                        <div class="col-md-10">
                                            <input type="password" name="pay_password" class="col-md-4 form-control" id="pay_password" value="${card.pay_password}" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-2"></div>
                                        <button type="submit" class="col-md-2 btn btn-info">Confirm</button>
                                    </div>
                                </form>

                                <table data-toggle="table" data-striped="true" data-cache="false">
                                    <thead>
                                    <tr>
                                        <th>VIP 截止</th>
                                        <th>余额</th>
                                        <th>等级</th>
                                        <th>积分</th>
                                        <th>总花费</th>
                                    </tr>
                                    </thead>
                                    <tbody>

                                        <tr>
                                            <td>${card.onDate}</td>
                                            <td>${card.amount}</td>
                                            <td>${card.level}</td>
                                            <td>${card.grades}</td>
                                            <td>${card.cost}</td>
                                        </tr>

                                    </tbody>
                                </table>
                                <a href="/member/cancel">取消会员资格</a>

                                <a href="/member/grade2money?grades=${(card.grades)}">积分兑换 (当前可兑换${(card.grades/100)*100})</a>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>




    <div class="container">
        <div class="about-top">
            <h3>Record is onDate</h3>
            <div class="about-main">
                <div class="col-md-12 about-top-left">
                    <h4>travel the world</h4>

                    <div class="abt-top">

                        <table data-toggle="table" data-striped="true" data-cache="false">
                            <thead>
                            <tr>
                                <th>入住 (年月日)</th>
                                <th>离店 (年月日)</th>
                                <th>酒店代号</th>
                                <th>房间号</th>
                                <th>总花费</th>
                                <th>已支付</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="c" items="${doing}">
                            <tr>
                                <td>${c.start}</td>
                                <td>${c.end}</td>
                                <td>${c.hid}</td>
                                <td>${c.room}</td>
                                <td>${c.total}</td>
                                <td>${c.payed}</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
    <div class="about-top">
        <h3>Pay Records</h3>
        <div class="about-main">
            <div class="col-md-12 about-top-left">
                <h4>thx for your investment</h4>

                <div class="abt-top">

                    <table data-toggle="table" data-striped="true" data-cache="false">
                        <thead>
                        <tr>
                            <th>交易单号</th>
                            <th>用户编号</th>
                            <th>用户名称</th>
                            <th>交易额度</th>
                            <th>交易时间</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${payrecords}">
                            <tr>
                                <td>${c.id}</td>
                                <td>${c.uid}</td>
                                <td>${c.username}</td>
                                <td>${c.amount}</td>
                                <td>${c.date}</td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    </div>


    <div class="container">
    <div class="about-top">
        <h3>Record is under consideration</h3>
        <div class="about-main">
            <div class="col-md-12 about-top-left">
                <h4>wait for me</h4>

                <div class="abt-top">

                    <table data-toggle="table" data-striped="true" data-cache="false">
                        <thead>
                        <tr>
                            <th>入住 (年月日)</th>
                            <th>离店 (年月日)</th>
                            <th>酒店代号</th>
                            <th>房间号</th>
                            <th>总花费</th>
                            <th>已支付</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${unpassed}">
                            <tr>
                                <td>${c.start}</td>
                                <td>${c.end}</td>
                                <td>${c.hid}</td>
                                <td>${c.room}</td>
                                <td>${c.total}</td>
                                <td>${c.payed}</td>
                                <td><a href="/book/cancel?bid=${c.id}">cancel book</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    </div>

    <div class="container">
    <div class="about-top">
        <h3>Record is successful</h3>
        <div class="about-main">
            <div class="col-md-12 about-top-left">
                <h4>log your records</h4>

                <div class="abt-top">

                    <table data-toggle="table" data-striped="true" data-cache="false">
                        <thead>
                        <tr>
                            <th>入住 (年月日)</th>
                            <th>离店 (年月日)</th>
                            <th>酒店代号</th>
                            <th>房间号</th>
                            <th>总花费</th>
                            <th>已支付</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${success}">
                            <tr>
                                <td>${c.start}</td>
                                <td>${c.end}</td>
                                <td>${c.hid}</td>
                                <td>${c.room}</td>
                                <td>${c.total}</td>
                                <td>${c.payed}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
    </div>

    <div class="container">
    <div class="about-top">
        <h3>Record is failed</h3>
        <div class="about-main">
            <div class="col-md-12 about-top-left">
                <h4>we are sorry</h4>

                <div class="abt-top">

                    <table data-toggle="table" data-striped="true" data-cache="false">
                        <thead>
                        <tr>
                            <th>入住 (年月日)</th>
                            <th>离店 (年月日)</th>
                            <th>酒店代号</th>
                            <th>房间号</th>
                            <th>总花费</th>
                            <th>已支付</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="c" items="${failure}">
                            <tr>
                                <td>${c.start}</td>
                                <td>${c.end}</td>
                                <td>${c.hid}</td>
                                <td>${c.room}</td>
                                <td>${c.total}</td>
                                <td>${c.payed}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
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
