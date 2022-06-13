<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.jeonguggu.matnam.code.CodeServiceImpl"/>


	<!-- <link rel="stylesheet" href="https://contents.albamon.kr/webpack/dist/css/recruit-sv-202204210917.css" /> -->
	
	
	<!-- top -->
	<%@include file="../include/top.jsp" %>
	
	
	<style type="text/css">
		a:link{
			text-decoration: none;
		}
    </style>
	<!-- top -->
	<!-- SubHeader =============================================== -->
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/buddySub.jpg" data-natural-width="1400" data-natural-height="350">
	    <div id="subheader">
	        <div id="sub_content">
	            <h1>친구와 함께하는 맛있는 한끼</h1>
	            <div><i class="icon_pin"></i> 맛남의 광장</div>
	        </div><!-- End sub_content -->
	    </div><!-- End subheader -->
	</section><!-- End section -->
	<!-- End SubHeader ============================================ -->
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
		<div class="col-lg-3">
			<div id="filters_col">
				<div class="collapse show" id="collapseFilters">
					<!-- <div class="filter_type">
                    	<h6>Distance</h6>
                        <input type="text" id="range" value="" name="range">						
					</div>
					<div class="filter_type">
						<h6>Rating</h6>
						<ul>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
						</ul>
					</div> -->
					<div class="filter_type">
						<c:choose>
							<c:when test="${fn:length(friendList) eq 0}">
								<c:choose>
									<c:when test="${not empty sessSeq}">
										<h6>친구목록</h6>
										<h5>친구를 추가해보세요!</h5>
									</c:when>
									<c:otherwise>
										<h5>로그인이 필요한 기능입니다!</h5>
									</c:otherwise>
								</c:choose>
							</c:when>
							<c:otherwise>
								<h6>친구목록</h6>
								<ul>
								<c:forEach items="${friendList}" var="itemFriend" varStatus="status">	
								<!-- <i class="color_1" style="float:left; margin-right:10px;"></i> -->
									<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i><c:out value="${itemFriend.mnMmName}"/></li>
								</c:forEach>
								</ul>
							</c:otherwise>
						</c:choose>			
					</div>
				</div><!--End collapse -->
			</div><!--End filters col-->
		</div><!--End col-md -->
        
		<div class="col-lg-9">  
			<div class="p-3 mb-2" style="border:1px solid gray">
				<form id="searchForm" name="" action="/user/areaSelect" method="post">
					<input type="hidden" id="mnMmSeqB" name="mnMmSeq" value="${sessSeq}">
					<div style="text-align:center;">
						<label for="" class="form-label text-muted fs-13 col-auto">검색</label>
					</div>
					<div style="background-color:gray; height:1px;"></div>
					<div class="form-group">
						<div class="mb-3 pt-2">
							<label for="" class="form-label text-muted fs-13 col-auto">지역</label>
							<c:set var="listCodeSeoul" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
							<c:forEach items="${listCodeSeoul}" var="itemSeoul" varStatus="statusTaste">
								<input type="checkbox" class="btn-check" id="itemSeoulCd<c:out value="${itemSeoul.mncdSeq}"/>" name="mnmlLocationCdArray" value="${itemSeoul.mncdSeq}" autocomplete="off">
								<label class="btn btn-outline-primary" for="itemSeoulCd<c:out value="${itemSeoul.mncdSeq}"/>"><c:out value="${itemSeoul.mncdName}"/></label>
							</c:forEach>
						</div> 
					</div>
					<div style="background-color:gray; height:1px;"></div>
					<div class="form-group">
						<div class="mb-3 pt-2">
							<label for="" class="form-label text-muted fs-13 col-auto">음식취향</label>
							<c:set var="listCodeTaste" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
							<c:forEach items="${listCodeTaste}" var="itemTaste" varStatus="statusTaste">
								<input type="checkbox" class="btn-check" id="itemTasteCd<c:out value="${itemTaste.mncdSeq}"/>" name="mnmtTasteCdArray" value="${itemTaste.mncdSeq}" autocomplete="off">
								<label class="btn btn-outline-primary" for="itemTasteCd<c:out value="${itemTaste.mncdSeq}"/>"><c:out value="${itemTaste.mncdName}"/></label>
							</c:forEach>
						</div> 
					</div>
					<div class="col" style="text-align:center;">
						<button type="submit" class="btn_1" style="text-align:center;">검색<i class="icon-search"></i></button>
						<button type="reset" class="btn_1" style="text-align:center;">초기화<i class="icon-refresh"></i></button>	
					</div>
				</form>
        	</div>	
        	<!-- <div id="dev_sch_add_form_view">
				<div class="resultSch">
					<h2 class="skip">기본 결과내 검색 설정</h2>
					<fieldset id="dev_sch_area_view" class="itemSet hgt dev_add_default hide">
						<legend>지역 검색 설정</legend>
						<h3 class="loc">지역</h3>
						<div class="itemWrap">
							<a href="javascript:sch_itemBox_view('dev_sch_area_view')" class="itemSel" >
								<span id="dev_sch_area_btn" class="sltBox ">
									지역을 선택하세요 <span>(최대 5개 지역 선택가능)</span>
								</span>
								<span id="dev_sch_area_name" class="sltDel hide" >
									
								</span>
							</a>
						</div>
						<div class="itemBox hide" >
							<div class="listWrap">
								<ul id="dev_sch_area_si" class="listLocal">
									<li class=" dev_tab_I000"><a href="javascript:sch_area_si_chg('I000', '서울')">서울</a></li>
									<li class=" dev_tab_B000"><a href="javascript:sch_area_si_chg('B000', '경기')">경기</a></li>
									<li class=" dev_tab_K000"><a href="javascript:sch_area_si_chg('K000', '인천')">인천</a></li>
									<li class=" dev_tab_A000"><a href="javascript:sch_area_si_chg('A000', '강원')">강원</a></li>
									<li class=" dev_tab_G000"><a href="javascript:sch_area_si_chg('G000', '대전')">대전</a></li>
									<li class=" dev_tab_1000"><a href="javascript:sch_area_si_chg('1000', '세종')">세종</a></li>
									<li class=" dev_tab_O000"><a href="javascript:sch_area_si_chg('O000', '충남')">충남</a></li>
									<li class=" dev_tab_P000"><a href="javascript:sch_area_si_chg('P000', '충북')">충북</a></li>
									<li class=" dev_tab_H000"><a href="javascript:sch_area_si_chg('H000', '부산')">부산</a></li>
									<li class=" dev_tab_J000"><a href="javascript:sch_area_si_chg('J000', '울산')">울산</a></li>
									<li class=" dev_tab_C000"><a href="javascript:sch_area_si_chg('C000', '경남')">경남</a></li>
									<li class=" dev_tab_D000"><a href="javascript:sch_area_si_chg('D000', '경북')">경북</a></li>
									<li class=" dev_tab_F000"><a href="javascript:sch_area_si_chg('F000', '대구')">대구</a></li>
									<li class=" dev_tab_E000"><a href="javascript:sch_area_si_chg('E000', '광주')">광주</a></li>
									<li class=" dev_tab_L000"><a href="javascript:sch_area_si_chg('L000', '전남')">전남</a></li>
									<li class=" dev_tab_M000"><a href="javascript:sch_area_si_chg('M000', '전북')">전북</a></li>
									<li class=" dev_tab_N000"><a href="javascript:sch_area_si_chg('N000', '제주')">제주</a></li>
									<li class="end dev_tab_Q000"><a href="javascript:sch_area_si_chg('Q000', '전국')">전국</a></li>
								</ul>
								<div id="dev_sch_area_gu" class="listArea">
									<h4 class="skip" id="dev_sel_si_name">서울</h4>
									<ul>
									<li></li>
									</ul>
								</div>
								<ul id="dev_sch_area_dong" class="listDong  hide">
								<li></li>
								</ul>
								<p class="listClose"><button type="button" onclick="sch_itemBox_close('dev_sch_area_view')">닫기</button></p>
							</div>
						</div>
					</fieldset>
				</div>
			</div> -->
			<c:choose>
				<c:when test="${fn:length(list) eq 0}">
						<h5 style="text-align: center;">해당 매칭유저가 없습니다.</h5>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="item" varStatus="status">	
						<form id="formList" name="formList" method="post" action="">
							<input type="hidden" id="mnMmSeq" name="mnMmSeq">
							<input type="hidden" id="Seq" name="Seq" value="<c:out value="${sessSeq}"/>">
						</form>
						<div class="strip_list wow fadeIn" data-wow-delay="0.4s">
							<div class="row">
								<div class="col-md-9" style="cursor: pointer;" onclick="javascript:goForm(${item.mnMmSeq});">
									<div class="desc">
										<div class="thumb_strip">
											<a href="detail_page.html"><!-- <img src="img/thumb_restaurant.jpg" alt=""> --></a>
										</div>
										<div class="rating">
											<i class="icon_heart" style="color:red;"></i> x <c:out value="${item.mnMmLike}"/>
										</div>
										<h3><c:out value="${item.mnMmName}"/> 님</h3>
										<div class="type">
											<c:out value="${item.age}"/>세 / 
											<c:if test="${item.mnMmGenderCd eq 1}">남성</c:if>
											<c:if test="${item.mnMmGenderCd eq 2}">여성</c:if>
										</div>
										<%-- <div class="location">
											<c:out value="${item.mnmaAddress1}"/>
										</div> --%>
										<ul>
											<!-- <li>서울<i class="icon_check_alt2 ok"></i></li>
											<li>일산<i class="icon_check_alt2 ok"></i></li> -->
											<c:forEach items="${RegionList}" var="itemRegion" varStatus="status">
												<c:if test="${itemRegion.mnMmSeq eq item.mnMmSeq}">
													<li><c:out value="${itemRegion.mncdName}"/><i class="icon_check_alt2 ok"></i></li>
												</c:if>
											</c:forEach>
											<!-- <li>양식<i class="icon_check_alt2 ok"></i></li>
											<li>한식<i class="icon_check_alt2 ok"></i></li> -->
											<br>
											<c:forEach items="${tasteList}" var="itemTaste" varStatus="status">
												<c:if test="${itemTaste.mnMmSeq eq item.mnMmSeq}">
													<li><c:out value="${itemTaste.mncdName}"/><i class="icon_check_alt2 ok"></i></li>
												</c:if>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div class="col-md-3">
									<div class="go_to">
										<c:choose>
							        		<c:when test="${not empty sessSeq}">
							        			<div>
													<button class="btn_1" onclick="setForm(${item.mnMmSeq})" data-bs-toggle="modal" data-bs-target="#friendModal" data-bs-whatever="${item.mnMmName}">친구요청</button>
												</div>
							        		</c:when>
							        		<c:otherwise>
							        			<button class="btn_1" style="width:100px;" onclick="friendAlert()">친구요청</button>
							        		</c:otherwise>
							       		</c:choose>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</c:otherwise>
			</c:choose>
            
            <a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load more...</a>  
		</div><!-- End col-md-9-->
        
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->


