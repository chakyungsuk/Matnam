<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
    <link rel="shortcut icon" href="/resources/user/image/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/user/image/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/user/image/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/user/image/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/user/image/apple-touch-icon-144x144-precomposed.png">
    
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
    
    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/user/css/custom.css" rel="stylesheet">
    
    <!-- Modernizr -->
	<script src="/resources/user/js/modernizr.js"></script> 
</head>

<body>

<!-- Header ================================================== -->
<%@ include file="/WEB-INF/views/user/include/top.jsp"%>
<!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="header-video">
    <div id="hero_video">
        <div id="sub_content">
            <h1>Matnam or Delivery Food</h1>
            <p>
                Matnam Square.
            </p>
            <form method="post" action="list_page.html">
                <div id="custom-search-input">
                    <div class="input-group">
                        <input type="text" class=" search-query" placeholder="Your Address or postal code">
                        <span class="input-group-btn">
                        <input type="submit" class="btn_search" value="">
                        </span>
                    </div>
                </div>
            </form>
        </div><!-- End sub_content -->
    </div>
    <img src="/resources/user/image/video_fix.png" alt="" class="header-video--media" data-video-src="" data-teaser-source="/resources/user/video/intro" data-provider="" data-video-width="1920" data-video-height="960">
    <div id="count" class="d-none d-md-block">
        <ul>
            <li><span class="number">2650</span> Restaurant</li>
            <li><span class="number">5350</span> Meeting</li>
            <li><span class="number">12350</span> Registered Users</li>
        </ul>
    </div>
    </section><!-- End Header video -->
    <!-- End SubHeader ============================================ -->

    <!-- Content ================================================== -->
    <div class="container margin_60">
        <div class="main_title">
            <h2 class="nomargin_top">Project Introduction</h2>
            <p>
            	Jeonguggu Team
            </p>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="one" style="padding-top: 30px;">
                    <span>1</span>
                    <img src="/resources/user/image/Introduction1.png" style="width: 100%; height: 200px;">
                    <h3>음식점 추천 시스템</h3>
                    <p>
                       음식 랜덤 추천
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="two" style="padding-top: 30px;">
                    <span>2</span>
                    <img src="/resources/user/image/Introduction2.png" style="width: 100%; height: 200px;">
                    <h3>지도를 이용한 음식점 찾기</h3>
                    <p>
                       	현재 위치 기반 음식점 검색
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="three" style="padding-top: 30px;">
                    <span>3</span>
                    <img src="/resources/user/image/introduction3.jpg" style="width: 100%; height: 200px;">
                    <h3>사용자 매칭 시스템</h3>
                    <p>
                        다른 사용자와 맛있는 식사
                    </p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="four" style="padding-top: 30px;">
                    <span>4</span>
                    <img src="/resources/user/image/Introduction4.png" style="width: 100%; height: 200px;">
                    <h3>1:1 채팅시스템</h3>
                    <p>
                        1:1 채팅으로 편하게 친구 사귀기
                    </p>
                </div>
            </div>
        </div><!-- End row -->
<!--         <div id="delivery_time" class="d-none d-sm-block">
            <strong><span>2</span><span>5</span></strong>
            <h4>The minutes that usually takes to deliver!</h4>
        </div> -->
    </div><!-- End container -->
    <div class="white_bg">
        <div class="container margin_60">
            <div class="main_title">
                <h2 class="nomargin_top">Restaurant recommendations</h2>
                <p>
                    Top 6 restaurant selection
                </p>
            </div>
            <div class="container" style="text-align: center; margin-bottom: 23px;">
				<button class="btn btn-outline-dark" type="button">MAINS</button>
				<button class="btn btn-outline-dark" type="button">LUNCH</button>
				<button class="btn btn-outline-dark" type="button">DINNER</button>
				<button class="btn btn-outline-dark" type="button">DRINKS</button>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/qq.jpg" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>Taco Mexican</h3>
                            <div class="type">
                                Mexican / American
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/rr.jfif" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>Naples Pizza</h3>
                            <div class="type">
                                Italian / Pizza
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/vv.jpg" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>Japan Food</h3>
                            <div class="type">
                                Sushi / Japanese
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                </div><!-- End col-md-6-->
                <div class="col-lg-6">
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/xx.jpg" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>Sushi Gold</h3>
                            <div class="type">
                                Sushi / Japanese
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_close_alt2 no"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/zz.jpg" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>Dragon Tower</h3>
                            <div class="type">
                                Chinese / Thai
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                    <a href="detail_page.html" class="strip_list">
                        <div class="ribbon_1">Popular</div>
                        <div class="desc">
                            <div class="thumb_strip">
                                <img src="/resources/user/image/cc.jpg" alt="">
                            </div>
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                            </div>
                            <h3>China Food</h3>
                            <div class="type">
                                Chinese / Vietnam
                            </div>
                            <div class="location">
                                135 Newtownards Road, Belfast, BT4. <span class="opening">Opens at 17:00</span>
                            </div>
                            <ul>
                                <li>Take away<i class="icon_check_alt2 ok"></i></li>
                                <li>Delivery<i class="icon_check_alt2 ok"></i></li>
                            </ul>
                        </div><!-- End desc-->
                    </a><!-- End strip_list-->
                </div>
            </div><!-- End row -->
        </div><!-- End container -->
    </div><!-- End white_bg -->
