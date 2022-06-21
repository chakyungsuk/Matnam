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

    <!-- Favicons-->
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
	<style type="text/css">
		a:link{
			text-decoration: none;
		}
		
		.thumb_strip img {
			height: 100% !important;
		}
		
		.desc .rating {
			padding-bottom:10px;
		}
		
		.desc h3 {
			padding-bottom:6px !important;
		}
    </style>
	

<style>
	.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
	.map_wrap {position:relative;width:100%;height:350px;}
	#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
	#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
	#category li.on {background: #eee;}
	#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
	#category li:last-child{margin-right:0;border-right:0;}
	#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
	#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
	#category li .bank {background-position: -10px 0;}
	#category li .mart {background-position: -10px -36px;}
	#category li .pharmacy {background-position: -10px -72px;}
	#category li .oil {background-position: -10px -108px;}
	#category li .cafe {background-position: -10px -144px;}
	#category li .store {background-position: -10px -180px;}
	#category li.on .category_bg {background-position-x:-46px;}
	.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
	.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
	.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
	.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
	.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
	.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
	.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
	.placeinfo .tel {color:#0f7833;}
	.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
	  
	.screen a{
	  display: block;
	  width: 100%; height: 100%;	
	  overflow: hidden;	
	  position: relative; 
	}
	
	.screen figure{
	  width: 100%; height: 100%;
	}
	
	.screen figcaption{
	  width: 100%;
	  background-color: rgba(0,0,0,0.7);	
	  position: absolute;
	  top: 0; left: 0;	
	  color: #fff; text-align: center;
	  line-height: 300px;	
	  opacity: 0; 	
	  transition: 0.3s;
	}
	
	.screen a:hover figcaption, .screen a:focus figcaption{
	  opacity: 1;
	}
	
	input[type="radio"] {display:none;}
	input[type="radio"] + label {display:inline-block; cursor:pointer;}
	input[type="radio"]:checked {background:blue; color:white;}
	
	.conbox {width:100%; height:100%; background:none; margin-top:30px; display:none;}
	input[id="tab01"]:checked ~ .con1 {display:block;}
	input[id="tab02"]:checked ~ .con2 {display:block;}
	input[id="tab03"]:checked ~ .con3 {display:block;}
	input[id="tab04"]:checked ~ .con4 {display:block;}
	
	div > label {
		border : 1px solid;
		font-weight: normal;
		padding: 5px 15px;
		border-radius: 5px;
	}
	
	col-lg-12 > col-lg-6 {
    float: left;
    color:red;
	}
	
	.container {
		height:100%;
	}
	
</style>	
	
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
                    <!-- <div class="input-group">
                        <input type="text" class=" search-query" placeholder="Your Address or postal code">
                        <span class="input-group-btn">
                        <input type="submit" class="btn_search" value="">
                        </span>
                    </div> -->
                    <div style="padding-top:80px">
                       <button type="button" class="btn btn-outline-light btn-lg" onclick="location.href='/user/storeView'">지도검색</button>
                       <button type="button" class="btn btn-outline-light btn-lg" onclick="location.href='javascript:goAreaSelect(${sessSeq})'">친구매칭</button>
                    </div>
                </div>
            </form>
        </div><!-- End sub_content -->
    </div>
    <img src="/resources/user/image/video_fix.png" alt="" class="header-video--media" data-video-src="" data-teaser-source="/resources/user/video/intro" data-provider="" data-video-width="1920" data-video-height="960">
    <div id="count" class="d-none d-md-block">
        <ul>
            <li><span class="number">${countRestaurant.countRestaurant}</span> 음식점</li>
            <li><span class="number">${countReview.countReview}</span> 리뷰</li>
            <li><span class="number">${countUser.countUser}</span> 유저</li>
        </ul>
    </div>
    </section><!-- End Header video -->
    <!-- End SubHeader ============================================ -->

    <!-- Content ================================================== -->
    <div class="container margin_60">
        <div class="main_title">
            <h2 class="nomargin_top" style="font-weight:600";>맛남프로젝트 소개 </h2>
            <p>
            	Jeonguggu Team
            </p>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="one" style="padding-top: 30px;">    
                	<span>1</span> 	
	            	<div class="screen"> 
	                	<a href="#restRec">   
		                	<figure>
			                    <img src="/resources/user/image/zpp.JPG" style="width: 100%; height: 300px;">
			                    <figcaption>나의 입맛을 저격할 '맛남'만의 맛집 추천!</figcaption>
		                    </figure>
	                    </a>
	                </div>
	                <div>    
	                    <h3>음식점 추천 시스템</h3>
	            	</div>     
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="two" style="padding-top: 30px;">
                    <span>2</span>
                    <div class="screen">
                    	<a href="/user/storeView">	
                    	<figure>
		                    <img src="/resources/user/image/Introduction2.png" style="width: 100%; height: 300px;">
		                    <figcaption>내가 어디에 있던 상관없이 맛집 탐색!</figcaption>		                    
		                </figure>    
	                    </a>
                    </div>
                    <div>    
	                    <h3>지도를 이용한 음식점 찾기</h3>
	            	</div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="three" style="padding-top: 30px;">
                    <span>3</span>
                     <div class="screen">
                    	<a href="javascript:goAreaSelect(${sessSeq})">	
                    	<figure>
		                    <img src="/resources/user/image/introduction3.jpg" style="width: 100%; height: 300px;">
		                    <figcaption>나와 같은 취향의 다양한 친구를 만날수 있는 기회!</figcaption>		                    
		                </figure>    
	                    </a>
	                 </div>   
	                 <div>   
	                    <h3>사용자 매칭 시스템</h3>
                  	 </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="box_home" id="four" style="padding-top: 30px;">
                    <span>4</span>
                    <div class="screen">
                    	<a href="javascript:gochat()">	
                    	<figure>
		                    <img src="/resources/user/image/chatting.png" style="width: 100%; height: 300px;">
		                    <figcaption>친구들과 자유로운 채팅 가능!</figcaption>		                    
		                </figure>    
	                    </a>
                    </div>
                    <div>    
	                    <h3>1:1 채팅시스템</h3>
	            	</div>
                </div>
            </div>
        </div><!-- End row -->
<!--         <div id="delivery_time" class="d-none d-sm-block">
            <strong><span>2</span><span>5</span></strong>
            <h4>The minutes that usually takes to deliver!</h4>
        </div> -->
    </div><!-- End container -->
    <div id="restRec">
    <div class="white_bg" style="background-image:url('/resources/user/image/fff1.jpg');">
        <div class="container margin_60">
            <div class="main_title">
                <h2 class="nomargin_top" style="color:black; font-weight:600; text-shadow:3px 3px 4px white;">음식점 추천</h2>
                <p style="color:black; text-shadow:3px 3px 4px white;">
                  	음식종류별로 음식점을 추천받아보세요!
                </p>
            </div>
            <div class="container" style="text-align: center; margin-bottom: 23px;">
	            <div class="tab_content">
					<input type="radio" name="tabmenu" id="tab01" checked>
	                <label for="tab01" style="background-color:white; border-color:gray;">한식</label>
	              
	                <input type="radio" name="tabmenu" id="tab02">
	                <label for="tab02" style="background-color:white; border-color:gray;">돈까스&일식</label>
	               
	                <input type="radio" name="tabmenu" id="tab03">
	                <label for="tab03" style="background-color:white; border-color:gray;">중국집</label>
	               
	                <input type="radio" name="tabmenu" id="tab04">
	                <label for="tab04" style="background-color:white; border-color:gray;">아시안&양식</label>
	                
               		<!-- 한식 -->
                    <div class="conbox con1">
                    	<div class="row" style="float: none;">
			                <div class="col-12">
			                	<c:set var="countKorean" value="0" />
				                <c:forEach items="${listRestaurant}" var="rt" varStatus="status">
				                	<c:if test="${rt.mnrtFoodCateCd eq 123 && countKorean < 6}">
							            <div class="col-6" style="float: left; margin:0 auto;">
							                <a href="/user/storeDetail?mnrtSeq=${rt.mnrtSeq}" class="strip_list" style="height:170px;">
					                        <div class="desc">
					                            <div class="thumb_strip">
							                    	 <c:choose>
									                	<c:when test="${empty rt.path}">
										                    <img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" width="848" height="480" alt="" class="img-fluid">
									                	</c:when>
									                	<c:otherwise>
									                    	<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidName}"/>" width="848" height="480" alt="" class="img-fluid">
									                	</c:otherwise>
									                </c:choose>
												</div>
					                            <div class="rating">
					                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
					                            </div>
					                            <h3><c:out value="${rt.mnrtName}"/></h3>
					                            <div class="location">
					                           		<fmt:parseDate value="${rt.mnrtTimeStart}" var="parseTime" pattern="HH:mm"/>
					                                <c:out value="${rt.mnrtAddressFull}"/> <span class="opening">Opens at <fmt:formatDate value="${parseTime}" pattern="HH:mm"/><br></span>
					                            </div>
					                        </div>
					                    	</a>
							            </div> 
							            <c:set var="countKorean" value="${countKorean + 1}" />
				                	</c:if>
					           	</c:forEach> 
			                </div>		                
			            </div>
		            </div>
		            <!-- 일식&돈가스 -->
                    <div class="conbox con2">
                    	<div class="row" style="float: none;">
			                <div class="col-12">
			                    <c:set var="countJapanese" value="0" />
				                <c:forEach items="${listRestaurant}" var="rt" varStatus="status">
				                	<c:if test="${rt.mnrtFoodCateCd eq 126 && countJapanese < 6}">
							            <div class="col-6" style="float: left; margin:0 auto;">
							                <a href="/user/storeDetail?mnrtSeq=${rt.mnrtSeq}" class="strip_list" style="height:170px;">
					                        <div class="desc">
					                            <div class="thumb_strip">
							                    	<c:choose>
									                	<c:when test="${empty rt.path}">
										                    <img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" width="848" height="480" alt="" class="img-fluid">
									                	</c:when>
									                	<c:otherwise>
									                    	<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidName}"/>" width="848" height="480" alt="" class="img-fluid">
									                	</c:otherwise>
									                </c:choose>
												</div>
					                            <div class="rating">
					                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
					                            </div>
					                            <h3><c:out value="${rt.mnrtName}"/></h3>
					                            <div class="location">
					                           		<fmt:parseDate value="${rt.mnrtTimeStart}" var="parseTime" pattern="HH:mm"/>
					                                <c:out value="${rt.mnrtAddressFull}"/> <span class="opening">Opens at <fmt:formatDate value="${parseTime}" pattern="HH:mm"/><br></span>
					                            </div>
					                        </div>
					                    	</a>
							            </div> 
							            <c:set var="countJapanese" value="${countJapanese + 1}" />
				                	</c:if>
					           	</c:forEach>                    
			                </div>		                
			            </div>
		            </div>
		            <!-- 중국집 -->
                    <div class="conbox con3">
                    	<div class="row" style="float: none;">
			                <div class="col-12">
			                	<c:set var="countChinese" value="0" />
				                <c:forEach items="${listRestaurant}" var="rt" varStatus="status">
				                	<c:if test="${rt.mnrtFoodCateCd eq 130 && countChinese < 6}">
							            <div class="col-6" style="float: left; margin:0 auto;">
							                <a href="/user/storeDetail?mnrtSeq=${rt.mnrtSeq}" class="strip_list" style="height:170px;">
					                        <div class="desc">
					                            <div class="thumb_strip">
							                    	<c:choose>
									                	<c:when test="${empty rt.path}">
										                    <img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" width="848" height="480" alt="" class="img-fluid">
									                	</c:when>
									                	<c:otherwise>
									                    	<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidName}"/>" width="848" height="480" alt="" class="img-fluid">
									                	</c:otherwise>
									                </c:choose>
												</div>
					                            <div class="rating">
					                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
					                            </div>
					                            <h3><c:out value="${rt.mnrtName}"/></h3>
					                            <div class="location">
					                           		<fmt:parseDate value="${rt.mnrtTimeStart}" var="parseTime" pattern="HH:mm"/>
					                                <c:out value="${rt.mnrtAddressFull}"/> <span class="opening">Opens at <fmt:formatDate value="${parseTime}" pattern="HH:mm"/><br></span>
					                            </div>
					                        </div>
					                    	</a>
							            </div> 
							            <c:set var="countChinese" value="${countChinese + 1}" />
				                	</c:if>
					           	</c:forEach>                    
			                </div>		                
			            </div>
		            </div>
		            <!-- 아시안&양식 -->
                    <div class="conbox con4">
                    	<div class="row" style="float: none;">
			                <div class="col-12">
			                	<c:set var="countAsian" value="0" />
				                <c:forEach items="${listRestaurant}" var="rt" varStatus="status">
				                	<c:if test="${rt.mnrtFoodCateCd eq 129 && countAsian < 6}">
							            <div class="col-6" style="float: left; margin:0 auto;">
							                <a href="/user/storeDetail?mnrtSeq=${rt.mnrtSeq}" class="strip_list" style="height:170px;">
					                        <div class="desc">
					                            <div class="thumb_strip">
							                    	<c:choose>
									                	<c:when test="${empty rt.path}">
										                    <img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" width="848" height="480" alt="" class="img-fluid">
									                	</c:when>
									                	<c:otherwise>
									                    	<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidName}"/>" width="848" height="480" alt="" class="img-fluid">
									                	</c:otherwise>
									                </c:choose>
												</div>
					                            <div class="rating">
					                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
					                            </div>
					                            <h3><c:out value="${rt.mnrtName}"/></h3>
					                            <div class="location">
					                           		<fmt:parseDate value="${rt.mnrtTimeStart}" var="parseTime" pattern="HH:mm"/>
					                                <c:out value="${rt.mnrtAddressFull}"/> <span class="opening">Opens at <fmt:formatDate value="${parseTime}" pattern="HH:mm"/><br></span>
					                            </div>
					                        </div>
					                    	</a>
							            </div> 
							            <c:set var="countAsian" value="${countAsian + 1}" />
				                	</c:if>
					           	</c:forEach>                 
			                </div>		                
			            </div><!-- End row -->
		            </div>
	            </div>
            </div>
            <!-- <div class="row">
                <div class="col-lg-6">
                    <a href="detail_page.html" class="strip_list">
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
                        </div>End desc
                    </a>End strip_list
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
                        </div>End desc
                    </a>End strip_list
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
                        </div>End desc
                    </a>End strip_list
                </div>End col-md-6
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
                        </div>End desc
                    </a>End strip_list
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
                        </div>End desc
                    </a>End strip_list
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
                        </div>End desc
                    </a>End strip_list
                </div>
            </div>End row -->
        </div><!-- End container -->
    </div>
    </div><!-- End white_bg -->
