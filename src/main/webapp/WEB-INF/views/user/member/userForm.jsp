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
    <title>QuickFood - Quality delivery or take away food</title>

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
</head>

<body>
    <!-- Header ================================================== -->
    <%@ include file="/WEB-INF/views/user/include/top.jsp"%>
    <!-- End Header =============================================== -->

    <!-- SubHeader =============================================== -->
    <section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
        <div id="subheader">
            <div id="sub_content">
                <h1>24 results in your zone</h1>
                <div><i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB</div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="#0">Home</a></li>
                <li><a href="#0">Category</a></li>
                <li>Page active</li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->

	<div class="container margin_60_35">
	    <div class="row">
	        <div class="col-lg-3">
	        </div><!-- End col -->
	        <div class="col-lg-6">
	            <div class="box_style_2" id="order_process">
	                <h2 class="inner" style="text-align: center;">회원가입</h2>
	                <div class="form-group">
	                    <label>아이디</label>
	                    <input type="text" class="form-control" id="firstname_order" name="firstname_order" placeholder="">
	                </div>
	                <div class="form-group">
	                    <label>비밀번호</label>
	                    <input type="password" class="form-control" id="lastname_order" name="lastname_order" placeholder="">
	                </div>
	                <div class="form-group">
	                    <label>비밀번호 재확인</label>
	                    <input type="password" id="tel_order" name="tel_order" class="form-control" placeholder="">
	                </div>
	                <div class="form-group">
	                    <label>이름</label>
	                    <input type="text" id="email_booking_2" name="email_order" class="form-control" placeholder="">
	                </div>
                    <div class="form-group">
                        <label>생년월일</label>
	                		<div class="row">
	                    	<div class="col-md-4 col-sm-4">
	                            <input type="text" id="city_order" name="city_order" class="form-control" placeholder="년(4자)">
	                        </div>
	                    	<div class="col-md-4 col-sm-4">
	                            <select class="form-control" name="delivery_schedule_day" id="delivery_schedule_day">
	                                <option value="" selected>월</option>
	                                <option value="1">1</option>
	                                <option value="2">2</option>
	                                <option value="3">3</option>
	                                <option value="4">4</option>
	                                <option value="5">5</option>
	                                <option value="6">6</option>
	                                <option value="7">7</option>
	                                <option value="8">8</option>
	                                <option value="9">9</option>
	                                <option value="10">10</option>
	                                <option value="11">11</option>
	                                <option value="12">12</option>
	                            </select>
	                        </div>
		                    <div class="col-md-4 col-sm-4">
		                            <input type="text" id="pcode_oder" name="pcode_oder" class="form-control" placeholder="일">
		                    </div>
	                    </div>
	                </div>
	                <div class="form-group">
	                    <label>성별</label>
	                    <select class="form-select" name="delivery_schedule_day" id="delivery_schedule_day">
                            <option value="" selected>성별</option>
                            <option value="1">남성</option>
                            <option value="2">여성</option>
                            <option value="3">기타</option>
                        </select>
	                </div>
	                <div class="form-group">
                        <label>휴대전화</label>
                		<div class="row">
	                    	<div class="col-md-8 col-sm-8">
	                            <input type="text" id="city_order" name="city_order" class="form-control" placeholder="전화번호 입력">
	                        </div>
	                    	<div class="col-md-4 col-sm-4">
	                            <button class="btn_full">인증번호 받기</button>
	                        </div>
	                    	<div class="col-12">
	                            <input type="text" id="city_order" name="city_order" class="form-control" placeholder="">
	                        </div>
	                    </div>
	                </div>
	                <div class="form-group">
						<label>음식취향</label>
						<div class="mb-3">
							<input type="checkbox" class="btn-check" id="ifmhHobbyCd1" name="ifmhHobbyCd1" value="38" autocomplete="off">
							<label class="btn btn-outline-primary" for="ifmhHobbyCd1">한식</label>
							<input type="checkbox" class="btn-check" id="ifmhHobbyCd2" name="ifmhHobbyCd2" value="39" autocomplete="off"> 
							<label class="btn btn-outline-primary" for="ifmhHobbyCd2">양식</label> 
							<input type="checkbox" class="btn-check" id="ifmhHobbyCd3" name="ifmhHobbyCd3" value="40" autocomplete="off">
							<label class="btn btn-outline-primary" for="ifmhHobbyCd3">중식</label>
							<input type="checkbox" class="btn-check" id="ifmhHobbyCd4" name="ifmhHobbyCd4" value="41" autocomplete="off"> 
							<label class="btn btn-outline-primary" for="ifmhHobbyCd4">일식</label> 
							<%-- <c:forEach items="${codeHobby}" var="itemHobby" varStatus="statusHobby">
								<input type="checkbox" class="btn-check" id="ifmhHobbyCd<c:out value="${itemHobby.ifcdSeq}"/>" name="ifmhHobbyCdArray" value="${itemHobby.ifcdSeq}" autocomplete="off">
								<label class="btn btn-outline-primary" for="ifmhHobbyCd<c:out value="${itemHobby.ifcdSeq}"/>"><c:out value="${itemHobby.ifcdName}"/></label>
							</c:forEach> --%>
						</div> 
					</div>
					<div class="form-group">
					  	<label>주소</label>
					  	<div class="input-group mb-2">
							<input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode" readonly>
							<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
							<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">주소찾기</button>
						</div>
					    <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1" readonly>
					    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
					    <input type="text" class="form-control mb-2" id="ifmaAddress2" name="ifmaAddress2" placeholder="상세주소" required>
					    <input type="text" class="form-control" id="ifmaAddress3" name="ifmaAddress3" placeholder="참고항목">
				  	</div>
	                <div style="text-align: center; padding:10px; "> 
	                	<button class="btn_1" onclick="location.href = '/user/loginForm'" style="width:200px;">가입하기</button>
	                </div>
	            </div><!-- End box_style_1 -->
	        </div><!-- End col -->
	        
	    </div><!-- End row -->
	</div><!-- End container -->

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
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
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
</script>
</body>
</html>