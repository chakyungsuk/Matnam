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
    <section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/profileSub.jpg" data-natural-width="1400" data-natural-height="550">
        <div id="subheader">
            <div id="sub_content">
                <h1>24 results in your zone</h1>
                <div><i class="icon_pin"></i> 맛남의 광장</div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="/index/matnamMain">홈</a></li>
                <li><a href="/user/friendSelect">친구목록</a></li>
                <li><a href="/user/userFriendRequest">친구요청확인</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
	<div class="container margin_60_35">
	    <div class="row">
	        <div class="col-lg-2">
	        </div><!-- End col -->
	        <div class="col-lg-8">
	        	<div class="box_style_2" id="order_process">
	                <h2 class="inner" style="text-align: center;">친구요청 확인</h2>
		            <div class="row">
						<div class="col">
							<div style="text-align: center;">
								<label>받은 친구 요청</label>
							</div>
							<!-- <div class="row">
								<div class="col-2" style="margin-top:5px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
										<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
										<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
									</svg>
								</div>
								<div class="col-8">
									<label>고구마</label><br>
									<span>저랑 밥취향이 맞는 것 같아요! 친구해요!</span>
								</div>
								<div class="col-1">
									<a href="#" data-bs-toggle="modal" data-bs-target="#yesModal"><h6><span class="badge bg-primary">수락</span></h6></a>
									<a href="#" data-bs-toggle="modal" data-bs-target="#noModal"><h6><span class="badge bg-secondary">거절</span></h6></a>
								</div>
							</div> -->
							<c:choose>
								<c:when test="${fn:length(listReceive) eq 0}">
										<h5 style="text-align: center;">받은 친구요청이 없습니다.</h5>
								</c:when>
								<c:otherwise>
									<c:forEach items="${listReceive}" var="itemReceive" varStatus="status">	
										<div class="row">
											<div class="col-2" style="margin-top:5px;">
												<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
													<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
													<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
												</svg>
											</div>
											<div class="col-8">
												<label><c:out value="${itemReceive.mnMmName}"/></label><br>
												<span><c:out value="${itemReceive.mnfdMessage}"/></span>
											</div>
											<div class="col-1">
												<a href="#" data-bs-toggle="modal" data-bs-target="#yesModal"><h6><span class="badge bg-primary">수락</span></h6></a>
												<a href="#" data-bs-toggle="modal" data-bs-target="#noModal"><h6><span class="badge bg-secondary">거절</span></h6></a>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
						<div class="col-auto">
							<div class="vertical-line"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br></div>
						</div>
						<div class="col">
							<div style="text-align: center;">
								<label>보낸 친구 요청</label>
							</div>
							<!-- <div class="row">
								<div class="col-2" style="margin-top:5px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
										<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
										<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
									</svg>
								</div>
								<div class="col-7">
									<label>갈치</label><br>
									<span>생선구이 짱</span>
								</div>
								<div class="col-2">
									<a href="#" data-bs-toggle="modal" data-bs-target="#cancelModal"><h6><span class="badge bg-secondary">요청취소</span></h6></a>
								</div>
							</div> -->
							<c:choose>
								<c:when test="${fn:length(listSend) eq 0}">
										<h5 style="text-align: center;">보낸 친구요청이 없습니다.</h5>
								</c:when>
								<c:otherwise>
									<c:forEach items="${listSend}" var="itemSend" varStatus="status">	
										<div class="row">
											<div class="col-2" style="margin-top:5px;">
												<svg xmlns="http://www.w3.org/2000/svg" width="45" height="45" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
													<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
													<path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
												</svg>
											</div>
											<div class="col-8">
												<label><c:out value="${itemSend.mnMmName}"/></label><br>
												<span><c:out value="${itemSend.mnfdMessage}"/></span>
											</div>
											<div class="col-1">
												<a href="#" data-bs-toggle="modal" data-bs-target="#yesModal"><h6><span class="badge bg-primary">수락</span></h6></a>
												<a href="#" data-bs-toggle="modal" data-bs-target="#noModal"><h6><span class="badge bg-secondary">거절</span></h6></a>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
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
	
	<!-- Modal -->
	
	<!-- yesModal -->
	<div class="modal fade" id="yesModal" tabindex="-1" aria-labelledby="yesModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="yesModalLabel">요청 수락</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					고구마님의 친구 요청을 수락하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">예</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end yesModal -->
	
	<!-- noModal -->
	<div class="modal fade" id="noModal" tabindex="-1" aria-labelledby="noModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="noModalLabel">요청 거절</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					고구마님의 친구 요청을 거절하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">예</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end noModal -->
	
	<!-- cancelModal -->
	<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="cancelModalLabel">요청 취소</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					친구 요청을 취소하시겠습니까?
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니오</button>
					<button type="button" class="btn btn-primary">예</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end cancelModal -->
	
	<!-- end Modal -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>
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
		$("#formTopList").attr("action","/user/friendSelect");
		$("#formTopList").submit();
	} 
</script>
</body>
</html>