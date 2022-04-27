<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="pizza, delivery food, fast food, sushi, take away, chinese, italian food">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>QuickFood - Quality delivery or take away food</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="/resources/user/css/animate.min.css" rel="stylesheet">
    <link href="/resources/user/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/user/css/menu.css" rel="stylesheet">
    <link href="/resources/user/css/style.css" rel="stylesheet">
    <link href="/resources/user/css/responsive.css" rel="stylesheet">
    <link href="/resources/user/css/elegant_font/elegant_font.min.css" rel="stylesheet">
    <link href="/resources/user/css/fontello/css/fontello.min.css" rel="stylesheet">
    <link href="/resources/user/css/magnific-popup.css" rel="stylesheet">
    <link href="/resources/user/css/pop_up.css" rel="stylesheet">
    
    <!-- Radio and check inputs -->
    <link href="/resources/user/css/skins/square/grey.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"	crossorigin="anonymous">
    
    <style>
	#tools {
	}
    
    </style>

</head>

<body>

	<div id="preloader">
        <div class="sk-spinner sk-spinner-wave" id="status">
            <div class="sk-rect1"></div>
            <div class="sk-rect2"></div>
            <div class="sk-rect3"></div>
            <div class="sk-rect4"></div>
            <div class="sk-rect5"></div>
        </div>
    </div><!-- End Preload -->

    <!-- Header ================================================== -->
    <header>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-4">
                <a href="index.html" id="logo">
                    <img src="img/logo.png" width="190" height="23" alt="" class="d-none d-sm-block">
                    <img src="img/logo_mobile.png" width="59" height="23" alt="" class="d-block d-sm-none">
                </a>
            </div>
            <nav class="col-md-8 col-sm-8 col-8">
            <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
            <div class="main-menu">
                <div id="header_menu">
                    <img src="img/logo.png" width="190" height="23" alt="">
                </div>
                <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
                 <ul>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Home<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="index.html">Home Video background</a></li>
                        <li><a href="index_2.html">Home Static image</a></li>
                        <li><a href="index_3.html">Home Text rotator</a></li>
                        <li><a href="index_8.html">Home Layer slider</a></li>
                        <li><a href="index_4.html">Home Cookie bar</a></li>
                        <li><a href="index_5.html">Home Popup</a></li>
                        <li><a href="index_7.html">Top Menu version 2</a></li>
                    </ul>
                    </li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Restaurants<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="list_page.html">Row listing</a></li>
                        <li><a href="grid_list.html">Grid listing</a></li>
                        <li><a href="map_listing.html">Map listing</a></li>
                        <li><a href="detail_page.html">Restaurant Menu</a></li>
                        <li><a href="submit_restaurant.html">Submit Restaurant</a></li>
                        <li><a href="cart.html">Order step 1</a></li>
                        <li><a href="cart_2.html">Order step 2</a></li>
                        <li><a href="cart_3.html">Order step 3</a></li>
                        <li><a href="cart_datepicker.html">Order Date/Time picker</a></li>
                    </ul>
                    </li>
                    <li><a href="about.html">About us</a></li>
                    <li><a href="faq.html">Faq</a></li>
                    <li class="submenu">
                    <a href="javascript:void(0);" class="show-submenu">Pages<i class="icon-down-open-mini"></i></a>
                    <ul>
                        <li><a href="RTL_version/index.html">RTL version</a></li>
                        <li><a href="admin.html">Admin section</a></li>
                        <li><a href="submit_driver.html">Submit Driver</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#login_2">User Login</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#register">User Register</a></li>
                        <li><a href="detail_page_2.html">Restaurant detail page</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="coming_soon/index.html">Coming soon page</a></li>
                        <li><a href="icon_pack_1.html">Icon pack 1</a></li>
                        <li><a href="icon_pack_2.html">Icon pack 2</a></li>
                    </ul>
                    </li>
                    <li><a href="#0" data-toggle="modal" data-target="#login_2">Login</a></li>
                    <li><a href="#0">Purchase this template</a></li>
                </ul>
            </div><!-- End main-menu -->
            </nav>
        </div><!-- End row -->
    </div><!-- End container -->
    </header>
    <!-- End Header =============================================== -->

	<!-- SubHeader =============================================== -->
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
	    <div id="subheader">
	        <div id="sub_content">
	            <h1>24 results in your zone</h1>
	            <div><i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB</div>
	        </div><!-- End sub_content -->
	    </div><!-- End subheader -->
	</section><!-- End section -->
	<!-- End SubHeader ============================================ -->
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
		<div class="col-lg-3">
			<p>
				<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
			</p>
			<div id="filters_col">
				<a data-toggle="collapse" href="#collapseFilters" aria-expanded="false" aria-controls="collapseFilters" id="filters_col_bt">Filters <i class="icon-plus-1 float-right"></i></a>
				<div class="collapse show" id="collapseFilters">
					<div class="filter_type">
                    	<h6>Distance</h6>
                        <input type="text" id="range" value="" name="range">						
					</div>
					<div class="filter_type">
						<h6>Rating</h6>
						<ul>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
						</ul>
					</div>
					<div class="filter_type">
						<h6>친구목록</h6>
						<ul>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>김승태</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>차경석</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>한예린</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>강현준</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>홍길동</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>아무개</li>
						</ul>
					</div>					
					<div class="filter_type">
						<h6>Options</h6>
						<ul class="nomargin">
							<li><label><input type="checkbox" class="icheck">Delivery</label></li>
							<li><label><input type="checkbox" class="icheck">Take Away</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 10Km</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 5Km</label></li>
						</ul>
					</div>
				</div><!--End collapse -->
			</div><!--End filters col-->
		</div><!--End col-md -->
        
		<div class="col-lg-9">  
			<div id="tools" style="border:none">
				<div class="row">
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>							
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>							
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>Open this select menu</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>											
					</div>					
					<div class="col-3" style="text-align:center;">
						<a href="detail_page.html" class="btn_1" style="text-align:center;">검색<i class="icon-search"></i></a>
						<a href="detail_page.html" class="btn_1" style="text-align:center;">초기화<i class="icon-refresh"></i></a>	
					</div>					
				</div>					
        	</div>	
			<div class="strip_list wow fadeIn" data-wow-delay="0.1s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 37
							</div>
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<h3>차경석 님</h3>
							<div class="type">
								15세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>					 
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="detail_page.html" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.2s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 65
							</div>
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<h3>한예린 님</h3>
							<div class="type">
								26세 / 여성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>중식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="detail_page.html" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.3s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 22
							</div>
							<h3>김승태 님</h3>
							<div class="type">
								45세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일산<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>한식<i class="icon_check_alt2 ok"></i></li>
								<li>일식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="detail_page.html" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->            
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.4s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 27
							</div>
							<h3>강현준 님</h3>
							<div class="type">
								29세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일산<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>한식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="detail_page.html" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
            <a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load more...</a>  
		</div><!-- End col-md-9-->
        
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>Secure payments with</h3>
                    <p>
                        <img src="img/cards.png" alt="" class="img-fluid">
                    </p>
                </div>
                <div class="col-md-3">
                    <h3>About</h3>
                    <ul>
                        <li><a href="about.html">About us</a></li>
                        <li><a href="faq.html">Faq</a></li>
                        <li><a href="contacts.html">Contacts</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#login_2">Login</a></li>
                        <li><a href="#0" data-toggle="modal" data-target="#register">Register</a></li>
                        <li><a href="#0">Terms and conditions</a></li>
                    </ul>
                </div>
                <div class="col-md-3" id="newsletter">
                    <h3>Newsletter</h3>
                    <p>
                        Join our newsletter to keep be informed about offers and news.
                    </p>
                    <div id="message-newsletter_2">
                    </div>
                    <form method="post" action="assets/newsletter.php" name="newsletter_2" id="newsletter_2">
                        <div class="form-group">
                            <input name="email_newsletter_2" id="email_newsletter_2" type="email" value="" placeholder="Your mail" class="form-control">
                        </div>
                        <input type="submit" value="Subscribe" class="btn_1" id="submit-newsletter_2">
                    </form>
                </div>
                <div class="col-md-2">
                    <h3>Settings</h3>
                    <div class="styled-select">
                        <select name="lang" id="lang">
                            <option value="English" selected>English</option>
                            <option value="French">French</option>
                            <option value="Spanish">Spanish</option>
                            <option value="Russian">Russian</option>
                        </select>
                    </div>
                    <div class="styled-select">
                        <select name="currency" id="currency">
                            <option value="USD" selected>USD</option>
                            <option value="EUR">EUR</option>
                            <option value="GBP">GBP</option>
                            <option value="RUB">RUB</option>
                        </select>
                    </div>
                </div>
            </div><!-- End row -->
            <div class="row">
                <div class="col-md-12">
                    <div id="social_footer">
                        <ul>
                            <li><a href="#0"><i class="icon-facebook"></i></a></li>
                            <li><a href="#0"><i class="icon-twitter"></i></a></li>
                            <li><a href="#0"><i class="icon-google"></i></a></li>
                            <li><a href="#0"><i class="icon-instagram"></i></a></li>
                            <li><a href="#0"><i class="icon-pinterest"></i></a></li>
                            <li><a href="#0"><i class="icon-vimeo"></i></a></li>
                            <li><a href="#0"><i class="icon-youtube-play"></i></a></li>
                        </ul>
                        <p>
                            © Quick Food 2021
                        </p>
                    </div>
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </footer>
    <!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
    