<!--     <div class="high_light">
        <div class="container">
            <h3>Choose from over 2,000 Restaurants</h3>
            <p>Ridiculus sociosqu cursus neque cursus curae ante scelerisque vehicula.</p>
            <a href="list_page.html">View all Restaurants</a>
        </div>End container
    </div>End hight_light -->
    <!-- <section class="parallax-window" data-parallax="" data-image-src="/resources/user/image/carousel-3.jpg" data-natural-width="1200" data-natural-height="600"> -->
    
    
<!-- <div class="container">
	<div class="map_wrap">
	    <div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;"></div>
	    <ul id="category">
	        <li id="FD6" data-order="1"> 
	            <span class="category_bg mart"></span>
	            음식점
	        </li>  
	        <li id="CS2" data-order="5"> 
	            <span class="category_bg store"></span>
	            편의점
	        </li>      
	    </ul>
	</div>
</div>     -->  

  
<!--   <div class="container">
       <img src="/resources/user/image/carousel-3.jpg" class="" style="width: 100%; height: 600px; position: relative;">
         <div class="parallax-content">
            <div class="sub_content" style="color: orange;">
                <i class="icon_mug"></i>
                <h3 style="color: white;">We also deliver to your office</h3>
                <p>
                </p>
            </div>End sub_content
        </div>End subheader 
        </div>-->
    <!-- </section> --><!-- End section -->
    <!-- End Content =============================================== -->