<!--     <div class="high_light">
        <div class="container">
            <h3>Choose from over 2,000 Restaurants</h3>
            <p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
            <a href="list_page.html">View all Restaurants</a>
        </div>End container
    </div>End hight_light -->
    <!-- <section class="parallax-window" data-parallax="" data-image-src="/resources/user/image/carousel-3.jpg" data-natural-width="1200" data-natural-height="600"> -->
        <div class="container">
        <img src="/resources/user/image/carousel-3.jpg" class="" style="width: 100%; height: 600px; position: relative;">
<!--         <div class="parallax-content">
            <div class="sub_content" style="color: orange;">
                <i class="icon_mug"></i>
                <h3 style="color: white;">We also deliver to your office</h3>
                <p>
                </p>
            </div>End sub_content
        </div>End subheader -->
        </div>
    <!-- </section> --><!-- End section -->
    <!-- End Content =============================================== -->
<div class="white_bg">
    <div class="container margin_60" >
        <div class="main_title margin_mobile">
            <h2 class="nomargin_top">User recommendations</h2>
            <p>
                Delicious meeting.
            </p>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-3">
                <a class="box_work" href="submit_restaurant.html">
                    <img src="/resources/user/image/testimonial-2.jpg" width="848" height="480" alt="" class="img-fluid">
					<h3>고기맨<span>서울특별시 강북구	</span></h3>
                    <p>해산물 못 먹어요 고기만 좋아하는사람 연락주세용 ~</p>
                    <div class="btn_1">Read more</div>
                </a>
            </div>
            <div class="col-md-3">
                <a class="box_work" href="submit_driver.html">
                    <img src="/resources/user/image/testimonial-1.jpg" width="848" height="480" alt="" class="img-fluid">
                    <h3>쏘삼녀<span>서울특별시 강남구</span></h3>
                    <p>쏘삼 멤버 구해요! 언제든지 환영합니다.</p>
                    <div class="btn_1">Read more</div>
                </a>
            </div>
            <div class="col-md-3">
                <a class="box_work" href="submit_driver.html">
                    <img src="/resources/user/image/testimonial-4.jpg" width="848" height="480" alt="" class="img-fluid">
                    <h3>치맥맨<span>인천광역시</span></h3>
                    <p>집에서만 있는 당신은 루저 치맥하러 가시죠 고고</p>
                    <div class="btn_1">Read more</div>
                </a>
            </div>
            <div class="col-md-3">
                <a class="box_work" href="submit_driver.html">
                    <img src="/resources/user/image/testimonial-3.jpg" width="848" height="480" alt="" class="img-fluid">
                    <h3>코딩녀<span>서울특별시 강서구</span></h3>
                    <p>코딩 그만하고 오늘 저녁 시원한 맥주 어떠세요 ?</p>
                    <div class="btn_1">Read more</div>
                </a>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    </div>

<!-- Footer ================================================== -->    
<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/js/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="/resources/user/js/video_header.js"></script>
<script>
$(document).ready(function() {
	'use strict';
   	  HeaderVideo.init({
      container: $('.header-video'),
      header: $('.header-video--media'),
      videoTrigger: $("#video-trigger"),
      autoPlayVideo: true
    });    

});
</script>

</body>
</html>