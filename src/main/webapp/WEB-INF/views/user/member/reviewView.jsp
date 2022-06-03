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
		
		.star {
		    position: relative;
		    font-size: 2rem;
		    color: #ddd;
		  }
		  
		  .star input {
		    width: 100%;
		    height: 100%;
		    position: absolute;
		    left: 0;
		    opacity: 0;
		    cursor: pointer;
		  }
		  
		  .star span {
		    width: 0;
		    position: absolute; 
		    left: 0;
		    color: red;
		    overflow: hidden;
		    pointer-events: none;
		  }
		  
		.myText{
			display:block;
			overflow: hidden;
			text-overflow: ellipsis;
			white-space: nowrap;
			width: 90%;
			height: 20px;
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
                <li><a href="/user/reviewView">리뷰관리</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
	<div class="container margin_60_35">
	    <div class="row justify-content-center">
	        <div class="col-6"> 
	            <div class="box_style_2" id="order_process">
	                <h2 class="inner" style="text-align: center;">리뷰 관리</h2>
		            <div class="tab-pane" id="pills-user" role="tabpanel" aria-labelledby="pills-user-tab">
		                <c:choose>
							<c:when test="${fn:length(list) eq 0}">
									<h5 style="text-align: center;">리뷰가 없습니다. 리뷰를 작성해 보세요!</h5>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="item" varStatus="status">	
									<div class="border-bottom border-bottom-dashed mb-4 pb-4">
	                                    <a href="#">
	                                        <h5 style="display:inline-block;"><c:out value="${item.mnrtName}"/></h5>
	                                    </a>
                                        <span class="star">
											★★★★★
											<span style="width:${item.mnrvScore}0%;">★★★★★</span>
										</span>
										<button type="button" class="btn btn-danger btn-sm float-end mt-3" onclick="javascript:setForm(${item.mnrvSeq});" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</button><br>
										<span class="myText mx-3"><c:out value="${item.mnrvText}" /></span>
	                                </div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
		            </div>
		            <!-- End Profile tab-pane -->
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

	<!-- Modal -->
	
	<!-- deleteModal -->
	<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="deleteModalLabel">리뷰 삭제</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<form action="/user/reviewDelete" id="reviewDeleteForm" name="reviewDeleteForm" method="get">
					<input type="hidden" id="mnrvSeq" name="mnrvSeq">
					<input type="hidden" id="mnMmSeq" name="mnMmSeq" value="${sessSeq}">
					<div class="modal-body">
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">리뷰를 삭제하시겠습니까?</label>
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
						<button type="submit" id="confirmFriend" class="btn btn-primary">확인</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end deleteModal -->
	
	<!-- end Modal -->

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
    
    goProfileEdit = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/profileEdit");
		$("#formTopList").submit();
	} 
    
    goUserEdit = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/userEdit");
		$("#formTopList").submit();
	} 
    
    goFriendSelect = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/friendSelect");
		$("#formTopList").submit();
	} 
    
   	const drawStar = (target) => {
      document.querySelector('.star span').style.width = (target.value * 10) + '%';
    }
   	
   	setForm = function(seq){
		$("#mnrvSeq").val(seq);
	} 
</script>
</body>
</html>