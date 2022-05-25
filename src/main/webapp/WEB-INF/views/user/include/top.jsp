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
    <title>matnam</title>

    <!-- Favicons-->
    <link rel="apple-touch-icon" type="image/x-icon" href="/resources/user/image/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/resources/user/image/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/resources/user/image/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/resources/user/image/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&family=Lato:wght@300;400;700;900&display=swap" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="/resources/user/css/animate.min.css" rel="stylesheet">
    <link href="/resources/user/css/button.css" rel="stylesheet">
    <link href="/resources/user/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/user/css/menu.css" rel="stylesheet">
    <link href="/resources/user/css/style.css" rel="stylesheet">
    <link href="/resources/user/css/responsive.css" rel="stylesheet">
    <link href="/resources/user/css/elegant_font/elegant_font.min.css" rel="stylesheet">
    <link href="/resources/user/css/fontello/css/fontello.min.css" rel="stylesheet">
    <link href="/resources/user/css/magnific-popup.css" rel="stylesheet">
    <link href="/resources/user/css/pop_up.css" rel="stylesheet">
    <link href="/resources/common/bootstrap/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/user/css/custom.css" rel="stylesheet">
    
    <!-- Modernizr -->
	<script src="/resources/user/js/modernizr.js"></script> 
	
	<!-- KaKao Map -->
<!-- 	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d80e2a3ed34412759bd6b1eea6603bb"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d80e2a3ed34412759bd6b1eea6603bb&libraries=LIBRARY"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d80e2a3ed34412759bd6b1eea6603bb&libraries=services"></script> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9d80e2a3ed34412759bd6b1eea6603bb&libraries=services,clusterer,drawing"></script>
</head>

<body>

<div id="preloader">
       <div class="sk-spinner sk-spinner-wave" id="status">
           <div class="sk-rect1"></div>
           <div class="sk-rect2"></div>
           <div class="sk-rect3"></div>
           <div class="sk-rect4"></div>
           <div class="sk-rect5"></div>
       </div>
   </div><!-- End Preload -->

<!-- Header ================================================== -->
<header>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-4 col-sm-4 col-4">
            <a href="/index/matnamMain" id="logo">
                <img src="/resources/user/image/096-removebg-preview.png" width="200" height="37" alt="" class="d-none d-sm-block">
                <img src="/resources/user/image/logo_mobile.png" width="59" height="23" alt="" class="d-block d-sm-none">
            </a>
        </div>
        <nav class="col-md-8 col-sm-8 col-8">
        <a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="javascript:void(0);"><span>Menu mobile</span></a>
        <div class="main-menu">
            <div id="header_menu">
                <img src="/resources/user/image/logo.png" width="190" height="23" alt="">
            </div>
            <a href="#" class="open_close" id="close_in"><i class="icon_close"></i></a>
             <ul>
             	<li><a href="/user/storeView">지도검색</a></li>
             	<li><a href="javascript:goAreaSelect(${sessSeq})">친구매칭</a></li>
                <li class="submenu">
                <a href="javascript:void(0);" class="show-submenu">고객센터<i class="icon-down-open-mini"></i></a>
                <ul>
                    <li><a href="/user/userServiceList">문의하기</a></li>
                </ul> 
                </li>
                <!-- <li><a href="/user/loginForm">Login</a></li> -->
                <c:choose>
	        		<c:when test="${not empty sessSeq}">
	        			<c:if test="${sessAdminNy eq 1}">
	        				<li><a href="/xmin/indexView">관리자 페이지</a></li>
	        			</c:if>
	        			<%-- <li><a href="javascript:goForm(${sessSeq})"><c:out value="${sessName}"></c:out> 님</a></li> --%>
	        			<li class="submenu">
			                <a href="javascript:goProfileView(${sessSeq})" class="show-submenu"><c:out value="${sessName}"></c:out> 님<i class="icon-down-open-mini"></i></a>
			                <ul>
			                    <li><a href="javascript:goFriendSelect(${sessSeq})">친구목록</a></li>
<!-- 			                    <li><a href="/user/friendSelect">친구목록</a></li> -->
			                    <li><a href="">리뷰목록</a></li>
			                </ul> 
		                </li>
						<li><a href="#" id="btnLogout" onclick="btnLogout();">Logout</a></li>
	        		</c:when>
	        		<c:otherwise>
	        			<li><a href="/user/userForm">User Register</a></li>
						<li><a href="/user/loginForm">Login</a></li>
	        		</c:otherwise>
	       		</c:choose>
            </ul>
        </div><!-- End main-menu -->
        </nav>
    </div><!-- End row -->
</div><!-- End container -->

<form id="formTopList" name="formTopList" method="post" action="/user/profileView">
	<input type="hidden" id="mnMmSeq" name="mnMmSeq">
	<input type="hidden" id="mnMmName" name="mnMmName" value="${sessName}">
</form>

</header>
<!-- End Header =============================================== -->
    
<!-- COMMON SCRIPTS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/js/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="/resources/user/js/video_header.js"></script>

<script type="text/javascript">
	$("#btnLogout").on("click",function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/user/logoutProc"
			,data : { "sessSeq" : $("#sessSeq").val(), "sessId" : $("#sessId").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/index/matnamMain";
				} else {
					alert("오류");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
    
	goProfileView = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/profileView");
		$("#formTopList").submit();
	} 
	
	goFriendSelect = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/friendSelect");
		$("#formTopList").submit();
	} 
	
	goAreaSelect = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/areaSelect");
		$("#formTopList").submit();
	} 
</script>

</body>
</html>