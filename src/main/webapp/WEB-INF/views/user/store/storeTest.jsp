<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!-- Header -->
<%@include file="../include/top.jsp" %>
<!-- Header -->   

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
								<h3><c:out value="${item.mnMmName"/></h3>
								<div class="type">
									<c:out value="${item.mnrvText}"/>
								</div>
								<div class="location">
								</div>
							</div>
						</div>
						<div class="col-md-3">
							<div class="go_to">
								<div>
								</div>
							</div>
						</div>
					</div><!-- End row-->
				</div><!-- End strip_list-->
				</c:forEach>
				</c:otherwise>
			</c:choose>

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