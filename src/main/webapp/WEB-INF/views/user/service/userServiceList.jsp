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
                    	<table class="table">
						  <thead>
						    <tr>
						      <th scope="col">#</th>
						      <th scope="col">아이디</th>
						      <th scope="col">제목</th>
						      <th scope="col">답변여부</th>
						    </tr>
						  </thead>
						  <tbody>
						    <tr>
						      <th scope="row">1</th>
						      <td>Mark</td>
						      <td>Otto</td>
						      <td>@mdo</td>
						    </tr>
						    <tr>
						      <th scope="row">2</th>
						      <td>Jacob</td>
						      <td>Thornton</td>
						      <td>@fat</td>
						    </tr>
						    <tr>
						      <th scope="row">3</th>
						      <td colspan="2">Larry the Bird</td>
						      <td>@twitter</td>
						    </tr>
						  </tbody>
						</table>
						 
						 <div class="button_position">                  
	                   		<a href="/user/storeReview"><button type="button" class="btn btn-outline-success" id="button_insert">문의등록</button></a>
                			<a href="/user/storeView"><button type="button" class="btn btn-outline-primary">목록</button></a>
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