<!-- Login modal -->   
<div class="modal fade" id="login_2" tabindex="-1" role="dialog" aria-labelledby="myLogin" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="#" class="popup-form" id="myLogin">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
					<input type="text" class="form-control form-white" placeholder="Username">
					<input type="text" class="form-control form-white" placeholder="Password">
					<div class="text-left">
						<a href="#">Forgot Password?</a>
					</div>
					<button type="submit" class="btn btn-submit">Submit</button>
				</form>
			</div>
		</div>
	</div><!-- End modal -->   
    
<!-- Register modal -->   
<div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="myRegister" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
				<form action="#" class="popup-form" id="myRegister">
                	<div class="login_icon"><i class="icon_lock_alt"></i></div>
					<input type="text" class="form-control form-white" placeholder="Name">
					<input type="text" class="form-control form-white" placeholder="Last Name">
                    <input type="email" class="form-control form-white" placeholder="Email">
                    <input type="text" class="form-control form-white" placeholder="Password"  id="password1">
                    <input type="text" class="form-control form-white" placeholder="Confirm password"  id="password2">
                    <div id="pass-info" class="clearfix"></div>
					<div class="checkbox-holder text-left">
						<div class="checkbox">
							<input type="checkbox" value="accept_2" id="check_2" name="check_2" />
							<label for="check_2"><span>I Agree to the <strong>Terms &amp; Conditions</strong></span></label>
						</div>
					</div>
					<button type="submit" class="btn btn-submit">Register</button>
				</form>
			</div>
		</div>
	</div><!-- End Register modal -->
    
     <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>
<script>
    $(function () {
		 'use strict';
        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 15,
            from: 0,
            to:5,
            type: 'double',
            step: 1,
            prefix: "Km ",
            grid: true
        });
    });
</script>
</body>
</html>