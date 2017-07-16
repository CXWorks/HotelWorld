<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

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
						<li class="active"><a href="/book/booking.jsp">Booking</a></li>
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
	<!--start-booking-->
	<div class="booking">
		<div class="container">
			<div class="booking-main">
				<h3>BOOKING</h3>
				<div class="booking-top">
					<div class="col-md-4 booking-top-left">
						<h4>BOOK LODGING NOW</h4>
						<div class="booking-form">
							<div class="b_room">
								<div class="booking_room">
									<div class="reservation">
										<ul>		
											 <li  class="span1_of_1 left">
											 	<div class="book-text">
												 	<h5>Check in:</h5>
												 </div>
												 <div class="book_date">
													 <form>
													 <input class="date" id="datepicker" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required=>
													 </form>
												 </div>
												 <div class="clearfix"></div>					
											 </li>
											 <li  class="span1_of_1 left">
												 <div class="book-text">
												 	<h5>Check out:</h5>
												 </div>
												 <div class="book_date">
												 <form>
													<input class="date" id="datepicker1" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '';}" required=>
												 </form>
												 </div>
												 <div class="clearfix"></div>		
											 </li>
											  <li class="span1_of_1">
												 <div class="book-text">
												 	<h5>Adult(13+)</h5>
												 </div>
												 <!----------start section_room----------->
												 <div class="book_date">
													  <select id="adult"  class="frm-field required">
															<option value="0"></option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
													  </select>
												 </div>
												 <div class="clearfix"></div>	
											 </li>
											 <li class="span1_of_1">
												 <div class="book-text">
												 	<h5>Youth(7-15)</h5>
												 </div>
												 <!----------start section_room----------->
												 <div class="book_date">
													  <select id="youth" class="frm-field required">
															<option value="0"></option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
													  </select>
												 </div>
												 <div class="clearfix"></div>	
											 </li>
											 <li class="span1_of_1">
												 <div class="book-text">
												 	<h5>Child(0-6)</h5>
												 </div>
												 <!----------start section_room----------->
												 <div class="book_date">
													  <select id="child"  class="frm-field required">
															<option value="0"></option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
													  </select>
												 </div>
												 <div class="clearfix"></div>	
											 </li>

											<li  class="span1_of_1 left">
												<div class="book-text">
													<h5>City</h5>
												</div>
												<div class="book_date">
													<form>
														<input id="city" type="text" placeholder="City" required="">
													</form>
												</div>
												<div class="clearfix"></div>
											</li>
											 <div class="clearfix"></div>
										</ul>
									 </div>
								</div>
								<div class="clearfix"></div>
							</div>
					<!---->
					<div class="properties">
						<h6>Properties</h6>
						<ul>
							<li><a href="#">Auris fermentum lorem</a></li>
							<li><a href="#">Praesent vestibulum molestie</a></li>
							<li><a href="#">Sliquam dapibus tinciunt</a></li>
							<li><a href="#">Donec sagittis euismdurus</a></li>
							<li><a href="#">Vestibulum ante ipsum</a></li>
						</ul>
					</div>
					<div class="b-btn" id="submit">
                        <a>CHECK RATES</a>
					</div>
				</div>
					</div>
					<div class="col-md-8 booking-top-right">
						<h4>ACCOMMODATION & LODGING</h4>
						<div class="book-bottom">
							<div class="col-md-5 book-bottom-left">
								<img src="../images/b-1.jpg" alt="">
							</div>
							<div class="col-md-7 book-bottom-right">
								<h6>Cras id tempor felis. Ut porta et nisi sed pharetra Quisque ac arcu dictum.</h6>
								<p>Fusce porta, massa sed ullamcorper lacinia, eros justo aliquam ligula, id luctus lectus justo et ipsum. Proin fringilla erat lacus.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="book-bottom-one">
							<div class="col-md-5 book-bottom-left">
								<img src="../images/b-2.jpg" alt="">
							</div>
							<div class="col-md-7 book-bottom-right">
								<h6>Cras id tempor felis. Ut porta et nisi sed pharetra Quisque ac arcu dictum.</h6>
								<p>Fusce porta, massa sed ullamcorper lacinia, eros justo aliquam ligula, id luctus lectus justo et ipsum. Proin fringilla erat lacus.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="b-bottom">
							<div class="col-md-6 b-bottom-left">
								<h4>WHY US?</h4>
								<h5>Vestibulum non lobortis quam ut tincidunt neque eu sit amet maximus</h5>
								<p>Integer leo nisl, luctus vel tellus ac, ultrices tempor nibh. Duis pellentesque tellus volutpat volutpat dapibus. Praesent feugiat, lorem eu aliquam finibus.</p>
								<ul>
									<li><a href="#">Ultrices tempor nibh</a></li>
									<li><a href="#">Massa sed ullamcorper</a></li>
									<li><a href="#">Vestibulum non lobortis</a></li>
								</ul>
							</div>
							<div class="col-md-6 b-bottom-right">
								<h4>DISCOUNTED LESSONS</h4>
								<img src="../images/b-3.jpg" alt="">
								<h5>Aenean porttitor libero orci, vitae volutpat lorem porta a. Curabitur vel lacus lobortis.</h5>
								<p>Nam aliquet nunc ut felis scelerisque, sit amet elementum quam dapibus. Curabitur ornare mauris purus, in porttitor sapien fringilla sit amet.</p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--end-booking-->
	<!---strat-date-piker---->
					<link rel="stylesheet" href="../css/jquery-ui.css" />
					<script src="../js/jquery-ui.js"></script>
							  <script>
									  $(function() {
										$( "#datepicker,#datepicker1" ).datepicker();
									  });
							  </script>
					<!---/End-date-piker---->
					<link type="text/css" rel="stylesheet" href="css/JFGrid.css" />
					<link type="text/css" rel="stylesheet" href="../css/JFFormStyle-1.css" />
					<script type="text/javascript" src="../js/JFCore.js"></script>
					<script type="text/javascript" src="../js/JFForms.js"></script>
					<!-- Set here the key for your domain in order to hide the watermark on the web server -->
					<script type="text/javascript">
						(function() {
							JC.init({
								domainKey: ''
							});
						})();
					</script>
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
<script type="application/javascript">
    $('#submit')[0].onclick=function () {
        var start=$('#datepicker')[0].value;
        var sa=start.split("/");
        start=sa[2]+"-"+sa[0]+"-"+sa[1];
        var end=$('#datepicker1')[0].value;
        var ea=end.split("/");
        end=ea[2]+"-"+ea[0]+"-"+ea[1];

        var city=$('#city')[0].value;
        var adult=$('#adult')[0].value;
        var youth=$('#youth')[0].value;
        var child=$('#child')[0].value;
        window.location.href="avaliable?start="+start+"&end="+end+"&city="+city+"&adult="+adult+"&youth="+youth+"&child="+child;
    }
</script>
</html>