<%@include file="../include/footer.jsp" %>

	<!-- Modal -->
	
	<!-- friendModal -->
	<div class="modal fade" id="friendModal" tabindex="-1" aria-labelledby="friendModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="friendModalLabel">친구 요청</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<form action="/user/friendInsert" id="friendForm" name="friendForm" method="get">
					<input type="hidden" id="mnfdFriendSeq" name="mnfdFriendSeq">
					<input type="hidden" id="mnMmSeq" name="mnMmSeq" value="${sessSeq}">
					<div class="modal-body">
							<div class="mb-3">
								<label for="recipient-name" class="col-form-label">인사말을 남겨보세요!</label>
								<textarea class="form-control" id="mnfdMessage" name="mnfdMessage" placeholder="인사말을 남겨보세요." style="height:150px;"></textarea>
							</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						<button type="button" id="confirmFriend" class="btn btn-primary">send</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- end friendModal -->
	
	<!-- end Modal -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/common/js/validation.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>
<script>
	$(document).ready(function(){
		<c:forEach items="${vo.mnmlLocationCdArray}" var="itemRegion" varStatus="statusRegion">
			$("input[id=itemSeoulCd"+${itemRegion}+"]").prop("checked",true);
		</c:forEach>
		<c:forEach items="${vo.mnmtTasteCdArray}" var="itemTaste" varStatus="statusTaste">
			$("input[id=itemTasteCd"+${itemTaste}+"]").prop("checked",true);
		</c:forEach>
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
    
    const friendModal = document.getElementById('friendModal')
    friendModal.addEventListener('show.bs.modal', event => {
		// Button that triggered the modal
		const button = event.relatedTarget
		// Extract info from data-bs-* attributes
		const recipient = button.getAttribute('data-bs-whatever')
		// If necessary, you could initiate an AJAX request here
		// and then do the updating in a callback.
		//
		// Update the modal's content.
		const modalTitle = friendModal.querySelector('.modal-title')
		
		modalTitle.textContent = recipient + ' 님을 친구 추가 하시겠습니까?'
    })
    
    goForm = function(seq){
		$("#mnMmSeqB").val(seq);
		$("#searchForm").attr("action","/user/friendDetail");
		$("#searchForm").submit();
	} 
    
    setForm = function(seq){
		$("#mnfdFriendSeq").val(seq);
	} 
    
    $("#confirmFriend").on("click",function(){
    	if(!checkNull($("#mnfdMessage"), $("#mnfdMessage").val(), "인사말을 입력하세요.")) return false;
    	
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/friendProc"
			,data : { "mnMmSeq" : $("#Seq").val(), "mnfdFriendSeq" : $("#mnfdFriendSeq").val()}
			,success: function(response) {
				if(response.rt == "success") {
					$("#friendForm").submit();
				} else {
					alert("친구이거나 친구 신청한 사람입니다.");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
    
    friendAlert = function(){
    	alert("로그인이 필요한 기능입니다.");
    }
    
    // 지역 시 변경
    function sch_area_si_chg(s_code, s_name){	//구 검색
    	$("#dev_rDutySICode").val(s_code);
    	$("#dev_rDutyGuCode").val("");
    	var vSelect = $("#dev_rDutyAreaCode").val();
    	$("#dev_sch_area_si .on").removeClass("on")
    	$("#dev_sch_area_si li.dev_tab_"+ s_code).addClass("on");

    	$("#dev_sel_si_name").html(s_name);
    	$.ajax({
    		url:"/list/gi/mon_search_form_data.asp?sch_type=areagu&scd="+ s_code + "&si_chg=1&vselect="+ vSelect ,
    		success:function(response, status, request){
    		//	alert("aa code="+request.status+", message="+request.responseText)
    			if(response != ""){
    				$("#dev_sch_area_gu ul").html(response);
    				$("#dev_sch_area_gu").removeClass("hide");
    				$("#dev_sch_area_dong").addClass("hide")
    			}
    		},
    		error:function (request,status,error){
    			//alert("bb code="+request.status+", message="+request.responseText);
    		}
    	});
    }

    // 지역 구 변경
    function sch_area_gu_chg(g_code, g_name){	// 동 검색

    	var obj_areacode = $("#dev_rDutyAreaCode");
    	$("#dev_rDutyGuCode").val(g_code);
    	$("#dev_sch_area_gu .on").removeClass("on");

    	if( g_code.substr(1, 4) == "000") {	//시 전체
    		var strCode1 = obj_areacode.val();
    		if(strCode1.indexOf(",") >= 0){
    			var arrCode1 = strCode1.split(",");
    			var resetCode = "";
    			for(var i=0; i<arrCode1.length; i++){
    				if(arrCode1[i] != "" && arrCode1[i].substr(0,1) == g_code.substr(0,1) ) {
    					sch_area_del(arrCode1[i]);
    				}
    			}
    			obj_areacode.val(obj_areacode.val()+","+resetCode);
    		}

    		$("#dev_area_gu_code_"+ g_code).addClass("on");
    		var max_cnt = 5;
    		if($("#dev_sch_area_name span").length >= max_cnt) {
    			alert("최대 "+ max_cnt +"개까지 선택할 수 있습니다.");
    			$("#dev_area_gu_code_"+ g_code).removeClass("on");
    		} else {
    			obj_areacode.val(obj_areacode.val() + ","+ g_code);
    			$("#dev_sch_area_name").html($("#dev_sch_area_name").html()+"<span class=\"dev_area_"+ g_code +"\">"+ g_name +"<button type=\"button\" class=\"close\" title=\"삭제\" onclick=\"sch_area_del('"+ g_code +"')\">삭제</button></span>").removeClass("hide");
    		}

    		$("#dev_sch_area_dong").html("").addClass("hide");
    		if(obj_areacode.val() != ""){
    			$("#dev_sch_area_btn").addClass("skip");
    			$("#dev_sch_area_name").removeClass("hide");
    		}
    	} else {
    		$("#dev_area_gu_code_"+ g_code).addClass("on");

    		var vSelect = obj_areacode.val();
    		$.ajax({
    			url:"/list/gi/mon_search_form_data.asp?sch_type=areadong&gcd="+ g_code + "&vselect="+vSelect ,
    			success:function(response, status, request){
    			//	alert("aa code="+request.status+", message="+request.responseText)
    				if(response != ""){
    					$("#dev_sch_area_dong").html(response).removeClass("hide");
    				}
    			},
    			error:function (request,status,error){
    				//alert("bb code="+request.status+", message="+request.responseText);
    			}
    		});
    	}
    }

    // 지역 동 변경
    function sch_area_dong_chg(d_code, d_name){	// 동 선택
    	var obj_self = $("#dev_area_dong_code_"+d_code);
    	var obj_areacode = $("#dev_rDutyAreaCode");

    	if(obj_self.attr("checked")) {
    		if(d_code.length == 4){	//구 전체 - 동 선택 삭제
    			var vArea = obj_areacode.val();
    			if(vArea.indexOf(d_code.substr(0, 1)+"000") > 0){	// 시 전체 삭제
    				sch_area_del(d_code.substr(0, 1)+"000");
    			}
    			$("input:checkbox[name=area_dong_code]:checked").each(function(){
    				sch_area_del( $(this).val());
    			});
    			obj_self.attr("checked", true);
    		} else {
    			var vArea = obj_areacode.val();
    			if( $("#dev_area_dong_code_"+d_code.substr(0, 4)).attr("checked") ) {	// 구 전체 삭제
    				sch_area_del(d_code.substr(0, 4));
    			}
    			if(vArea.indexOf(d_code.substr(0, 1)+"000") > 0){	// 시 전체 삭제
    				sch_area_del(d_code.substr(0, 1)+"000");
    			}
    		}

    		var max_cnt = 5;
    		if($("#dev_sch_area_name span").length >= max_cnt) {
    			alert("최대 "+ max_cnt +"개까지 선택할 수 있습니다.");
    			$("#dev_area_dong_code_"+d_code).attr("checked",false);
    		} else {

    			obj_self.attr("checked",true);
    			obj_areacode.val(obj_areacode.val() + ","+ d_code);
    			$("#dev_sch_area_name").html($("#dev_sch_area_name").html()+"<span class=\"dev_area_"+ d_code +"\">"+ d_name +"<button type=\"button\" class=\"close\" title=\"삭제\" onclick=\"sch_area_del('"+ d_code +"')\">삭제</button></span>").removeClass("hide");

    			sch_item_sel("dev_area_dong_code_"+ d_code);

    			if(obj_areacode.val() != ""){
    				$("#dev_sch_area_btn").addClass("skip");
    				$("#dev_sch_area_name").removeClass("hide");
    			}
    		}
    	} else {
    		sch_area_del(d_code);
    	}
    }
    // 지역 삭제
    function sch_area_del(d_code){		//동 삭제

    	if(d_code.length == 4 && d_code.substr(1, 3) == "000") { //시,도 전체
    		$("#dev_area_gu_code_"+ d_code).removeClass("on");
    	} else {
    		$("#dev_area_dong_code_"+d_code).attr("checked", false);
    		sch_item_unsel("dev_area_dong_code_"+ d_code);
    	}
    	$("#dev_sch_area_name .dev_area_"+d_code).remove();

    	var strCode1 = $("#dev_rDutyAreaCode").val();
    	if(strCode1.indexOf(",") >= 0){
    		var arrCode1 = strCode1.split(",");
    		var resetCode = "";
    		for(var i=0; i<arrCode1.length; i++){
    			if(arrCode1[i] != "" && arrCode1[i] != d_code) {
    				resetCode += "," + arrCode1[i];
    			}
    		}
    		$("#dev_rDutyAreaCode").val(resetCode);
    	} else {
    		$("#dev_rDutyAreaCode").val("");
    	}

    	if($("#dev_rDutyAreaCode").val() == ""){
    		$("#dev_sch_area_btn").removeClass("skip");
    		$("#dev_sch_area_name").addClass("hide").html("");
    	}
    }


    function sch_duty_dong_onfocus(){
    	var obj = $("#dev_rDutyDong");
    	if(obj.val() == obj.attr("title") ){
    		obj.val("");
    	}
    }

    $(document).ready(function(){
    	$("#itemSeoulCd97").click(function(){
    		if($("#itemSeoulCd97").is(":checked")) {
    			$("input[name='mnmlLocationCdArray']").prop("checked", false);
    			$(this).prop("checked", true);
    		}
    	});
    	
    	$("input[name='mnmlLocationCdArray']").on("click",function(){
    		let count = $("input:checked[name='mnmlLocationCdArray']").length;
    		
    		if(count > 5){
    			$(this).prop("checked", false);
    			alert("5개 이하만 선택 가능합니다.");
    		}
    		
    		if($("#itemSeoulCd97").is(":checked")) {
    			if($(this).attr("id") != "itemSeoulCd97"){
    				$("#itemSeoulCd97").prop("checked", false);
    			}
    		}
    	});
    });
    
    function modalClear(){
    	document.getElementById("mnfdMessage").value='';
    }
    
    $('#friendModal').on('hidden.bs.modal', function (e) {
    	document.getElementById("mnfdMessage").value='';
    });
</script>
</body>
</html>