<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

	<link rel="canonical" href="https://demo-basic.adminkit.io/ui-forms.html" />

	<title>Matnam Member</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
</head>

<body>

<form id="formInst" name="formInst" method="post" action="/xmin/memberInst" enctype="multipart/form-data">

	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="index.html">
          <span class="align-middle">AdminKit</span>
        </a>
		<!-- nav -->
		<%@include file="../include/memberNav.jsp" %>
		<!-- nav -->
			</div>
		</nav>
				
		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
          <i class="hamburger align-self-center"></i>
        </a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="alertsDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="bell"></i>
									<span class="indicator">4</span>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="alertsDropdown">
								<div class="dropdown-menu-header">
									4 New Notifications
								</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-danger" data-feather="alert-circle"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Update completed</div>
												<div class="text-muted small mt-1">Restart server 12 to complete the update.</div>
												<div class="text-muted small mt-1">30m ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-warning" data-feather="bell"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Lorem ipsum</div>
												<div class="text-muted small mt-1">Aliquam ex eros, imperdiet vulputate hendrerit et.</div>
												<div class="text-muted small mt-1">2h ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-primary" data-feather="home"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">Login from 192.186.1.8</div>
												<div class="text-muted small mt-1">5h ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<i class="text-success" data-feather="user-plus"></i>
											</div>
											<div class="col-10">
												<div class="text-dark">New connection</div>
												<div class="text-muted small mt-1">Christina accepted your request.</div>
												<div class="text-muted small mt-1">14h ago</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all notifications</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle" href="#" id="messagesDropdown" data-bs-toggle="dropdown">
								<div class="position-relative">
									<i class="align-middle" data-feather="message-square"></i>
								</div>
							</a>
							<div class="dropdown-menu dropdown-menu-lg dropdown-menu-end py-0" aria-labelledby="messagesDropdown">
								<div class="dropdown-menu-header">
									<div class="position-relative">
										4 New Messages
									</div>
								</div>
								<div class="list-group">
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">Vanessa Tucker</div>
												<div class="text-muted small mt-1">Nam pretium turpis et arcu. Duis arcu tortor.</div>
												<div class="text-muted small mt-1">15m ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-2.jpg" class="avatar img-fluid rounded-circle" alt="William Harris">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">William Harris</div>
												<div class="text-muted small mt-1">Curabitur ligula sapien euismod vitae.</div>
												<div class="text-muted small mt-1">2h ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-4.jpg" class="avatar img-fluid rounded-circle" alt="Christina Mason">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">Christina Mason</div>
												<div class="text-muted small mt-1">Pellentesque auctor neque nec urna.</div>
												<div class="text-muted small mt-1">4h ago</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center">
											<div class="col-2">
												<img src="img/avatars/avatar-3.jpg" class="avatar img-fluid rounded-circle" alt="Sharon Lessman">
											</div>
											<div class="col-10 ps-2">
												<div class="text-dark">Sharon Lessman</div>
												<div class="text-muted small mt-1">Aenean tellus metus, bibendum sed, posuere ac, mattis non.</div>
												<div class="text-muted small mt-1">5h ago</div>
											</div>
										</div>
									</a>
								</div>
								<div class="dropdown-menu-footer">
									<a href="#" class="text-muted">Show all messages</a>
								</div>
							</div>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-icon dropdown-toggle d-inline-block d-sm-none" href="#" data-bs-toggle="dropdown">
                <i class="align-middle" data-feather="settings"></i>
              </a>

							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
                <img src="img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark">Charles Hall</span>
              </a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="pages-profile.html"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
								<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="pie-chart"></i> Analytics</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="index.html"><i class="align-middle me-1" data-feather="settings"></i> Settings & Privacy</a>
								<a class="dropdown-item" href="#"><i class="align-middle me-1" data-feather="help-circle"></i> Help Center</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Log out</a>
							</div>
						</li>
					</ul>
				</div>
			</nav>

			<main class="content">
				<div class="container-fluid p-0">

					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">Xmin Forms</h1>
						<a class="badge bg-dark text-white ms-2" href="upgrade-to-pro.html">관리자 회원가입</a>
					</div>
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">인적사항</h5>
								</div>
								<div class="card-body">
								<label>아이디</label>
									<input type="text" class="form-control mb-3" name="mnMmId" id="" placeholder="" autocomplete="off">
								<div class="row">
									<div class="col-12 col-lg-6">
									<label>이름</label>
										<input type="text" class="form-control mb-3" name="mnMmName" id="" placeholder="" autocomplete="off">
									</div>
									<div class="col-12 col-lg-6">
									<label>성별</label>
											<div class="form-check" style="margin-top: 8px; margin-left: 12px;">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmGenderCd" id="gender0" value="0" checked>
													<label class="form-check-label" for="gender0">남</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmGenderCd" id="gender1" value="1"> 
													<label class="form-check-label" for="gender1">여</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmGenderCd" id="gender2" value="2">
													<label class="form-check-label" for="gender2">기타</label>
												</div>
											</div>
									</div>
								</div>
								<label>비밀번호</label>
									<input type="text" class="form-control mb-3" name="mnMmPassword" id="" placeholder="" autocomplete="off">
									<input type="text" class="form-control mb-3" placeholder="비밀번호확인">
								<div class="form-group">
		                        	<label>생년월일</label>
			                		<div class="row">
				                    	<div class="col-md-4 col-sm-4 mb-3">
				                            <input type="text" id="" name="mnMmDob_Year" class="form-control" placeholder="년(4자)">
				                        </div>
				                    	<div class="col-md-4 col-sm-4">
				                            <select class="form-control" name="mnMmDob_Month_Cd" id="">
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
			                            	<input type="text" id="" name="mnMmDob_Day" class="form-control" placeholder="일">
					                    </div>
										<label for="formGroupExampleInput" class="form-label">모바일</label>
					  					<div class="input-group">
											<input type="text" class="form-control" name="mnmpNumber" id="" placeholder="숫자만입력" autocapitalize="off">
										</div>
									</div>
								</div>
								</div>
							</div>
							

						</div>

						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">프로필사진</h5>
								</div>
								<div class="card-body text-center" id="image_container">
									<label for="file0">
										<img id="image_hide" src="/resources/admin/img/avatars/avatar-4.jpg" class="img-fluid rounded-circle mb-2" width="180" height="180" />
										 <input class="form-control" type="file" name="file0" id="file0" accept="jpeg,png,gif" style="display:none;" multiple="multiple" onchange="setThumbnail(event);"/> 									
									</label>									
								</div>
									<label style="text-align: center;">그림을 눌러 사진을 첨부해주세요</label><br>
							</div>
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">주 소</h5>
								</div>
								<div class="card-body">
									<div class="input-group mb-2">
										<input type="text" class="form-control" id="mnmaZipcode" name="mnmaZipcode" readonly>
										<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
										<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">주소찾기</button>
									</div>
							    		<input type="text" class="form-control mb-2" id="mnmaAddress1" name="mnmaAddress1" readonly>
								    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
								    <input type="text" class="form-control mb-2" id="mnmaAddress2" name="mnmaAddress2" placeholder="상세주소" required>
								</div>
							</div>
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">등급</h5>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-12 col-lg-6" style="margin-top: 8px;">
											<label>회원등급</label>
											<div class="form-check">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmRankCd" id="Rank0" value="0" checked> 
													<label class="form-check-label" for="Rank0">골드</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmRankCd" id="Rank1" value="1">
													<label class="form-check-label" for="Rank1">실버</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmRankCd" id="Rank2" value="2">
													<label class="form-check-label" for="Rank2">브론즈</label>
												</div>
											</div>
										</div>
										<div class="col-12 col-lg-6" style="margin-top: 8px;">
											<label>권 한</label>
											<div class="form-check">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmAdminNy" id="Admin0" value="1" checked>
													<label class="form-check-label" for="Admin0">관리자</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="mnMmAdminNy" id="Admin1" value="0"> 
													<label class="form-check-label" for="Admin1">사용자</label>
												</div>
											</div>
										</div>
									</div>
									<div class="btn_area text-center" style="margin-top: 50px;">
										<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/memberList';">목록</button>	
										<button type="submit" class="btn btn-outline-primary" name="btnSubmit" id="btnSubmit">등록</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>
</form>		
	
<script src="/resources/admin/js/app.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
<!-- 등록S -->
$("#btnSubmit").on("click", function(){
	var answer = confirm("등록 하시겠습니까?");
	
	if(answer){
		$("#btnSubmit").attr("action", "/xmin/memberInst");
		$("#btnSubmit").submit(); 
	} else {
		return false;
	}

});
<!-- 등록E -->

<!-- 메인사진 업로드 S -->
 function setThumbnail(event) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		
			var img = document.createElement("img"); 
			img.width = 180;
		    img.height = 180;
			img.setAttribute("src", event.target.result);
			$("#image_hide").hide();
			document.querySelector("div#image_container").appendChild(img); 
			
		}; 
			reader.readAsDataURL(event.target.files[0]); 
		}  
<!-- 메인사진 업로드 E -->

<!-- 주소S -->
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
<!-- 주소E -->
</script>

</body>

</html>