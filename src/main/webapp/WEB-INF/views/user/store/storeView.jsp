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

	<!-- 	지도영역 -->
		<div class="map_wrap">
	    	<div id="map" style="width:100%;height:500px;position:relative;overflow:hidden;"></div>
		    <div id="menu_wrap" class="bg_white">
		        <hr>
		        <ul id="placesList"></ul>
		        <div id="pagination"></div>
	   		 </div>
		</div>
	<!-- 	지도영역 -->
			
<form id="form" name="form" method="get" action="/user/storeView">
<div class="container margin_60_35">
	<div class="row">
		
    
		<div class="col-lg-3">
		<!-- 	<p>
				
				<a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="지도 닫기" data-text-original="지도 검색">지도 검색</a>
			</p> -->
			<div id="filters_col">
				<button type="button" class="btn btn-outline-primary" onclick="searchMap()" id="clickMpp" name="clickMpp">지도 검색</button>
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

	// KaKao Map S
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(37.5642135, 127.0016985), // 지도의 중심좌표
	    level: 8 // 지도의 확대 레벨
	};
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	
	/* 검색후 마커찍는 함수 S */
	function searchMap(){
		
		var searchLocation = document.getElementById("formGroupExampleInput").value;
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(searchLocation, function(result, status) {

		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		          
		            
		        });
		        map.setCenter(coords);
	    	} 
		});   
	};
	/* 검색후 마커찍는 함수 E */
	
	// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
	function makeOverListener(map, marker, infowindow) {
   		return function() {
        infowindow.open(map, marker);
    	};
	}
	
	// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
	function makeOutListener(infowindow) {
	    return function() {
	        infowindow.close();
	    };
	}
	
	
	$.ajax({
			async:true,
			cache:false,
			type:"GET",
			url:"storeSearch",
			data:{},
			success:function(response){
				
				if(response.rt == "success"){
					
					var listHtml = "";
					
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
						listHtml +='<h3>' + nullToEmpty(response.list[i].mnrtName) + '</h3>';
						listHtml +='<div class="type">';
						listHtml += nullToEmpty(response.list[i].mncdName);
						listHtml +='</div>';
						listHtml +='<div class="location">';
						listHtml += nullToEmpty(response.list[i].mnrtAddressFull);
						listHtml += '<br><span class="opening">영업시간:' + nullToEmpty(response.list[i].mnrtTimeStart) + '~' + nullToEmpty(response.list[i].mnrtTimeEnd);
						listHtml += '</span><br>브레이크타임:' + nullToEmpty(response.list[i].mnrtBreakTimeStart) + '~' + nullToEmpty(response.list[i].mnrtBreakTimeEnd);
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='<div class="col-md-3">';
						listHtml +='<div class="go_to">';
						listHtml +='<div>';
						listHtml +='<a class="btn_1"  href="/user/storeDetail?mnrtSeq=' + nullToEmpty(response.list[i].mnrtSeq) + '">바로가기</a>'; 
						listHtml +='</div>';
						listHtml +='</div>';
						listHtml +='</div>';
						
						
						/* 마커생성 S */ 
						var markerPosition  = new kakao.maps.LatLng(response.list[i].mnrtX, response.list[i].mnrtY); 
						var marker = new kakao.maps.Marker({ position: markerPosition });
						marker.setMap(null);   
						marker.setMap(map);
						/* 마커생성 E*/
						
						// 마커에 표시할 인포윈도우를 생성합니다 
					    var infowindow = new kakao.maps.InfoWindow({
					        content: response.list[i].mnrtName // 인포윈도우에 표시할 내용
					    });
						
					    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
					    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
					    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
					    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
					    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
						
					}
					$("#listHtml").append(listHtml);
					
				}	
			},
			error:function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	
	//마커가 표시될 위치입니다 
	//var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
	//마커를 생성합니다
	//var marker = new kakao.maps.Marker({
	//position: markerPosition
	//});
	
	//마커가 지도 위에 표시되도록 설정합니다
	//marker.setMap(map);

//아래 코드는 지도 위의 마커를 제거하는 코드입니다
//marker.setMap(null);    
 <!-- KaKao Map E -->
 
 
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
    
    
    function nullToEmpty(param) {
    	
    	if (param == null)
    		{
    		param = "";
    	}
    	
    	return param;
    }
</script>
</body>
</html>