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
    </style> 
</head>

<!-- Header -->
<%@ include file="/WEB-INF/views/user/include/top.jsp"%>
<!-- Header -->   

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/serviceSub.jpg" data-natural-width="1400" data-natural-height="350">
        <div id="subheader">
        	<div id="sub_content">
	            <h1>어떤 문제든지 해결해 드립니다!</h1>
	            <div><i class="icon_pin"></i> 맛남의 광장</div>
	        </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">고객센터</a></li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
    </div><!-- End Map -->

    <!-- Content ================================================== -->
    <div class="container margin_60_35">
        <div class="row">
            <div class="col-lg-12">
                <div class="box_style_2">
                    <h2 class="inner">고객센터</h2>
                    	<table class="table table-hover my-0" style="text-align:center;">
								<thead style="border-bottom:none;">
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>접수일</th>
										<th>제목</th>										
										<th>카테고리</th>
										<th>답변여부</th>
									</tr>
								</thead>
								
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											데이터가 없습니다.
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="item" varStatus="status">
												<tr>
													<td><c:out value="${item.mnsvSeq}"/></td>
													<td><c:out value="${item.mnMmId}"/></td>
													<td><fmt:formatDate value="${item.mnsvReceiptDate}" pattern="yyyy-MM-dd"/></td>
													<td><a href="/user/userServiceView?mnMmSeq=<c:out value="${item.mnMmSeq}"/>&mnsvSeq=<c:out value="${item.mnsvSeq}"/>"><c:out value="${item.mnsvTitle}"/></a></td>
													
														<c:choose>
															<c:when test="${item.mnsvTypeCd eq '14'}">
																	<td><span class="badge bg-danger">직원 불친절 / 기타 불만</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq '15'}">
																	<td><span class="badge bg-danger">욕설/모욕적 언어사용 신고</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq '16'}">
																	<td><span class="badge bg-danger">웹사이트 사용관련 질의</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq 17}">
																	<td><span class="badge bg-danger">사용자 매칭에 대한 질의사용자 매칭에 대한 질의</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq 18}">
																	<td><span class="badge bg-danger">음식점 추천기준에 대한 질의</span> </td>
															</c:when>
															<c:otherwise>
																<td>데이터가없습니다</td>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${item.mnsvDoneNy eq 0}">
																<td>미답변</td>
															</c:when>
															<c:when test="${item.mnsvDoneNy eq 1}">
																<td>답변완료</td>
															</c:when>
														</c:choose>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							
							<nav aria-label="Page navigation example" style="margin-top:20px;">
								<ul class="pagination" style="justify-content: center;">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav>
						 
						 <div class="button_position">                  
	                   		<a href="/user/userServiceForm"><button type="button" class="btn btn-outline-success">문의등록</button></a>
                			<!-- <a href="/user/storeView"><button type="button" class="btn btn-outline-primary">목록</button></a> -->
	                   	</div>
                    </div><!-- End review strip -->
                    
                </div><!-- End box_style_1 -->
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    <!-- End Content =============================================== -->

	<!-- Footer -->
	<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
	<!-- Footer -->
 
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/common/js/validation.js"></script>
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
    
</script>
</body>
</html>