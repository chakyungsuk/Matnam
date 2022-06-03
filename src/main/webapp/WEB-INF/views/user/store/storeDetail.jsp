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
                <div class="rating"><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i> ( <small><c:out value="${rtStore.mnrtAvg}"/></small> )</div>
                <h1><c:out value="${rtStore.mnrtName}"/></h1>
                <div><em><c:out value="${rtStore.mnrtFoodCate}"/></em></div>
                <div><i class="icon_pin"></i> <c:out value="${rtStore.mnrtAddressFull}"/> <strong></strong></div>
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
                        <li>주소<span><c:out value="${rtStore.mnrtAddressFull}"/></span></li>
                        <li>전화번호<span><c:out value="${rtStore.mnrtNumber}"/></span></li>
                        <li>음식종류 <span class="label label-danger"><c:out value="${rtStore.mnrtFoodCate}"/></span></li>
                        <li>영업시간<span><c:out value="${rtStore.mnrtTime}"/></span></li>
                        <li>휴무일<span><c:out value="${rtStore.mnrtHoliday}"/></span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="box_style_2">
                    <h2 class="inner">상세정보</h2>
                   	
                    <h3><c:out value="${rtStore.mnrtName}"/>
                    	<div id="general_rating">
                            <div class="rating">
                                <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
                                (<c:out value="${rtStore.mnrtAvg}"/>)
                            </div>
                        </div>
                     </h3>
                                <img src="/resources/user/image/store/himnandaLogo.png" alt="">
   
                    <p class="add_bottom_30">
                        <c:out value="${rtStore.mnrtText}"/>
                    </p>
                   
                    
                    <div class="review_strip_single">
                       <h3>Reviews(<c:out value="${sessSeq}"/>)</h3>
                       <br>
                    <c:choose>
	                    <c:when test="${fn:length(rtReview) eq 0 }">
	                    	데이터가없습니다!
	          
    	                </c:when>
    	                <c:otherwise>
	    	                <c:forEach items="${rtReview}" var="item" varStatus="status">
		                        <img src="img/avatar1.jpg" alt="" class="rounded-circle">
		                        <small>-<fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd"/>-</small>
		                        <h4><c:out value="${item.mnMmName}"/></h4>
		                        <p>
		                            	<c:out value="${item.mnrvText }"/>
		                        </p>
		                        <div class="row">
		                            <div class="col-md-3">
		                                <div class="rating">
		                                    <i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i>
		                                    (<c:out value="${item.mnrvScore }"/>)
			    	                		<a href="/user/storeReviewView?mnrtSeq=<c:out value="${item.mnrtSeq}"/>&mnMmSeq=<c:out value="${item.mnMmSeq}"/>" style="text-decoration: none ">
		                               	     	<button type="button" class="btn btn-outline-success">수정</button>
				                            </a>
		                                </div>
		                            </div>
		                        </div><!-- End row -->
		                        <br>
	                        </c:forEach>
                        </c:otherwise>
                       </c:choose>
                    </div><!-- End review strip -->
                    <div class="mb-3">
                    	c:out value="${sessName}"/>
					  <label for="exampleFormControlTextarea1" class="form-label"></label>
					  <textarea class="form-control" id="exampleFormControlTextarea1" name="mnrvText" rows="10" placeholder="음식점의 맛,양,직원들의 친절상태등 음식점에 대한 솔직한 리뷰를 남겨주세요."></textarea>
					</div>
                   	<a href="/user/userReviewForm?mnrtSeq=<c:out value="${rtStore.mnrtSeq}"/>"><button type="button" class="btn btn-outline-success">리뷰작성</button></a>
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