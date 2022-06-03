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