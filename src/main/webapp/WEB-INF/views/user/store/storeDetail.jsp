<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>



<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="pizza, delivery food, fast food, sushi, take away, chinese, italian food">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title>QuickFood - Quality delivery or take away food</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/user/image/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="${pageContext.request.contextPath}/resources/user/image/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="${pageContext.request.contextPath}/resources/user/image/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="${pageContext.request.contextPath}/resources/user/image/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="${pageContext.request.contextPath}/resources/user/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/menu.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/responsive.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/elegant_font/elegant_font.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/fontello/css/fontello.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/magnific-popup.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/user/css/pop_up.css" rel="stylesheet">
    
    <!-- Radio and check inputs -->
    <link href="css/skins/square/grey.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.css" rel="stylesheet">
    <link href="css/ion.rangeSlider.skinFlat.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

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
    <section class="parallax-window" data-parallax="scroll" data-image-src="img/sub_header_2.jpg" data-natural-width="1400" data-natural-height="470">
        <div id="subheader">
            <div id="sub_content">
                <div id="thumb"><img src="img/thumb_restaurant.jpg" alt=""></div>
                <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> ( <small><a href="#0">98 reviews</a></small> )</div>
                <h1>힘난다 버거 강남점</h1>
                <div><em>페스트푸드 / 햄버거</em></div>
                <div><i class="icon_pin"></i> 서울 강남구 강남대로84길 15 지상1층 102-1호 <strong></strong></div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">지도검색</a></li>
                <li>음식점상세</li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
    </div><!-- End Map -->

    <!-- Content ================================================== -->
    <div class="container margin_60_35">
        <div class="row">
            <div class="col-lg-4">
                <p>
                    <a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                </p>
                <div class="box_style_2">
                    <h4 class="nomargin_top">Info</h4>
                    <ul class="opening_list">
                        <li>주소<span>서울 강남구 강남대로84길 15 지상1층 102-1호</span></li>
                        <li>전화번호<span>02-567-6768</span></li>
                        <li>음식종류 <span class="label label-danger">페스트푸드</span></li>
                        <li>영업시간<span>10:30~20:00</span></li>
                        <li>휴무일<span>연중무휴</span></li>
                    </ul>
                </div>
                <div class="box_style_2 d-none d-sm-block" id="help">
                    <i class="icon_lifesaver"></i>
                    <h4>Need <span>Help?</span></h4>
                    <a href="tel://004542344599" class="phone">+45 423 445 99</a>
                    <small>Monday to Friday 9.00am - 7.30pm</small>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="box_style_2">
                    <h2 class="inner">Description</h2>
                    <div id="Img_carousel" class="slider-pro">
                        <div class="sp-slides">
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="/resources/css/images/blank.gif" data-src="/resources/image/slider_single_restaurant/1_medium.jpg" data-small="img/slider_single_restaurant/1_small.jpg" data-medium="img/slider_single_restaurant/1_medium.jpg" data-large="img/slider_single_restaurant/1_large.jpg" data-retina="img/slider_single_restaurant/1_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/2_medium.jpg" data-small="img/slider_single_restaurant/2_small.jpg" data-medium="img/slider_single_restaurant/2_medium.jpg" data-large="img/slider_single_restaurant/2_large.jpg" data-retina="img/slider_single_restaurant/2_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/3_medium.jpg" data-small="img/slider_single_restaurant/3_small.jpg" data-medium="img/slider_single_restaurant/3_medium.jpg" data-large="img/slider_single_restaurant/3_large.jpg" data-retina="img/slider_single_restaurant/3_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/4_medium.jpg" data-small="img/slider_single_restaurant/4_small.jpg" data-medium="img/slider_single_restaurant/4_medium.jpg" data-large="img/slider_single_restaurant/4_large.jpg" data-retina="img/slider_single_restaurant/4_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/5_medium.jpg" data-small="img/slider_single_restaurant/5_small.jpg" data-medium="img/slider_single_restaurant/5_medium.jpg" data-large="img/slider_single_restaurant/5_large.jpg" data-retina="img/slider_single_restaurant/5_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/6_medium.jpg" data-small="img/slider_single_restaurant/6_small.jpg" data-medium="img/slider_single_restaurant/6_medium.jpg" data-large="img/slider_single_restaurant/6_large.jpg" data-retina="img/slider_single_restaurant/6_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/7_medium.jpg" data-small="img/slider_single_restaurant/7_small.jpg" data-medium="img/slider_single_restaurant/7_medium.jpg" data-large="img/slider_single_restaurant/7_large.jpg" data-retina="img/slider_single_restaurant/7_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/8_medium.jpg" data-small="img/slider_single_restaurant/8_small.jpg" data-medium="img/slider_single_restaurant/8_medium.jpg" data-large="img/slider_single_restaurant/8_large.jpg" data-retina="img/slider_single_restaurant/8_large.jpg">
                            </div>
                            <div class="sp-slide">
                                <img alt="" class="sp-image" src="../src/css/images/blank.gif" data-src="img/slider_single_restaurant/9_medium.jpg" data-small="img/slider_single_restaurant/9_small.jpg" data-medium="img/slider_single_restaurant/9_medium.jpg" data-large="img/slider_single_restaurant/9_large.jpg" data-retina="img/slider_single_restaurant/9_large.jpg">
                            </div>
                        </div>
                        <div class="sp-thumbnails">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/1_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/2_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/3_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/4_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/5_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/6_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/7_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/8_medium.jpg">
                            <img alt="" class="sp-thumbnail" src="img/slider_single_restaurant/9_medium.jpg">
                        </div>
                    </div>
                    <h3>힘난다버거 강남점</h3>
                    <p>
                        맛과 영양의 균형을 갖춘 푸드테크 선두 기업 힘난다 입니다
                    </p>
                    <p class="add_bottom_30">
                        맛있는 건강, 신바이오틱스 첨가 식품으로 만듭니다.
						힘난다 수퍼푸드 컴퍼니는 현대인의 건강한 100세 시대를 위해 신바이오틱스 첨가 식품 연구개발에
						집중합니다. 특히 온도에 민감하게 반응하는 프로바이오틱스의 한계를 뛰어넘은 신바이오틱스를
						사용 중입니다. 이를 함유한 햄버거 패티, 샐러드, 주스를 생산·유통 중이며, 다양한 식품 개발을
						통하여 맛있는 음식을 건강하게 먹을 수 있는 세상을 만들고자 합니다.
                    </p>
                    <div id="summary_review">
                        <div id="general_rating">
                            11 Reviews
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                        </div>
                        <div class="row" id="rating_summary">
       
                        </div><!-- End row -->
                        <hr class="styled">
                        <a href="#" class="btn_1 add_bottom_15" data-toggle="modal" data-target="#myReview">리뷰작성</a>
                    </div><!-- End summary_review -->
                    
                    <div class="review_strip_single">
                        <img src="img/avatar1.jpg" alt="" class="rounded-circle">
                        <small> - 2022.04 -</small>
                        <h4>김승태</h4>
                        <p>
                            직원분이 친절하시고 맛있어서 또올거같아요.
                        </p>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="rating">
                                    <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
                                </div>
                                Food Quality
                            </div>
                        </div><!-- End row -->
                    </div><!-- End review strip -->
                   
                   
                </div><!-- End box_style_1 -->
            </div>
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
    
    <!-- Review modal -->   
    <div class="modal fade" id="myReview" tabindex="-1" role="dialog" aria-labelledby="review" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content modal-popup">
				<a href="#" class="close-link"><i class="icon_close_alt2"></i></a>
					<form method="post" action="assets/review_restaurant.php" name="review" id="review" class="popup-form">  
                    <div class="login_icon"><i class="icon_comment_alt"></i></div>
                     <input name="restaurant_name" id="restaurant_name" type="hidden" value="Mexican Taco Mex">	
                    	<div class="row" >
                        	<div class="col-md-6">
                            <input name="name_review" id="name_review" type="text" placeholder="Name" class="form-control form-white">			
                            </div>
                            <div class="col-md-6">
                            	<input name="email_review" id="email_review" type="email" placeholder="Your email" class="form-control form-white">
                            </div>
                        </div><!-- End Row --> 
                        
                        <div class="row">
                        	<div class="col-md-6">
							<select class="form-control form-white" name="food_review" id="food_review">
									<option value="">Food Quality</option>
									<option value="Low">Low</option>
									<option value="Sufficient">Sufficient</option>
									<option value="Good">Good</option>
									<option value="Excellent">Excellent</option>
									<option value="Superb">Super</option>
									<option value="Not rated">I don't know</option>
								</select>                            </div>
                            <div class="col-md-6">
								<select class="form-control form-white"  name="price_review" id="price_review">
									<option value="">Price</option>
									<option value="Low">Low</option>
									<option value="Sufficient">Sufficient</option>
									<option value="Good">Good</option>
									<option value="Excellent">Excellent</option>
									<option value="Superb">Super</option>
									<option value="Not rated">I don't know</option>
								</select>
                            </div>
                        </div><!--End Row -->    
                        
                        <div class="row">
                        	<div class="col-md-6">
									<select class="form-control form-white"  name="punctuality_review" id="punctuality_review">
									<option value="">Punctuality</option>
									<option value="Low">Low</option>
									<option value="Sufficient">Sufficient</option>
									<option value="Good">Good</option>
									<option value="Excellent">Excellent</option>
									<option value="Superb">Super</option>
									<option value="Not rated">I don't know</option>
								</select>                       </div>
                            <div class="col-md-6">
								<select class="form-control form-white"  name="courtesy_review" id="courtesy_review">
									<option value="">Courtesy</option>
									<option value="Low">Low</option>
									<option value="Sufficient">Sufficient</option>
									<option value="Good">Good</option>
									<option value="Excellent">Excellent</option>
									<option value="Superb">Super</option>
									<option value="Not rated">I don't know</option>
								</select>
                            </div>
                        </div><!--End Row -->     
						<textarea name="review_text" id="review_text" class="form-control form-white" style="height:100px" placeholder="Write your review"></textarea>
						<input type="text" id="verify_review" class="form-control form-white" placeholder="Are you human? 3 + 1 =">
					    <input type="submit" value="Submit" class="btn btn-submit" id="submit-review">
				</form>
                <div id="message-review"></div>
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
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/common_scripts_min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/functions.js"></script>
<!-- <script src="assets/validate.js"></script> -->

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/map.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/infobox.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/ion.rangeSlider.js"></script>
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
    
    document.querySelector('#ex-in').addEventListener('input',e=>{
        document.querySelector('#ex-out').innerHTML= e.target.value;
    });
</script>
</body>
</html>