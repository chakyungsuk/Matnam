<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<jsp:useBean id="CodeServiceImpl" class="com.jeonguggu.matnam.code.CodeServiceImpl"/>

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
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.2/css/bootstrapValidator.min.css"/>

    <!-- YOUR CUSTOM CSS -->
    <link href="/resources/user/css/custom.css" rel="stylesheet">
    
	<style type="text/css">
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
                <li><a href="/index/matnamMain">홈</a></li>
                <li><a href="/user/userForm">회원가입</a></li>
            </ul>
            <a href="#0" class="search-overlay-menu-btn"><i class="icon-search-6"></i> Search</a>
        </div>
    </div><!-- Position -->
    
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->

	<div class="container margin_60_35">
		<form id="profileForm" name="profileForm" method="post" action="userInst">
		    <div class="row">
		        <div class="col-lg-3">
		        </div><!-- End col -->
		        <div class="col-lg-6">
		            <div class="box_style_2" id="order_process">
		                <h2 class="inner" style="text-align: center;">회원가입</h2>
		                <div class="form-group">
		                    <label>아이디</label>
		                    <input type="text" class="form-control" id="mnMmId" name="mnMmId" placeholder="" required>
		                </div>
		                <div class="form-group">
		                    <label>비밀번호</label>
		                    <input type="password" class="form-control" id="mnMmPassword" name="mnMmPassword" placeholder="" required>
		                </div>
		                <div class="form-group">
		                    <label>비밀번호 재확인</label>
		                    <input type="password" id="mnMmPasswordAgain" name="mnMmPasswordAgain" class="form-control" placeholder="" required>
		                </div>
		                <div class="form-group">
		                    <label>이름</label>
		                    <input type="text" id="mnMmName" name="mnMmName" class="form-control" placeholder="" required>
		                </div>
	                    <div class="form-group">
	                        <label>생년월일</label>
		                		<div class="row">
		                    	<div class="col-md-4 col-sm-4">
		                            <input type="text" id="mnMmDob_Year" name="mnMmDob_Year" class="form-control" placeholder="년(4자)" required>
		                        </div>
		                    	<div class="col-md-4 col-sm-4">
		                            <select class="form-select" name="mnMmDob_Month_Cd" id="mnMmDob_Month_Cd" required>
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
			                            <input type="text" id="mnMmDob_Day" name="mnMmDob_Day" class="form-control" placeholder="일" required>
			                    </div>
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label>성별</label>
		                    <select class="form-select" name="mnMmGenderCd" id="mnMmGenderCd" required>
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
		                            <input type="text" id="mnmpNumber" name="mnmpNumber" class="form-control" placeholder="전화번호 입력" required>
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
								<!-- <input type="checkbox" class="btn-check" id="mnmtTasteCd1" name="mnmtTasteCd1" value="8" autocomplete="off">
								<label class="btn btn-outline-primary" for="mnmtTasteCd1">한식</label>
								<input type="checkbox" class="btn-check" id="mnmtTasteCd2" name="mnmtTasteCd2" value="9" autocomplete="off"> 
								<label class="btn btn-outline-primary" for="mnmtTasteCd2">양식</label> 
								<input type="checkbox" class="btn-check" id="mnmtTasteCd3" name="mnmtTasteCd3" value="10" autocomplete="off">
								<label class="btn btn-outline-primary" for="mnmtTasteCd3">중식</label>
								<input type="checkbox" class="btn-check" id="mnmtTasteCd4" name="mnmtTasteCd4" value="11" autocomplete="off"> 
								<label class="btn btn-outline-primary" for="mnmtTasteCd4">일식</label>  -->
								<c:set var="listCodeTaste" value="${CodeServiceImpl.selectListCachedCode('4')}"/>
								<c:forEach items="${listCodeTaste}" var="itemTaste" varStatus="statusTaste">
									<input type="checkbox" class="btn-check" id="itemTasteCd<c:out value="${itemTaste.mncdSeq}"/>" name="mnmtTasteCdArray" value="${itemTaste.mncdSeq}" autocomplete="off">
									<label class="btn btn-outline-primary" for="itemTasteCd<c:out value="${itemTaste.mncdSeq}"/>"><c:out value="${itemTaste.mncdName}"/></label>
								</c:forEach>
							</div> 
						</div>
						<div class="form-group">
						  	<label>주소</label>
						  	<div class="input-group mb-2">
								<input type="text" class="form-control" id="mnmaZipcode" name="mnmaZipcode" readonly>
								<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
								<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">주소찾기</button>
							</div>
						    <input type="text" class="form-control mb-2" id="mnmaAddress1" name="mnmaAddress1" readonly>
						    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
						    <input type="text" class="form-control mb-2" id="mnmaAddress2" name="mnmaAddress2" placeholder="상세주소" required>
					  	</div>
		                <div style="text-align: center; padding:10px; "> 
		                	<button type="submit" class="btn_1" style="width:200px;">가입하기</button>
		                </div>
		            </div><!-- End box_style_1 -->
		        </div><!-- End col -->
		        
		    </div><!-- End row -->
	    </form>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/js/validate.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>
<script src="https://cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.2/js/bootstrapValidator.min.js"></script>

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
    
    <!-- 지도 -->
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("ifmaAddress3").value = extraAddr;
                
                } else {
                   // document.getElementById("ifmaAddress3").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('mnmaZipcode').value = data.zonecode;
                document.getElementById("mnmaAddress1").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("mnmaAddress2").focus();
            }
        }).open();
    }
	<!-- 지도 -->
	
	/* // Example starter JavaScript for disabling form submissions if there are invalid fields
	(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})() */
	
	$(document).ready(function() {
    	$('#profileForm').bootstrapValidator({
    		message: 'This value is not valid',
	    	feedbackIcons: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            firstName: {
	                container: '#firstNameMessage',
	                validators: {
	                    notEmpty: {
	                        message: 'The first name is required and cannot be empty'
	                    }
	                }
	            },
	            lastName: {
	                container: '.lastNameMessage',
	                validators: {
	                    notEmpty: {
	                        message: 'The last name is required and cannot be empty'
	                    }
	                }
	            },
	            mnmpNumber: {
	                message: 'The username is not valid',
	                validators: {
	                    notEmpty: {
	                        message: 'The username is required and cannot be empty'
	                    },
	                    stringLength: {
	                        min: 6,
	                        max: 30,
	                        message: 'The username must be more than 6 and less than 30 characters long'
	                    }
	                }
	            }
	        }
	    });
	});
	
	
</script>
</body>
</html>