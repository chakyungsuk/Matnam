<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
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
</head>

<body>
    <!-- Header ================================================== -->
    <%@ include file="/WEB-INF/views/user/include/top.jsp"%>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" id="short" data-parallax="scroll" data-image-src="/resources/user/image/subheader/profileSub.jpg" data-natural-width="1400" data-natural-height="550">
        <div id="subheader">
            <div id="sub_content">
                <h1>24 results in your zone</h1>
                <div><i class="icon_pin"></i> 맛남의 광장</div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="/index/matnamMain">홈</a></li>
                <li><a href="/user/loginForm">로그인</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
	<form action="" method="post" id="loginForm" name="loginForm">
		<div class="container margin_60_35">
		    <div class="row justify-content-center">
		        <div class="col-2">
		        	<div class="box_style_2 info d-none d-sm-block justify-content-center">
		                <button type="button" id="userLogin" class="btn btn-outline-success btn-lg">사용자 계정 로그인</button>
		                <hr>
		                <button type="button" id="adminLogin" class="btn btn-outline-secondary btn-lg">관리자 계정 로그인</button>
		            </div><!-- End box_style_1 -->
		        </div>
		        <div class="col-5">
		            <div class="box_style_2" id="order_process">
		                <h2 class="inner" style="text-align: center;">로그인</h2>
		                <div class="form-group">
		                    <label>아이디</label>
		                    <input type="text" class="form-control" id="mnMmId" name="firstname_order" placeholder="아이디" value="guest1">
		                </div>
		                <div class="form-group">
		                    <label>비밀번호</label>
		                    <input type="password" class="form-control" id="mnMmPassword" name="lastname_order" placeholder="비밀번호" value="guest1">
		                </div>
		                <div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
							<label class="form-check-label" for="flexCheckDefault">
								로그인 상태 유지
							</label>
						</div>
						<div style="text-align: center; padding:10px; "> 
		                	<button type="button" class="btn_1" id="btnLogin" style="width:200px;">로그인</button>
		                </div>
		                <div style="text-align: center; padding:10px;">
		                	<button class="btn btn-light" style="width:200px;"><img src="/resources/user/image/naverLoginBtn.png" style="width:140px;"></button>
		                </div> 
		                <div class="row justify-content-center" style="margin-top:10px;">  
		                	<div class="col-auto">
			                	<a href="" class="login_text" style="color: black;">아이디 찾기</a>
		                	</div>
		                	<div class="login_search col-auto"> 
		                		<a href="" class="login_text" style="color: black;">비밀번호 찾기</a>
		                	</div>
		                	<div class="login_search col-auto">
		                		<a href="userForm" class="login_text" style="color: black;">회원가입</a>
		                	</div> 
		                </div>
		            </div><!-- End box_style_1 -->
		        </div><!-- End col -->
		        
		    </div><!-- End row -->
		</div><!-- End container -->
	</form>


<!-- End Content =============================================== -->

<!-- Footer ================================================== -->
<%@ include file="/WEB-INF/views/user/include/footer.jsp"%>
<!-- End Footer =============================================== -->

<div class="layer"></div><!-- Mobile menu overlay mask -->
    
     <!-- Search Menu -->
	<div class="search-overlay-menu">
		<span class="search-overlay-close"><i class="icon_close"></i></span>
		<form role="search" id="searchform" method="get">
			<input value="" name="q" type="search" placeholder="Search..." />
			<button type="submit"><i class="icon-search-6"></i>
			</button>
		</form>
	</div>
	<!-- End Search Menu -->
    
<!-- COMMON SCRIPTS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>
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
    
    $("#btnLogin").on("click",function(){
 		
 		if(!checkNull($("#mnMmId"), $("#mnMmId").val(), "아이디를 입력하세요.")) return false;
 		if(!checkNull($("#mnMmPassword"), $("#mnMmPassword").val(), "비밀번호를 입력하세요.")) return false;
 		
 		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/loginProc"
			,data : { "mnMmId" : $("#mnMmId").val(), "mnMmPassword" : $("#mnMmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/matnamMain";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
 	});
    
    checkNull = function (obj, value, message) {
    	if(value == "" || value == null){
    		alert(message);
    		obj.focus();
    		return false;
    	} else {
    		return true;
    	}
    }
    
	$("#userLogin").on("click",function(){
 		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/loginProc"
			,data : { "mnMmId" : "guest1", "mnMmPassword" : "guest1"}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/matnamMain";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
 	});
	
	$("#adminLogin").on("click",function(){
 		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/loginProc"
			,data : { "mnMmId" : "admin1", "mnMmPassword" : "admin1"}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/matnamMain";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
 	});
</script>
</body>
</html>