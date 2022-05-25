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
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">홈</a></li>
                <li><a href="#0">지도검색</a></li>
                <li>음식점상세</li>
                <li>리뷰상세</li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
    </div><!-- End Map -->

    <!-- Content ================================================== -->
    <form id="form" name="form" method="get" action="/user/storeReviewUpdt">
	    <input type="hidden" id="mnrtSeq" name="mnrtSeq" value="<c:out value="${rtReview.mnrtSeq }"/>">
	    <input type="hidden" id="mnMmSeq" name="mnMmSeq" value="<c:out value="${rtReview.mnMmSeq }"/>">
	    <div class="container margin_60_35">
	        <div class="row"> 
	            <div class="col-lg-12">
	                <div class="box_style_2">
	                    <h2 class="inner">Review</h2> 
	                   <div class="mb-3">
						  <label for="exampleFormControlTextarea1" class="form-label"><c:out value="${rtReview.mnMmName}"/></label>
						  <textarea class="form-control" id="exampleFormControlTextarea1" name="mnrvText" rows="10"><c:out value="${rtReview.mnrvText}"/></textarea>
						</div>
						
						<div class="mb-3">
						  <label for="formFile" class="form-label"></label>
						  <input class="form-control" type="file" id="formFile">
						</div>
	                   
	                    <div class="button_service_view">
	                    	<div>
		                   		<%-- <a href="/user/storeReviewUpdt?mnrtSeq=<c:out value="${rtReview.mnrtSeq}"/>&mnMmSeq=<c:out value="${rtReview.mnMmSeq}"/>"><button type="button" class="btn btn-outline-success">수정하기</button></a> --%>
		                   		<button type="submit" class="btn btn-outline-success">수정하기</button>
		                   		<a href="/user/storeReviewView?mnrtSeq=<c:out value="${rtReview.mnrtSeq}"/>&mnMmSeq=<c:out value="${rtReview.mnMmSeq}"/>"><button type="button" class="btn btn-outline-danger">취소</button></a>
		                   	</div>
		                   	<a href="/user/storeDetail?mnrtSeq="><button type="button" class="btn btn-outline-success">목록</button></a>
	                   	</div>
	                </div><!-- End box_style_1 -->
	            </div>
	        </div><!-- End row -->
	    </div><!-- End container -->
    </form>
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