<div class="white_bg">
    <div class="container margin_60" >
        <div class="main_title margin_mobile">
            <h2 class="nomargin_top" style="font-weight:600";>유저매칭</h2>
            <p>
               다른유저들과 친구추가를 해보세요!
            </p>
        </div>
        <div class="row justify-content-center">
             <c:forEach items="${list}" var="rt" varStatus="status">
	            <div class="col-md-3">
	                <a class="box_work" href="/user/friendDetail?mnMmSeq=${rt.mnMmSeq}" style="box-shadow : 0px 0px 0px 3px #f0f2f4; height:430px;">
	                <div style="height:250px; margin-bottom:20px;">
	                <c:choose>
	                	<c:when test="${empty rt.path}">
		                    <img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" alt="" class="img-fluid" style="width:250px; height:250px;">
	                	</c:when>
	                	<c:otherwise>
	                    	<img src="<c:out value="${rt.path}"/><c:out value="${rt.uuidName}"/>" alt="" class="img-fluid" style="width:250px; height:250px;">
	                	</c:otherwise>
	                </c:choose>
	                </div>
	                <div style="height:200px; margin-bottom:20px;">
						<h3><c:out value="${rt.mnMmName}"/>
						<c:choose>
							<c:when test="${rt.mnMmAddressPublicNy eq 1}">
								<span><c:out value="${rt.mnmaAddress1}"/></span>
							</c:when>
							<c:otherwise>
								<span>주소 비공개</span>
							</c:otherwise>
						</c:choose>
						</h3>
	                    <p><c:out value="${rt.mnMmIntroduce}"/></p>
	                </div>    
	                    
	                </a> 
	            </div> 
           	</c:forEach> 
        </div><!-- End row -->
    </div><!-- End container -->
    </div>
    
    <form action="" id="goChatForm" name="goChatForm" method="post">
		<input type="hidden" id="mnMmSeqQ" name="mnMmSeq">
		<input type="hidden" id="mnfdFriendSeq" name="mnfdFriendSeq">
		<input type="hidden" id="mnMmName" name="mnMmName">
		<input type="hidden" id="fdmnMmName" name="fdmnMmName">
	</form>

