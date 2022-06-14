<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<head>
		<style>
	</style>
</head>

<!-- Header -->
<%@include file="../include/top.jsp"%>
<!-- Header -->
	<!-- SubHeader =============================================== -->
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
	    <div id="subheader">
	        <div id="sub_content">
	            <h1></h1>
	        </div><!-- End sub_content -->
	    </div><!-- End subheader -->
	</section><!-- End section -->
	<!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">지도검색</a></li>
            </ul>
        </div>
    </div><!-- Position -->
    

<!-- Content ================================================== -->

		<div class="map_wrap">
	    	<div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
		    <div id="menu_wrap" class="bg_white">
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
	   		 </div>
		</div>
<form id="form" name="form" method="get" action="/user/storeView">
<div class="container margin_60_35">
	<div class="row">
		
    
		<div class="col-lg-3">
		<!-- 	<p>
				
				<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 닫기" data-text-original="지도 검색">지도 검색</a>
			</p> -->
			<div id="filters_col">
				<button type="button" class="btn btn-outline-primary" id="clickMpp" name="clickMpp">지도 검색</button>
				<div class="collapse show" id="collapseFilters">
					<div class="filter_type">
						<h6>주소</h6>
						<div class="mb-3">
  						<input type="text" class="form-control" id="formGroupExampleInput" placeholder="주소나 키워드를 입력해주세요.">
						</div>
                    	<h6>카테고리</h6>
                        <ul>
                        	<li><div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><label class="form-check-label" for="flexCheckDefault">한식</label></div></li>
                        	<li><div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><label class="form-check-label" for="flexCheckDefault">중식</label></div></li>
                        	<li><div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><label class="form-check-label" for="flexCheckDefault">일식</label></div></li>
                        	<li><div class="form-check"><input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"><label class="form-check-label" for="flexCheckDefault">양식</label></div></li>                        	
                        </ul>
						<h6>Type</h6>
					<label for="customRange3" class="form-label">최대평점</label>
						<input type="range" class="form-range" min="0" max="5" step="0.1" id="customRange3" oninput="document.getElementById('value1').innerHTML=this.value;">
						<span id="value1"></span>
					</div>
				</div><!--End collapse -->
			</div><!--End filters col-->
		</div><!--End col-md -->
        
		<div class="col-lg-9" id="listHtml">
       <%--  <c:choose>
        	<c:when test="${fn:length(list) eq 0}">
							
					There is no data@
								
			</c:when>
	      		<c:otherwise>
	      		<c:forEach items="${list}" var="item" varStatus="status">
				<div class="strip_list wow fadeIn" data-wow-delay="0.1s">
					<div class="ribbon_1">
						Popular
					</div>
					<div class="row">
						<div class="col-md-9">
							<div class="desc">
								<div class="thumb_strip">
									<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
								</div>
								<div class="rating">
									<span class="star">
										★★★★★
										<span style="width:${item.mnrvScore}0%;">★★★★★</span>
									</span>
								</div>
								<h3><c:out value="${item.mnrtName}"/></h3>
								<div class="type">
									<c:out value="${item.mncdName}"/>
								</div>
								<div class="location">
									<c:out value="${item.mnrtAddressFull}"/><br><span class="opening">영업시간:<c:out value="${item.mnrtTime}"/></span><br>브레이크타임:<c:out value="${item.mnrtBreakTime}"/>
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="go_to">
								<div>
									<a href="/user/storeDetail?mnrtSeq=${item.mnrtSeq}" class="btn_1">바로가기</a>
								</div>
							</div>
						</div>
					</div><!-- End row-->
				</div><!-- End strip_list-->
				</c:forEach>
				</c:otherwise>
			</c:choose> --%>
			
			
            
			
		</div><!-- End col-md-9-->
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->
</form>

<!-- Footer -->
<%@include file="../include/footer.jsp" %>
<!-- Footer -->
    
<!-- COMMON SCRIPTS -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/common_scripts_min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/functions.js"></script>
<!-- <script src="assets/validate.js"></script> -->

<!-- SPECIFIC SCRIPTS --> 
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/infobox.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/ion.rangeSlider.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f63a1dcbbb1e9abb694eaf03908b395c"></script>
<script>

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	
	$.ajax({
			async:true,
			cache:false,
			type:"GET",
			url:"storeSearch",
			data:{},
			success:function(response){
				
				if(response.rt == "success"){
					
					var listHtml = "";
					alert("컨트롤호출성");
					
					for(var i in response.list){
						listHtml += '<div class="strip_list wow fadeIn" data-wow-delay="0.1s">';
						listHtml += '<div class="ribbon_1">';
						listHtml += 'Popular';
						listHtml +=	'</div>';
						listHtml += '<div class="row">';
						listHtml += '<div class="col-md-9">';
						listHtml += '<div class="desc">';
						listHtml += '<div class="thumb_strip">';
						listHtml += '<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>';
						listHtml += '</div>';
						listHtml += '<div class="rating">';
						listHtml += '<span class="star">';
						listHtml += 	'★★★★★';
						listHtml +=	'<span style="width:${response.list[i].mnrvScore}0%;">★★★★★</span>';
						listHtml += '</span>';
						listHtml += '</div>';
						listHtml +='<h3><c:out value="${response.list[i].mnrtName}"/></h3>';
						listHtml +='<div class="type">';
						listHtml +='<c:out value="${response.list[i].mncdName}"/>';
						listHtml +='</div>';
						listHtml +='<div class="location">';
						listHtml += response.list[i].mnrtAddressFull + '<br><span class="opening">영업시간:<c:out value="${response.list[i].mnrtTime}"/></span><br>브레이크타임:<c:out value="${response.list[i].mnrtBreakTime}"/>';
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='<div class="col-md-3">';
						listHtml +='<div class="go_to">';
						listHtml +='<div>';
						listHtml +='<a href="/user/storeDetail?mnrtSeq=${response.list[i].mnrtSeq}" class="btn_1">바로가기</a>';
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='</div>';
						
						 var markerPosition  = new kakao.maps.LatLng(response.list[i].mnrtX, response.list[i].mnrtY); 
						var marker = new kakao.maps.Marker({ position: markerPosition });
						marker.setMap(null);   
						marker.setMap(map);
					}
					$("#listHtml").append(listHtml);
					
				}	
			},
			error:function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
	//마커를 생성합니다
	var marker = new kakao.maps.Marker({
	position: markerPosition
	});
	
	//마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);    

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
<!-- KaKao Map E -->
</body>
</html>