<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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
    
    <style>
	    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
	    .wrap * {padding: 0;margin: 0;}
	    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
	    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
	    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
	    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
	    .info .close:hover {cursor: pointer;}
	    .info .body {position: relative;overflow: hidden;}
	    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
	    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
	    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
	    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
	    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
	    .info .link {color: #5085BB;}
	</style>
</head>
<body>

<!-- Header -->
<%@include file="../include/top.jsp"%>
<!-- Header -->
	<!-- SubHeader =============================================== -->
<!-- 	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/buddySub.jpg" data-natural-width="1400" data-natural-height="350">
	    <div id="subheader">
	        <div id="sub_content">
	            <h1></h1>
	        </div>End sub_content
	    </div>End subheader
	</section>End section -->
	<!-- End SubHeader ============================================ -->

   <div id="position" style="background-color:#78CFCF; height:60px">
        <div class="container">
            <!-- <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">지도검색</a></li>
            </ul> -->
        </div>
    </div>
    

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
				<button type="button" class="btn btn-outline-primary" onclick="searchMap(); checkMarker();" id="clickMpp" name="clickMpp">지도 검색</button>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f63a1dcbbb1e9abb694eaf03908b395c&libraries=services"></script>
<script>
	
	var number = null;
	var markerArr = new Array();
	var overlayArr = new Array();

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
				number = marker;
		        map.setCenter(coords);
	    	} 
		});   
	};
	/* 검색후 마커찍는 함수 E */
	
	function checkMarker(){
		
		if(number != null ){
			
			number.setMap(null);
		}
		
	}
	
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
					
					if(response.list == null ){
						var listHtml = "";
						
						list += '<div>검색된 음식점이없습니다!!!</div>'
						
						$("#listHtml").append(listHtml);
					}else{
					
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
							listHtml += '<a href="detail_page.html"><img src="' + response.list[i].path + response.list[i].uuidName  + '" alt=""></a>';
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
							listHtml +='</div>'; 
							listHtml +='</div>'; 
							
							
							/* 마커생성 S */ 
							var markerPosition  = new kakao.maps.LatLng(response.list[i].mnrtX, response.list[i].mnrtY); 
							var marker = new kakao.maps.Marker({ position: markerPosition });
							markerArr[i] = marker;
							marker.setMap(null);   
							marker.setMap(map);
							/* 마커생성 E*/
							
							// 커스텀 오버레이에 표시할 컨텐츠 입니다
							// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
							// 별도의 이벤트 메소드를 제공하지 않습니다 
							var content = '<div class="wrap">' + 
							            '    <div class="info">' + 
							            '        <div class="title">' + 
							            '            카카오 스페이스닷원dsdsd' + 
							            '            <div class="close" onclick="closeOverlay('+i+')" title="닫기"></div>' + 
							            '        </div>' + 
							            '        <div class="body">' + 
							            '            <div class="img">' +
							            '                <img src="https://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">' +
							            '           </div>' + 
							            '            <div class="desc">' + 
							            '                <div class="ellipsis">제주특별자치도 제주시 첨단로 242</div>' + 
							            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
							            '                <div><a href="https://www.kakaocorp.com/main" target="_blank" class="link">홈페이지</a></div>' + 
							            '            </div>' + 
							            '        </div>' + 
							            '    </div>' +    
							            '</div>';
							            
					         // 마커 위에 커스텀오버레이를 표시합니다
					        	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
					        	var overlay = new kakao.maps.CustomOverlay({
					        	    content: content,
					        	    map: map,
					        	    position: marker.getPosition()       
					        	});
					         overlayArr[i] = overlay;
					        	
					        	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
					        	kakao.maps.event.addListener(markerArr[i], 'click', function() {
					        	    overlay.setMap(map);
					        	});
							}
						$("#listHtml").append(listHtml);
					}
					
				}	
			},
			error:function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closeOverlay(number) {
	    overlayArr[number].setMap(null);     
	}
	
    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
    // 이벤트 리스너로는 클로저를 만들어 등록합니다 
    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
    /* kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow)); */
	
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