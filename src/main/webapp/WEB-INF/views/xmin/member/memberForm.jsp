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
									<input type="text" class="form-control mb-3" placeholder="">
								<div class="row">
									<div class="col-12 col-lg-6">
									<label>이름</label>
										<input type="text" class="form-control mb-3" placeholder="">
									</div>
									<div class="col-12 col-lg-6">
									<label>성별</label>
											<div class="form-check" style="margin-top: 8px; margin-left: 12px;">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender" id="gender" value="" checked><label class="form-check-label" for="inlineRadio1">남</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender" id="gender" value=""> <label class="form-check-label" for="inlineRadio2">여</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="gender" id="gender" value=""> <label class="form-check-label" for="inlineRadio3">기타</label>
												</div>
											</div>
									</div>
								</div>
								<label>비밀번호</label>
									<input type="text" class="form-control mb-3" placeholder="">
									<input type="text" class="form-control mb-3" placeholder="비밀번호확인">
								<div class="form-group">
		                        	<label>생년월일</label>
			                		<div class="row">
				                    	<div class="col-md-4 col-sm-4 mb-3">
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
										<label for="formGroupExampleInput" class="form-label">모바일</label>
					  					<div class="input-group">
											<input type="text" class="form-control" aria-label="mn1" value="">
											<span class="input-group-text">-</span> 
											<input type="text" class="form-control" aria-label="mn2" value="">
											<span class="input-group-text">-</span> 
											<input type="text" class="form-control" aria-label="mn3" value="">
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
								<div class="card-body text-center">
									<img src="/resources/admin/img/avatars/avatar-4.jpg" alt="" class="img-fluid rounded-circle mb-2" width="180" height="180" />
								</div>
							</div>
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">주 소</h5>
								</div>
								<div class="card-body">
									<div class="input-group mb-2">
											<input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode" readonly>
											<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
											<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">주소찾기</button>
									</div>
								    <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1" readonly>
								    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
								    <input type="text" class="form-control mb-2" id="ifmaAddress2" name="ifmaAddress2" placeholder="상세주소" required>
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
													<input class="form-check-input" type="radio" name="a" id="a" value="" checked> <label class="form-check-label" for="">골드</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="a" id="a" value=""> <label class="form-check-label" for="">실버</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="a" id="a" value=""> <label class="form-check-label" for="">브론즈</label>
												</div>
											</div>
										</div>
										<div class="col-12 col-lg-6" style="margin-top: 8px;">
											<label>권 한</label>
											<div class="form-check">
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="b" id="b" value="" checked> <label class="form-check-label" for="">관리자</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" name="b" id="b" value=""> <label class="form-check-label" for="">사용자</label>
												</div>
											</div>
										</div>
									</div>
									<div class="btn_area text-center" style="margin-top: 50px;">
										<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/memberList';">목록</button>	
										<button type="button" class="btn btn-outline-primary" onclick="location.href='/xmin/memberView';">등록</button>
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

	<script src="/resources/admin/js/app.js"></script>

</body>

</html>