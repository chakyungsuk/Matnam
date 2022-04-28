<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!-- Header -->
<%@include file="../include/top.jsp" %>
<!-- Header -->   

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" data-parallax="scroll" data-image-src="img/sub_header_2.jpg" data-natural-width="1400" data-natural-height="470">
        <div id="subheader">
            <div id="sub_content">
                <div id="thumb"><img src="/resources/user/image/store/himnandaLogo.png" alt=""></div>
                <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> ( <small><a href="#0">98 reviews</a></small> )</div>
                <h1>힘난다 버거 강남점</h1>
                <div><em>페스트푸드 / 햄버거</em></div>
                <div><i class="icon_pin"></i> 서울 강남구 강남대로84길 15 지상1층 102-1호 <strong></strong></div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">지도검색</a></li>
                <li>음식점상세</li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
    </div><!-- End Map -->

    <!-- Content ================================================== -->
    <div class="container margin_60_35">
        <div class="row">
            <div class="col-lg-4">
                <!-- <p>
                    <a class="btn_map" data-toggle="collapse" href="#collapseMap" aria-expanded="false" aria-controls="collapseMap" data-text-swap="Hide map" data-text-original="View on map">View on map</a>
                </p> -->
                <div class="box_style_2">
                    <h4 class="nomargin_top">Info</h4>
                    <ul class="opening_list">
                        <li>주소<span>서울 강남구 강남대로84길 15 지상1층 102-1호</span></li>
                        <li>전화번호<span>02-567-6768</span></li>
                        <li>음식종류 <span class="label label-danger">페스트푸드</span></li>
                        <li>영업시간<span>10:30~20:00</span></li>
                        <li>휴무일<span>연중무휴</span></li>
                    </ul>
                </div>
                <div class="box_style_2 d-none d-sm-block" id="help">
                    <i class="icon_lifesaver"></i>
                    <h4>Need <span>Help?</span></h4>
                    <a href="tel://004542344599" class="phone">+45 423 445 99</a>
                    <small>Monday to Friday 9.00am - 7.30pm</small>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="box_style_2">
                    <h2 class="inner">Description</h2>
                   	
                    <h3>힘난다버거 강남점  
                    	<div id="general_rating">
                             Reviews
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                                (11)
                            </div>
                        </div>
                     </h3>
                    
                    <p>
                        맛과 영양의 균형을 갖춘 푸드테크 선두 기업 힘난다 입니다
                    </p>
                    <p class="add_bottom_30">
                        맛있는 건강, 신바이오틱스 첨가 식품으로 만듭니다.
						힘난다 수퍼푸드 컴퍼니는 현대인의 건강한 100세 시대를 위해 신바이오틱스 첨가 식품 연구개발에
						집중합니다. 특히 온도에 민감하게 반응하는 프로바이오틱스의 한계를 뛰어넘은 신바이오틱스를
						사용 중입니다. 이를 함유한 햄버거 패티, 샐러드, 주스를 생산·유통 중이며, 다양한 식품 개발을
						통하여 맛있는 음식을 건강하게 먹을 수 있는 세상을 만들고자 합니다.
                    </p>
                   
                    
                    <div class="review_strip_single">
                        <img src="img/avatar1.jpg" alt="" class="rounded-circle">
                        <small> - 2022.04 -</small>
                        <h4>김승태</h4>
                        <p>
                            직원분이 친절하시고 맛있어서 또올거같아요.
                        </p>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="rating">
                                    <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
                                </div>
                            </div>
                        </div><!-- End row -->
                        
                    </div><!-- End review strip -->
                    
                   	<a href="/user/userReviewForm"><button type="button" class="btn btn-outline-success">리뷰작성</button></a>
                </div><!-- End box_style_1 -->
                	<a href="/user/storeView"><button type="button" class="btn btn-outline-primary">목록</button></a>
            </div>
        </div><!-- End row -->
    </div><!-- End container -->
    <!-- End Content =============================================== -->

	<!-- Footer -->
	<%@include file="../include/footer.jsp" %>
	<!-- Footer -->
 
    
<!-- COMMON SCRIPTS -->
<script src="${pageContext.request.contextPath}/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/common_scripts_min.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/functions.js"></script>
<!-- <script src="assets/validate.js"></script> -->

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/map.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/infobox.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/ion.rangeSlider.js"></script>
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
</body>
</html>