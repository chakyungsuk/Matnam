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
    <link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet">
    
    <!-- Radio and check inputs -->
    <link href="/resources/user/css/skins/square/grey.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.css" rel="stylesheet">
    <link href="/resources/user/css/ion.rangeSlider.skinFlat.css" rel="stylesheet" >

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
		div.vertical-line{
	      width: 1px; /* Line width */
	      background-color: gray; /* Line color */
	      height: 100%; /* Override in-line if you want specific height. */
	      /* float: left; */ /* Causes the line to float to left of content.
	        You can instead use position:absolute or display:inline-block
	        if this fits better with your design */
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
                <li><a href="/user/friendSelect">친구목록</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->

	<form id="formList" name="formList" method="post" action="/user/profileView">
		<input type="hidden" id="mnMmSeq" name="mnMmSeq">
	</form>

	<div class="container margin_60_35">
	    <div class="row">
	        <div class="col-lg-3">
	        </div><!-- End col -->
	        <div class="col-lg-6">
	        	<div style="display: block; text-align: right;">
		        	<!-- <a href="" style="float:right;"><h6><span class="badge bg-primary">차단관리</span></h6></a>
		        	<a href="" style="float:right;"><h6><span class="badge bg-primary">친구요청관리</span></h6></a> -->
		        	<button class="btn_1" onclick="javascript:goBlockFriendSelect(${sessSeq})" style="width:130px;">차단관리</button>
		        	<button class="btn_1"onclick="javascript:goUserFriendRequest(${sessSeq})" style="width:130px;">친구요청관리</button>
	        	</div>   
	        	<div class="box_style_2" id="order_process">
	                <h2 class="inner" style="text-align: center;">친구목록</h2>
					<form method="post" action="list_page.html">
		                <div id="custom-search-input" style="margin-left:130px;">
		                    <div class="input-group" style="margin-bottom:30px;">
		                        <input type="text" class="search-query" style="width:300px; -webkit-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); -moz-box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75); box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.75);" placeholder="친구 검색">
		                        <span class="input-group-btn">
		                        	<input type="submit" style="margin-right: 350px;" class="btn_search" value="">
		                        </span> 
		                    </div> 
		                </div>
		            </form>
		            <!-- <div class="row" style="height: 100px;">
						<div class="col-2" style="margin-top:5px;">
							<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
								<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
								<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
							</svg>
						</div>
						<div class="col-7">
							<label>고구마</label><br>
							<span>저랑 밥취향이 맞는 것 같아요! 친구해요!</span>
						</div>
						<div class="col-3">
							<div class="row">
								<div class="col-12">
									<a href="/chat/chatView"><h6><span class="badge bg-primary" style="width:105px;">1:1 채팅</span></h6></a>
								</div>
								<div>
									<a href="#" data-bs-toggle="modal" data-bs-target="#deleteModal" style="display:inline-block;"><span class="badge bg-primary">친구삭제</span></a>
									<a href="#" data-bs-toggle="modal" data-bs-target="#blockModal" style="display:inline-block;"><span class="badge bg-secondary">차단</span></a>
								</div>  
							</div>  
						</div>  
						  
					</div> 
		            <div class="row">
						<div class="col-2" style="margin-top:5px;">
							<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
								<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
								<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
							</svg>
						</div> 
						<div class="col-7">
							<label>감자</label><br>
							<span>감자 먹으러 갑시다</span>
						</div>
						<div class="col-3">
							<div class="row">
								<div class="col-12">
									<a href="/chat/chatView"><h6><span class="badge bg-primary" style="width:105px;">1:1 채팅</span></h6></a>
								</div>
								<div>
									<a href="#" ><span class="badge bg-primary" data-bs-toggle="modal" data-bs-target="#deleteModal" style="display:inline-block;">친구삭제</span></a>
									<a href="#" data-bs-toggle="modal" data-bs-target="#blockModal" style="display:inline-block;"><span class="badge bg-secondary">차단</span></a>
								</div>  
							</div> 
						</div> 
					</div>  -->
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
								<h5 style="text-align: center;">아직 친구가 없습니다 친구 추가를 해보세요!</h5>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status">	
								<div class="row" style="height: 100px;">
									<div class="col-2" style="margin-top:5px;">
										<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
											<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
											<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
										</svg>
									</div>
									<div class="col-7">
										<label><c:out value="${item.mnMmName}"/></label><br>
										<span><c:out value="${item.mnMmIntroduce}"/></span>
									</div>
									<div class="col-3">
										<div class="row">
											<div class="col-12">
												<a href="/chat/chatView"><h6><span class="badge bg-primary" style="width:105px;">1:1 채팅</span></h6></a>
											</div>
											<div>
												<a href="#" data-bs-toggle="modal" data-bs-target="#deleteModal" style="display:inline-block;"><span class="badge bg-primary">친구삭제</span></a>
												<a href="#" data-bs-toggle="modal" data-bs-target="#blockModal" style="display:inline-block;"><span class="badge bg-secondary">차단</span></a>
											</div>  
										</div>  
									</div>  
								</div> 
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div> 
				<button type="button" class="btn btn-outline-secondary" onclick = "javascript:goForm(${sessSeq})">돌아가기</button>
	        </div><!-- End col -->
	        
	    </div><!-- End row -->
	</div><!-- End container -->
 

<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->

	<!-- Modal -->
	
	<!-- deleteModal -->
	<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteModalLabel">친구 삭제</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					해당 친구를 삭제하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">예</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end deleteModal -->
	
	<!-- blockModal -->
	<div class="modal fade" id="blockModal" tabindex="-1" aria-labelledby="blockModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="blockModalLabel">친구 차단</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					해당 친구를 차단하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">예</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end blockModal -->
	
	<!-- end Modal -->
    
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
<script src="/resources/user/js/validate.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

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
    
    goForm = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/profileView");
		$("#formList").submit();
	} 
    
    goBlockFriendSelect = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/blockFriendSelect");
		$("#formList").submit();
	} 
    
    goUserFriendRequest = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formList").attr("action","/user/userFriendRequest");
		$("#formList").submit();
	} 
</script>
</body>
</html>