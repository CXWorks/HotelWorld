<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html >
<head>
<title>Blue Water a Hotel Category Flat Bootstrap Responsive Web Template| Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blue Water Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery-1.11.0.min.js"></script>
<link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>  
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
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
	<div class="banner" id="home">
		<div class="container">
			<div class="header">
				<div class="menu">
                                     <a class="toggleMenu" href="#"><img src="images/menu-icon.png" alt="" /> </a>
					<ul class="nav" id="nav">
					<li class="active"><a href="/index" class="active">Home</a></li>
					<li><a href="/about.html">About</a></li>
					<li><a href="/services.jsp">Services</a></li>
					<li><a href="/book/booking.jsp">Booking</a></li>
					<li><a href="/contact.html">Contact</a></li>
					</ul>
                                  <!----start-top-nav-script---->
		                      <script type="text/javascript" src="js/responsive-nav.js"></script>
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
			<div class="banner-bottom">
				<a href="index.html"><img src="images/logo-1.png" alt=""></a>
				<h1>BLUE <span> WATER</span></h1>
			</div>
			<!--/start-text-slider-->
		<div  class="testimonials" id="testimonials">
			 <div class="wmuSlider example1">
		 	<div class="container-flueid">
			   <article style="position: absolute; width:64%; opacity: 0;"> 
					<div class=" cont span_2_of_3 client-main">
							<img src="images/slide-1.png" alt="">  
					</div>
				</article>
				 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class=" cont span_2_of_3  client-main">
							<img src="images/slide-4.png" alt="">
					</div>
				 </article>

				 <article style="position: absolute; width:64%; opacity: 0;"> 
				   	<div class="cont span_2_of_3  client-main">
				   		<img src="images/slide-5.png" alt="">
					</div>
				 </article>
                  <script src="js/jquery.wmuSlider.js"></script> 
					<script>
       				     $('.example1').wmuSlider();         
   					</script> 	           	      
	         </div>
	     </div>
	 </div>
	 <!--//text-slider-->
		</div>
	</div>
	<!--start-login-->
	<div class="log-in">
        <c:choose>
            <c:when test="${logined}">
				<c:choose>
                    <c:when test="${user.authoritiesAsString.contains('manager')}">


                        <c:if test="${!hotel.passed}">
                            <ul>
                                <li ><a class="play-icon" href="#">Please wait for our response</a> </li>
                                <li><a class="play-icon" href="/logout">Logout</a></li>
                            </ul>
                        </c:if>
						<c:if test="${hotel.passed}">
                        <ul>
                            <li><a class="play-icon" href="/hotel/change?hid=${hotel.id}">Change Hotel Information</a> </li>
                            <li><a class="play-icon" href="/hotel/newPlan?managerid=${user.id}"><span> </span>Plan</a></li>
                            <li><a class="play-icon" href="/hotel/manage">Manage</a></li>
                            <li><a class="play-icon" href="/statistic/hotel?hid=${hotel.id}">Statistics</a></li>
							<li><a class="play-icon" href="/logout">Logout</a></li>
                        </ul>
                        </c:if>



                    </c:when>
                    <c:when test="${user.authoritiesAsString.contains('root')}">
                        <ul>
                            <li><a class="play-icon" href="/root/passList">Pass</a></li>
							<li><a class="btn-danger" href="/root/sum">Sum</a></li>
                            <li><a class="play-icon" href="/statistic/root">Statistics</a></li>
							<li><a class="play-icon" href="/logout">Logout</a></li>
                        </ul>

                    </c:when>
                    <c:when test="${user.authoritiesAsString.contains('member')}">
                        <div class="booking-main">
                            <h3>Welcome ${user.firstname} ${user.secondname}</h3>
                        </div>
                        <ul>
                            <li><a class="play-icon" href="/self">Self Center</a></li>
                            <li><a class="play-icon" href="/pay">Pay</a></li>
							<li><a class="play-icon" href="/logout">Logout</a></li>
                        </ul>
                    </c:when>

                    <c:otherwise>
            <div class="booking-main">
                <h3>Welcome ${user.firstname} ${user.secondname}</h3>
            </div>
						<ul>
							<li><a class="play-icon" href="/pay"><span> </span>Activate Card</a></li>
							<li><a class="play-icon" href="/logout">Logout</a></li>
						</ul>
                    </c:otherwise>

                </c:choose>

            </c:when>
            <c:otherwise>
                <ul>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><span> </span>Login</a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Signup</a></li>
                </ul>
            </c:otherwise>
        </c:choose>

	</div>
	<!---pop-up-box---->
					  <script type="text/javascript" src="js/modernizr.custom.min.js"></script>
					<link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
					<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
					<!---//pop-up-box---->
				<div id="small-dialog" class="mfp-hide">
						<div class="login">
							<h3>Log In</h3>
							<h4>Already a Member</h4>
							<form method="POST"  action="/index">

							<p><input type="text" name="j_username" value="username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" /></p>
                                <p><input type="password" name="j_password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"/></p>
                                <p class="col-md-12"><input  type='checkbox' name='remember-me' /><h4>Remember me on this computer.</h4></p>
                                <input name="submit" type="submit" value="Login"/>





							</form>
                            <%--<form name='f' action="/index" method='POST'>--%>
                            <%--<table>--%>
                                <%--<tr class="col-md-12"><td class="col-md-6">User:</td><td  class="col-md-8"><input class="col-md-6" type='text' name='j_username' onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" /></td></tr>--%>
                                <%--<tr class="col-md-12"><td class="col-md-6">Password:</td><td class="col-md-8"><input class="col-md-6" type='password' onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" name='j_password'/></td></tr>--%>
                                <%--<tr class="col-md-12"><td><input style="direction: rtl;" type='checkbox' name='remember-me'/></td><td class="col-md-6">Remember me on this computer.</td></tr>--%>
                                <%--<tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>--%>
                            <%--</table>--%>
                            <%--</form>--%>

						</div>
					</div>
					<div id="small-dialog1" class="mfp-hide">
						<div class="signup">
							<h3>Sign Up</h3>
							<h4>Enter Your Details Here</h4>
                            <form id="signup" method="post" action="/register">

							<input form="signup" name="firstname" type="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}" required />
							<input form="signup" name="secondname" type="text" value="Second Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Second Name';}" required />
							<input form="signup" name="username" type="text" pattern=".*?@.*?\.*"
								   required class="email"value="Enter Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Email';}"  />
							<input form="signup" name="password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required/>
							<input form="signup" name="submit" type="submit"  value="SignUp"/>
                            </form>
						</div>
					</div>
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});

						});
				</script>
		<!--End-pop-up-box-->
	<!--end-login-->
	<!--end-banner-->
	<!--start-grid-->
	<div class="special">
			<div class="special-main">
				<div class="col-md-6 spl-left">
					<a href="#" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-1.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>Normal distribution</span>
										</h2>
									</div>
						</a>
				</div>
				<div class="col-md-6 spl-right">
					<a href="#" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-2.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>Normal distribution</span>
										</h2>
									</div>
						</a>
				</div>
				<div class="clearfix"> </div>
				<div class="col-md-6 spl-left">
					<a href="#" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-3.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from b-left  b-delay03 ">
											<span>Normal distribution</span>
										</h2>
									</div>
						</a>
				</div>
				<div class="col-md-6 spl-right">
					<a href="#" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-4.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>Normal distribution</span>
										</h2>
									</div>
						</a>
					<a href="#" class="b-link-stripe b-animate-go  thickbox">
									<img class="port-pic" class="img-responsive" src="images/one-5.jpg" />
									<div class="b-wrapper">
										<h2 class="b-animate b-from-left b-from   b-delay03 ">
											<span>Normal distribution</span>
										</h2>
									</div>
						</a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="spl-btn">
				<a href="#">Go to Gallery for Full</a>
			</div>
	</div>
	<!--end-grid-->
	<!--start-staff-->
	<div class="staff">
		<div class="container">
			<div class="staff-top">
				<h3>OUR STAFF HERE</h3>
			</div>
			<div class="staff-bottom">
				<div class="col-md-4 staff-left">
					<img src="images/staff-1.jpg" alt="">
					<h4>Reception Counter</h4>
					<p>Content here, content here', making it like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as</p>
				</div>
				<div class="col-md-4 staff-left">
					<img src="images/staff-2.jpg" alt="">
					<h4>Chef Cheif</h4>
					<p>Content here, content here', making it like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as</p>
				</div>
				<div class="col-md-4 staff-left">
					<img src="images/staff-3.jpg" alt="">
					<h4>Manager</h4>
					<p>Content here, content here', making it like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-staff-->
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
						<li><a href="about.html">About</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="book/booking.jsp">Booking</a></li>
						<li><a href="contact.html">Contact</a></li>
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