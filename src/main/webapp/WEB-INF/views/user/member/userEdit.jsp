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
                <h1>????????? ??? ?????? ?????? ???????????????</h1>
                <div><i class="icon_pin"></i> ????????? ??????</div>
            </div><!-- End sub_content -->
        </div><!-- End subheader -->
    </section><!-- End section -->
    <!-- End SubHeader ============================================ -->

    <div id="position">
        <div class="container">
            <ul>
                <li><a href="/index/matnamMain">???</a></li>
                <li><a href="/user/profileView">???????????????</a></li>
                <li><a href="/user/userEdit">??????????????????</a></li>
            </ul>
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
		        	<form id="formUnderList" name="formUnderList" method="post" action="">
					<input type="hidden" id="mnMmSeqUnder" name="mnMmSeq">
		            <div class="box_style_2" id="order_process">
		                <h2 class="inner" style="text-align: center;">???????????? ??????</h2>
		                <div class="form-group">
		                    <label>?????????</label>
		                    <input type="text" id="mnMmId" name="mnMmId" class="form-control" value="${rt.mnMmId}" disabled>
		                </div>
		                <div class="form-group">
		                    <label>????????????</label>
		                    <input type="password" class="form-control" id="mnMmPassword" name="mnMmPassword" placeholder="">
		                </div>
		                <div class="form-group">
		                    <label>???????????? ?????????</label>
		                    <input type="password" id="mnMmPasswordAgain" name="mnMmPasswordAgain" class="form-control" placeholder="">
		                </div>
		                <div class="form-group">
		                    <label>??????</label>
		                    <input type="text" id="mnMmName" name="mnMmName" class="form-control" value="${rt.mnMmName}" disabled>
		                </div>
	                    <div class="form-group">
	                        <label>????????????</label>
		                		<div class="row">
		                    	<div class="col-md-4 col-sm-4">
		                            <input type="text" id="mnMmDob_Year" name="mnMmDob_Year" class="form-control" value="${rt.mnMmDob_Year}" placeholder="???(4???)">
		                        </div>
		                    	<div class="col-md-4 col-sm-4">
		                            <select class="form-select" name="mnMmDob_Month_Cd" id="mnMmDob_Month_Cd">
		                                <option value="" selected>???</option>
		                                <option value="1" <c:if test="${rt.mnMmDob_Month_Cd eq 1}">selected</c:if>>1</option>
		                                <option value="2" <c:if test="${rt.mnMmDob_Month_Cd eq 2}">selected</c:if>>2</option>
		                                <option value="3" <c:if test="${rt.mnMmDob_Month_Cd eq 3}">selected</c:if>>3</option>
		                                <option value="4" <c:if test="${rt.mnMmDob_Month_Cd eq 4}">selected</c:if>>4</option>
		                                <option value="5" <c:if test="${rt.mnMmDob_Month_Cd eq 5}">selected</c:if>>5</option>
		                                <option value="6" <c:if test="${rt.mnMmDob_Month_Cd eq 6}">selected</c:if>>6</option>
		                                <option value="7" <c:if test="${rt.mnMmDob_Month_Cd eq 7}">selected</c:if>>7</option>
		                                <option value="8" <c:if test="${rt.mnMmDob_Month_Cd eq 8}">selected</c:if>>8</option>
		                                <option value="9" <c:if test="${rt.mnMmDob_Month_Cd eq 9}">selected</c:if>>9</option>
		                                <option value="10" <c:if test="${rt.mnMmDob_Month_Cd eq 10}">selected</c:if>>10</option>
		                                <option value="11" <c:if test="${rt.mnMmDob_Month_Cd eq 11}">selected</c:if>>11</option>
		                                <option value="12" <c:if test="${rt.mnMmDob_Month_Cd eq 12}">selected</c:if>>12</option>
		                            </select>
		                        </div>
			                    <div class="col-md-4 col-sm-4">
			                            <input type="text" id="mnMmDob_Day" name="mnMmDob_Day" class="form-control" value="${rt.mnMmDob_Day}" placeholder="???">
			                    </div>
		                    </div>
		                </div>
		                <div class="form-group">
		                    <label>??????</label>
		                    <select class="form-select" name="mnMmGenderCd" id="mnMmGenderCd" readonly>
	                            <option value="" selected>??????</option>
	                            <option value="1" <c:if test="${rt.mnMmGenderCd eq 1}">selected</c:if>>??????</option>
	                            <option value="2" <c:if test="${rt.mnMmGenderCd eq 2}">selected</c:if>>??????</option>
	                            <option value="3" <c:if test="${rt.mnMmGenderCd eq 3}">selected</c:if>>??????</option>
	                        </select>
		                </div>
		                <%-- <div class="form-group">
	                        <label>????????????</label>
	                		<div class="row">
		                    	<div class="col-md-8 col-sm-8">
		                            <input type="text" id="mnmpNumber" name="mnmpNumber" class="form-control" value="${rt.mnmpNumber }" placeholder="???????????? ??????">
		                        </div>
		                    	<div class="col-md-4 col-sm-4">
		                            <button class="btn_full">???????????? ??????</button>
		                        </div>
		                    	<div class="col-12">
		                            <input type="text" id="city_order" name="city_order" class="form-control" placeholder="">
		                        </div>
	                    	</div>
	               		</div> --%>
	               		<div class="form-group">
		                    <label>????????????</label>
		                    <input type="text" id="mnmpNumber" name="mnmpNumber" class="form-control" placeholder="????????? ??????????????????." required>
		                </div>
	               		<div class="form-group">
						  	<label>??????</label>
						  	<div class="input-group mb-2">
								<input type="text" class="form-control" id="mnmaZipcode" name="mnmaZipcode" value="${rt.mnmaZipcode }" readonly>
								<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
								<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">????????????</button>
							</div>
						    <input type="text" class="form-control mb-2" id="mnmaAddress1" name="mnmaAddress1" value="${rt.mnmaAddress1 }" readonly>
						    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
						    <input type="text" class="form-control mb-2" id="mnmaAddress2" name="mnmaAddress2" value="${rt.mnmaAddress2 }" placeholder="????????????" required>
					  	</div>
		                <div style="text-align: center; padding:10px; "> 
		                	<button type="button" class="btn_1" onclick = "javascript:goUpdt(${sessSeq})" style="width:200px;">????????????</button>
		                	<!-- <a class="btn_1" href="profileView" style="width:200px;">????????????</a> -->
		                </div>
		            </div><!-- End box_style_1 -->
		            <button type="button" class="btn btn-outline-secondary" onclick = "javascript:goViewForm(${sessSeq})">????????????</button>
					</form>
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

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.3/dist/jquery.validate.min.js"></script>
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
    
    goViewForm = function(seq){
		$("#mnMmSeq").val(seq);
		$("#formTopList").attr("action","/user/profileView");
		$("#formTopList").submit();
	} 
    
    goUpdt = function(seq){
		$("#mnMmSeqUnder").val(seq);
		$("#formUnderList").attr("action","/user/userUpdt");
		$("#formUnderList").submit();
	} 
    
    <!-- ?????? -->
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????
                var extraAddr = ''; // ???????????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                if(data.userSelectedType === 'R'){
                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ???????????? ??????, ??????????????? ?????? ????????????.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ????????? ??????????????? ?????? ????????? ?????????.
                    //document.getElementById("ifmaAddress3").value = extraAddr;
                
                } else {
                   // document.getElementById("ifmaAddress3").value = '';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                document.getElementById('mnmaZipcode').value = data.zonecode;
                document.getElementById("mnmaAddress1").value = addr;
                // ????????? ???????????? ????????? ????????????.
                document.getElementById("mnmaAddress2").focus();
            }
        }).open();
    }
	<!-- ?????? -->
	
	$( document ).ready( function () {
		$( "#formUnderList" ).validate( {
			rules: {
				mnMmPassword: {
					minlength: 5
				},
				mnMmPasswordAgain: { 
					equalTo: "#mnMmPassword"
				}
			},
			messages: {
				mnMmPassword: {
					minlength: "5?????? ?????? ???????????????"
				},
				mnMmPasswordAgain: {
					equalTo: "??????????????? ?????? ????????????."
				}
			},
			errorElement: "em",
			errorPlacement: function ( error, element ) {
				// Add the `help-block` class to the error element
				error.addClass( "help-block" );

				// Add `has-feedback` class to the parent div.form-group
				// in order to add icons to inputs
				element.parents( ".col-md-4" ).addClass( "has-feedback" );

				if ( element.prop( "type" ) === "checkbox" ) {
					error.insertAfter( element.parent( "label" ) );
				} else {
					error.insertAfter( element );
				}

				// Add the span element, if doesn't exists, and apply the icon classes to it.
				if ( !element.next( "span" )[ 0 ] ) {
					$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
				}
			},
			success: function ( label, element ) {
				// Add the span element, if doesn't exists, and apply the icon classes to it.
				if ( !$( element ).next( "span" )[ 0 ] ) {
					$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
				}
			},
			highlight: function ( element, errorClass, validClass ) {
				$( element ).parents( ".col-md-4" ).addClass( "has-error" ).removeClass( "has-success" );
				$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
			},
			unhighlight: function ( element, errorClass, validClass ) {
				$( element ).parents( ".col-md-4" ).addClass( "has-success" ).removeClass( "has-error" );
				$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
			}
		} );
	} );
</script>
</body>
</html>