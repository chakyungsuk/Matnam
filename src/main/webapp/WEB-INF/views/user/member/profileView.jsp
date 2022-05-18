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
    <link href="/resources/user/css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >
    
    <!-- glightbox css -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/glightbox/css/glightbox.min.css">

    <!-- One of the following themes -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/@simonwep/pickr/themes/nano.min.css" /> <!-- 'classic' theme -->

    <!-- swiper css -->
    <link rel="stylesheet" href="/resources/chat/dist/assets/libs/swiper/swiper-bundle.min.css">

    <!-- Icons Css -->
    <link href="/resources/chat/dist/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="/resources/chat/dist/assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/user/css/custom.css" rel="stylesheet">
    <style type="text/css">
    	.login_search:before {
		  content: "";
		  display: block;
		  float: left;
		  margin-right: 28px; 
		  width: 1px;
		  height: 16px;
		  background: #000000; 
		} 
		
		.login_text a:link{
			color: black;
		} 
		
		a:link{
			color: black;
			text-decoration: none;
		}
    </style> 
</head>

<body>
    <!-- Header ================================================== -->
    <%@ include file="/WEB-INF/views/user/include/top.jsp"%>
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

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="/index/matnamMain">홈</a></li>
                <li><a href="/user/profileView">프로필관리</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->

	<form id="formList" name="formList" method="post" action="/user/profileEdit">
		<input type="hidden" id="mnMmSeq" name="mnMmSeq">
	</form>

	<div class="container margin_60_35">
	    <div class="row justify-content-center">
	        <div class="col-5"> 
	            <div class="box_style_2" id="order_process">
	                <h2 class="inner" style="text-align: center;">프로필 관리</h2>
	                <!-- <div style="text-align: center;">
						<svg xmlns="http://www.w3.org/2000/svg" width="160" height="160" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
						</svg>
	                </div>
	                <div>
		                <div class="mx-auto col-sm-9 col-md-9 my-5">
		                	<div class="row">
			                	<h4 class="col-10" style="font-weight:900;">소개 메세지</h4>
								<a class="col-1" href="profileEdit"><h6><span class="badge bg-primary">프로필 수정</span></h6></a>
		                	</div> 
		                	<h5>좋은 식사는 정신을 건강하게 만듭니다</h5>
	                	</div>  
	                </div>
					<div style="text-align: center; padding:10px; "> 
	                	<a class="btn_1" href="userEdit" style="width:200px;">개인정보 변경</a>
	                </div>
					<div style="text-align: center; padding:10px; "> 
	                	<a class="btn_1" href="friendSelect" style="width:200px;">친구 관리</a>
	                </div> -->
	                <!-- Start Profile tab-pane -->
		            <div class="tab-pane" id="pills-user" role="tabpanel" aria-labelledby="pills-user-tab">
		                <!-- Start profile content -->
		                <div>
		                    <div class="user-profile-img">
		                        <img src="/resources/chat/dist/assets/images/4902908.jpg" class="profile-img" style="height: 220px;" alt="">
		                    </div>  
		                    <div class="text-center border-bottom border-bottom-dashed pt-2 pb-4 position-relative" style="margin-top:-80px;">
		                        <div class="mb-lg-3 mb-2"> 
		                            <img src="/resources/chat/dist/assets/images/users/avatar-1.jpg" class="rounded-circle avatar-lg img-thumbnail" style="width:150px;" alt="">
		                        </div>
		   
		                        <h5 class="fs-17 mb-1 text-truncate"><c:out value="${rt.mnMmName}"/></h5>
		                        <p class="text-muted fs-14 text-truncate mb-0"><c:out value="${rt.mnMmIntroduce}"/></p>
		                    </div>
		                    <!-- End profile user -->
		
		                    <!-- Start user-profile-desc -->
		                    <div class="p-4 profile-desc" style="height:200px;" data-simplebar>
		                        <div class="mb-4 pb-2">
		                            <div class="d-flex py-2 align-items-center">
		                                <div class="flex-shrink-0 me-3">
		                                    <i class="bx bx-user align-middle text-muted fs-19"></i>
		                                </div>
		                                <div class="flex-grow-1">
		                                    <p class="mb-0"><c:out value="${rt.mnMmName}"/></p>
		                                </div>
		                            </div>
		
		                            <div class="d-flex py-2 align-items-center">
		                                <div class="flex-shrink-0 me-3">
		                                    <i class="ri-phone-line align-middle text-muted fs-19"></i>
		                                </div>
		                                <div class="flex-grow-1">
		                                    <p class="mb-0"><c:out value="${rt.mnmpNumber}"/></p>
		                                </div>
		                            </div>
		
		                            <div class="d-flex py-2 align-items-center">
		                                <div class="flex-shrink-0 me-3">
		                                    <i class="ri-message-2-line align-middle text-muted fs-19"></i>
		                                </div>
		                                <div class="flex-grow-1">
		                                    <p class="fw-medium mb-0"><c:out value="${rt.mnMmEmail}"/></p>
		                                </div>
		                            </div>
		
		                            <div class="d-flex py-2 align-items-center">
		                                <div class="flex-shrink-0 me-3">
		                                    <i class="ri-map-pin-2-line align-middle text-muted fs-19"></i>
		                                </div>
		                                <div class="flex-grow-1">
		                                    <p class="mb-0"><c:out value="${rt.mnmaAddress1}"/></p>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                    <!-- end user-profile-desc -->
		                </div>
		                <!-- End profile content -->
		            </div>
		            <!-- End Profile tab-pane -->
            
            		<div style="text-align: center; padding:10px; "> 
	                	<button class="btn_1" onclick="javascript:goProfileEdit(${sessSeq})" style="width:200px;">프로필 변경</button>
	                </div>
            		<div style="text-align: center; padding:10px; "> 
	                	<button class="btn_1" onclick="javascript:goUserEdit(${sessSeq})" style="width:200px;">개인정보 변경</button>
	                </div>
					<%-- <div style="text-align: center; padding:10px; "> 
	                	<button class="btn_1" onclick="javascript:goFriendSelect(${sessSeq})" style="width:200px;">친구 관리</button>
	                </div> --%>
	            </div><!-- End box_style_1 -->
	        </div><!-- End col -->
	        
	    </div><!-- End row -->
	</div><!-- End container -->


<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
    
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
    
    goProfileEdit = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/profileEdit");
		$("#formList").submit();
	} 
    
    goUserEdit = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/userEdit");
		$("#formList").submit();
	} 
    
    goFriendSelect = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/friendSelect");
		$("#formList").submit();
	} 
</script>
</body>
</html>