<!-- Footer ================================================== -->    
<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/js/validate.js"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

gochat = function(seq,name,seq2){
	
	alert("샘플 채팅으로 이동하기 위해 유저게스트로 로그인합니다.");
	alert("로그인 > 친구목록 > 1:1채팅에서 타 유저와 채팅가능합니다.");
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		,url: "/user/loginProc"
		,data : { "mnMmId" : "guest1", "mnMmPassword" : "guest1"}
		,success: function(response) {
			if(response.rt == "success") {
				$("#mnfdFriendSeq").val(140);
				$("#fdmnMmName").val("한예린");
				$("#mnMmSeqQ").val(142);
				$("#goChatForm").attr("action","/chat/chatView2");
				$("#goChatForm").submit();
			} else {
				alert("회원없음");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
} 
</script>

<!-- KaKao Map S -->
<script>
	var places = new kakao.maps.services.Places();
	var callback = function(status, result, pagination) {
		if (status === kakao.maps.services.Status.OK) {
			alert("검색된 음식점의 갯수는 " +  result.places.length + "개 입니다.");
		}
	};
	
	places.categorySearch('FD6', callback, {
		location: new kakao.maps.LatLng(33.450701, 126.570667)
	});
	
	//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
	    markers = [], // 마커를 담을 배열입니다
	    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
	 
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(map); 

	// HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
	if (navigator.geolocation) {
	    
	    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
	    navigator.geolocation.getCurrentPosition(function(position) {
	        
	        var lat = position.coords.latitude, // 위도
	            lon = position.coords.longitude; // 경도
	        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
	            message = '<div style="padding:5px;">여기에 계신가요?!</div>'; // 인포윈도우에 표시될 내용입니다
	        // 마커와 인포윈도우를 표시합니다
	        displayMarker(locPosition, message);
	      });
	    
	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
	    
	    var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
	        message = 'geolocation을 사용할수 없어요..'
	        
	    displayMarker(locPosition, message);
	}
	
	function displayMarker(locPosition, message) {
	
	    // 마커를 생성합니다
	    var marker = new kakao.maps.Marker({  
	        map: map, 
	        position: locPosition
	    }); 
	    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

	    // 인포윈도우를 생성합니다
	    var infowindow = new kakao.maps.InfoWindow({
	        content : iwContent,
	        removable : iwRemoveable
	    });
	    
	    // 인포윈도우를 마커위에 표시합니다 
	    infowindow.open(map, marker);
	    
	    // 지도 중심좌표를 접속위치로 변경합니다
	    map.setCenter(locPosition);    
	}
	
	
	// 지도에 idle 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', searchPlaces);
	
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';
	
	// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
	// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
	addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
	addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
	
	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);  
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	addCategoryClickEvent();
	
	// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
	function addEventHandle(target, type, callback) {
	    if (target.addEventListener) {
	        target.addEventListener(type, callback);
	    } else {
	        target.attachEvent('on' + type, callback);
	    }
	}
	
	// 카테고리 검색을 요청하는 함수입니다
	function searchPlaces() {
	    if (!currCategory) {
	        return;
	    }
	    
	    // 커스텀 오버레이를 숨깁니다 
	    placeOverlay.setMap(null);
	
	    // 지도에 표시되고 있는 마커를 제거합니다
	    removeMarker();
	    
	    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
	}
	
	// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
	function placesSearchCB(data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {
	
	        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
	        displayPlaces(data);
	    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
	
	    } else if (status === kakao.maps.services.Status.ERROR) {
	        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
	        
	    }
	}
	
	// 지도에 마커를 표출하는 함수입니다
	function displayPlaces(places) {
	
	    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
	    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
	    var order = document.getElementById(currCategory).getAttribute('data-order');
	
	    
	
	    for ( var i=0; i<places.length; i++ ) {
	
	            // 마커를 생성하고 지도에 표시합니다
	            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
	
	            // 마커와 검색결과 항목을 클릭 했을 때
	            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
	            (function(marker, place) {
	                kakao.maps.event.addListener(marker, 'click', function() {
	                    displayPlaceInfo(place);
	                });
	            })(marker, places[i]);
	    }
	}
	
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, order) {
	    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
	        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
	        imgOptions =  {
	            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
	            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
	            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
	        },
	        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
	            marker = new kakao.maps.Marker({
	            position: position, // 마커의 위치
	            image: markerImage 
	        });
	
	    marker.setMap(map); // 지도 위에 마커를 표출합니다
	    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
	
	    return marker;
	}
	
	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
	    for ( var i = 0; i < markers.length; i++ ) {
	        markers[i].setMap(null);
	    }   
	    markers = [];
	}
	
	// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
	function displayPlaceInfo (place) {
	    var content = '<div class="placeinfo">' +
	                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
	
	    if (place.road_address_name) {
	        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
	                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
	    }  else {
	        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
	    }                
	   
	    content += '    <span class="tel">' + place.phone + '</span>' + 
	                '</div>' + 
	                '<div class="after"></div>';
	
	    contentNode.innerHTML = content;
	    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
	    placeOverlay.setMap(map);  
	}
	
	
	// 각 카테고리에 클릭 이벤트를 등록합니다
	function addCategoryClickEvent() {
	    var category = document.getElementById('category'),
	        children = category.children;
	
	    for (var i=0; i<children.length; i++) {
	        children[i].onclick = onClickCategory;
	    }
	}
	
	// 카테고리를 클릭했을 때 호출되는 함수입니다
	function onClickCategory() {
	    var id = this.id,
	        className = this.className;
	
	    placeOverlay.setMap(null);
	
	    if (className === 'on') {
	        currCategory = '';
	        changeCategoryClass();
	        removeMarker();
	    } else {
	        currCategory = id;
	        changeCategoryClass(this);
	        searchPlaces();
	    }
	}
	
	// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
	function changeCategoryClass(el) {
	    var category = document.getElementById('category'),
	        children = category.children,
	        i;
	
	    for ( i=0; i<children.length; i++ ) {
	        children[i].className = '';
	    }
	
	    if (el) {
	        el.className = 'on';
	    } 
	} 

</script>
<!-- KaKao Map E -->
</body>
</html>