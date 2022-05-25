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
                <li>고객센터</li>
                <li>문의하기</li>
            </ul>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
            <div id="map" class="map"></div>
    </div><!-- End Map -->

    <!-- Content ================================================== -->
    <form id="form" name="form" method="get" action="/user/userServiceUpdt">
    <input type="hidden" id="mnMmSeq" name="mnMmSeq" value="<c:out value="${rtService.mnMmSeq}"/>">
    <input type="hidden" id="mnsvSeq" name="mnsvSeq" value="<c:out value="${rtService.mnsvSeq}"/>">
    <div class="container margin_60_35">
        <div class="row"> 
            <div class="col-lg-12">
                <div class="box_style_2">
                    <h2 class="inner">문의하기</h2> 
                    <h5><input type="text" class="form-control" id="mnsvTitle" name="mnsvTitle"value="<c:out value="${rtService.mnsvTitle}"/>"></h5>
                    <c:choose>
						<c:when test="${rtService.mnsvTypeCd eq '14'}">
								<span class="badge bg-danger">직원 불친절 / 기타 불만</span>
						</c:when>
						<c:when test="${rtService.mnsvTypeCd eq '15'}">
								<span class="badge bg-danger">욕설/모욕적 언어사용 신고</span> 
						</c:when>
						<c:when test="${rtService.mnsvTypeCd eq '16'}">
								<span class="badge bg-danger">웹사이트 사용관련 질의</span> <
						</c:when>
						<c:when test="${rtService.mnsvTypeCd eq '17'}">
								<<span class="badge bg-danger">사용자 매칭에 대한 질의사용자 매칭에 대한 질의</span> </td>
						</c:when>
						<c:when test="${rtService.mnsvTypeCd eq '18'}">
								<span class="badge bg-danger">음식점 추천기준에 대한 질의</span> 
						</c:when>
						<c:otherwise>
							데이터가없습니다
						</c:otherwise>
					</c:choose>
                   <div class="mb-3">
					  <label for="exampleFormControlTextarea1" class="form-label"></label>
					  <textarea class="form-control" id="exampleFormControlTextarea1" name="mnsvDesc" rows="10" placeholder="서비스 이용시 불편사항에대해 남겨주세요." ><c:out value="${rtService.mnsvDesc}"/></textarea>
					</div>
					
					<div class="mb-3">
					  <label for="formFile" class="form-label"></label>
					  <input class="form-control" type="file" id="formFile">
					</div>
                   
                    <div class="button_service_view">
                    	<div>
	                   		<button type="submit" class="btn btn-outline-success">수정하기</button>
	                   		<a href="/user/userServiceView"><button type="button" class="btn btn-outline-danger">취소</button></a>
	                   	</div>
                   	</div>
                </div><!-- End box_style_1 -->
            </div>
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