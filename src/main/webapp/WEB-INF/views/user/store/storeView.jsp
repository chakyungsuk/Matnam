<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


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

<form id="form" name="form" method="get" action="/user/storeView">
<div class="container margin_60_35">
	<div class="row">
		<div id="map" style="width:100%;height:350px;"></div>
		
    
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
        
		<div class="col-lg-9">
        <c:choose>
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
									<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> (<c:out value="${item.mnrtAvg}"/>)
								</div>
								<h3><c:out value="${item.mnrtName}"/></h3>
								<div class="type">
									<c:out value="${item.mnrtFoodCate}"/>
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
			</c:choose>
			
			
            
			
            <nav aria-label="Page navigation example" style="margin-top:20px;">
								<ul class="pagination" style="justify-content: center;">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
			</nav>
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

//지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
$('#clickMpp').on("click", function() {
	
	//주소로 좌표를 검색합니다
	geocoder.addressSearch(document.getElementById('formGroupExampleInput').value, function(result, status) {
	
	// 정상적으로 검색이 완료됐으면 
	 if (status === kakao.maps.services.Status.OK) {
	
	    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	    // 결과값으로 받은 위치를 마커로 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: coords
	    });
	
	    // 인포윈도우로 장소에 대한 설명을 표시합니다
	    var infowindow = new kakao.maps.InfoWindow({
	        content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
	    });
	    infowindow.open(map, marker);
	
	// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	    map.setCenter(coords);
	} 

	}); 
});
</script>
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
<!-- KaKao Map E -->
</body>
</html>