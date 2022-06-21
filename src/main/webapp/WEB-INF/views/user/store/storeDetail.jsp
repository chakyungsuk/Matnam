<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<head>
	<style>
	  .star {
	    position: relative;
	    font-size: 2rem;
	    color: #ddd;
	  }
	  
	  .star input {
	    width: 100%;
	    height: 100%;
	    position: absolute;
	    left: 0;
	    opacity: 0;
	    cursor: pointer;
	  }
	  
	  .star span {
	    width: 0;
	    position: absolute; 
	    left: 0;
	    color: red;
	    overflow: hidden;
	    pointer-events: none;
	  }
  </style>
	
</head>


<!-- Header -->
<%@include file="../include/top.jsp" %>
<!-- Header -->   

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" data-parallax="scroll" data-image-src="<c:out value="${rtStore.path}"/><c:out value="${rtStore.uuidName}"/>" data-natural-width="1400" data-natural-height="470">
        <div id="subheader">
            <div id="sub_content">
           		<c:choose>
           			<c:when test="${empty rtStore.mnrtLogoPath }">
                		<div id="thumb"><img src="/resources/user/image/apple-touch-icon-114x114-precomposed.png" alt="" ></div>
                	</c:when>
                	<c:otherwise>
                		<div id="thumb"><img src="<c:out value="${rtStore.mnrtLogoPath}"/><c:out value="${rtStore.mnrtLogoUuidName}"/>" alt=""></div>
                	</c:otherwise>
                </c:choose>
                <div class="rating"> 
                	<span class="star">
						★★★★★
						<span style="width:${rtAvg}0%;">★★★★★</span>
					</span>
                </div>
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
    <form id="form" name="form" method="get" action="/user/storeReviewInst">
    	<input type="hidden" id="mnrtSeq" name="mnrtSeq" value="<c:out value="${rtStore.mnrtSeq}"/>">
    	<input type="hidden" id="sessSeq" name="sessSeq" value="<c:out value="${sessSeq}"/>">
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
	                        <li>영업시간<span><c:out value="${fn:substring(rtStore.mnrtTimeStart,0,5)}"/> ~ <c:out value="${fn:substring(rtStore.mnrtTimeEnd,0,5)}"/></span></li>
	                        <li>브레이크타임<span><c:out value="${fn:substring(rtStore.mnrtBreakTimeStart,0,5)}"/> ~ <c:out value="${fn:substring(rtStore.mnrtBreakTimeEnd,0,5)}"/></span></li>
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
	                                <span class="star">
										★★★★★
										<span style="width:${rtAvg}0%;">★★★★★</span>
									</span>
	                            </div>
	                        </div>
	                     </h3>
	                                <img src="<c:out value="${rtStore.path}"/><c:out value="${rtStore.uuidName}"/>" alt="" width="100%">
	   
	                    <p class="add_bottom_30">
	                        <c:out value="${rtStore.mnrtText}"/>
	                    </p>
	                   
	                    
	                    <div class="review_strip_single">
	                       <h3>리뷰(<c:out value="${rtCount}"/>)</h3>
	                       <br>
	                    <c:choose>
		                    <c:when test="${fn:length(rtReview) eq 0 }">
		                    	데이터가없습니다!
		          
	    	                </c:when>
	    	                <c:otherwise>
		    	                <c:forEach items="${rtReview}" var="item" varStatus="status">
		    	                	<div>
		                        		<img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" style="width:150px; height:150px;" alt="">
	                        		</div>
		    	                	<hr/>
			                        <small>-<fmt:formatDate value="${item.regDateTime}" pattern="yyyy-MM-dd"/>-</small>
			                        <h4> <c:out value="${item.mnMmName}"/></h4>
			                        <img src="<c:out value="${item.path}"/><c:out value="${item.uuidName}"/>" style="width:150px; height:150px;" alt="">
			                        <span class="star">
										★★★★★
										<span style="width:${item.mnrvScore}0%;">★★★★★</span>
									</span>
			                        <p>
			                       
			                            	<c:out value="${item.mnrvText }"/>
			                        </p>
			                        <div class="row">
			                            <div class="col-md-3">
			                                <div class="rating">
			                                    
					                            <c:choose>
					                            	<c:when test="${sessSeq eq item.mnMmSeq}">
						                            	<a href="/user/storeReviewDele?mnrtSeq=<c:out value="${item.mnrtSeq}"/>&mnMmSeq=<c:out value="${item.mnMmSeq}"/>&mnrvSeq=<c:out value="${item.mnrvSeq}"/>">
				                               	     		<button type="button" class="btn btn-outline-danger">삭제</button>
				                               	     	</a>
					                            	</c:when>
					                            	<c:otherwise>
					                            	</c:otherwise>
			                               	    </c:choose>
			                                </div>
			                            </div>
			                        </div><!-- End row -->
			                        <br>
		                        </c:forEach>
	                        </c:otherwise>
	                       </c:choose>
	                    </div><!-- End review strip -->
	                    <div class="mb-3">
	                   		<h3>리뷰를 작성해주세요</h3> 
	                   		<span class="star">
							  ★★★★★ 
							  <span>★★★★★</span>
							  <input type="range" oninput="drawStar(this)" id="mnrvScore" name="mnrvScore" value="5" step="1" min="0" max="10">
							</span>
						  <label for="exampleFormControlTextarea1" class="form-label"></label>
						  <textarea class="form-control" id="exampleFormControlTextarea1" name="mnrvText" rows="10" placeholder="음식점의 맛,양,직원들의 친절상태등 음식점에 대한 솔직한 리뷰를 남겨주세요."></textarea>
						</div>
<%-- 	                   	<a href="/user/storeReviewInst?mnrtSeq=<c:out value="${rtStore.mnrtSeq}"/>"><button type="submit" class="btn btn-outline-success">리뷰작성</button></a> --%>
	                   	<button type="button" class="btn btn-outline-success" id="btn" name="btn">리뷰작성</button>
	                 <%--   	<a href="/user/userReviewForm?mnrtSeq=<c:out value="${rtStore.mnrtSeq}"/>"><button type="button" class="btn btn-outline-success">리뷰작성</button></a> --%>
	                </div><!-- End box_style_1 -->
	                	<a href="/user/storeView"><button type="button" class="btn btn-outline-primary">목록</button></a>
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
<script src="${pageContext.request.contextPath}/resources/user/js/infobox.js"></script>
<script src="${pageContext.request.contextPath}/resources/user/js/ion.rangeSlider.js"></script>

<script>
	const drawStar = (target) => {
	  document.querySelector(`.star span`).style.width = `${target.value * 10}%`;
	}
</script>


<script>

		
	
	checkNull = function (obj, value, message) {
		if(value == "" || value == null){
			alert(message);
			obj.focus();
			return false;
		} else {
			return true;
		}
	}

	$("#btn").on("click",function(){
		if(!checkNull($("#sessSeq"), $("#sessSeq").val(), "로그인후 작성해주세요.")) return false;
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/reviewInst"
			,data : { "mnrvText" : $("#exampleFormControlTextarea1").val(), "mnMmSeq" : $("#sessSeq").val() , "mnrtSeq" : $("#mnrtSeq").val() , "mnrvScore" : $("#mnrvScore").val()}
			,success: function(response) {
				if(response.rt == "success") {
					alert("리뷰등록이완료됬습니다");
				} else {
					alert("리뷰등록안됨@@");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
	});

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
});
    
    
 
</script>
</body>
</html>