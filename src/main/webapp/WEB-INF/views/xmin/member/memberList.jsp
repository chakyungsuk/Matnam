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

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>Matnam Member</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<style>
	
		a:link {
			text-decoration : none;
		}
		
		.card-header{
			padding: 15px 0px 0px 15px;
			background-color:white;
			border-bottom:none;
		}
	</style>
	
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
					<h1 class="h3 mb-3" style="text-align:center;">회원 관리</h1>					
					<div class="card">
						<div class="card-header">
							<h5 class="card-title mb-0">검색 구분</h5>
						</div>
						<div class="row" style="padding: 10px 10px 10px 10px;">
							<div class="col-6 col-md-3">							
							    <select class="form-select" aria-label="Default select example">
									<option selected>가입 일자</option>
									<option value="1">1년 이내</option>
									<option value="2">1년~2년</option>
									<option value="3">2년~3년</option	>
									<option value="3">3년 이상</option	>
								</select>								
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example">
									<option selected>연령</option>
									<option value="1">8세 이하</option>
									<option value="2">청소년</option>
									<option value="3">성인</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example">
									<option selected>성별</option>
									<option value="1">남</option>
									<option value="2">여</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
								<select class="form-select" aria-label="Default select example">
									<option selected>검색구분</option>
									<option value="1">남</option>
									<option value="2">여</option>
								</select>
							</div>
						</div>
						<div class="row" style="padding: 0px 10px 10px 10px;">
							<div class="col-6 col-md-3">
							    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
							</div>
							<div class="col-6 col-md-3">
							    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
							</div>
							<div class="col-6 col-md-3">
							    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
							</div>
							<div class="col-6 col-md-3">
								<button class="btn btn-primary"><i class="align-middle" data-feather="search"></i></button>
								<button class="btn btn-danger"><i class="align-middle" data-feather="refresh-cw"></i></button>
							</div>
						</div>	
					
					</div>			
				</div>				
				<div class="row">
					<div class="col-12">
						<div class="card flex-fill">
							<div class="card-header">
								<h5 class="card-title mb-0">회원 정보</h5>
							</div>
							<table class="table table-hover my-0" style="text-align:center;">
								<thead style="border-bottom:none;">
									<tr>
										<th class="d-none d-xl-table-cell">no</th>
										<th>아이디</th>
										<th>사용자 이름</th>										
										<th class="d-none d-md-table-cell">전화번호</th>
										<th class="d-none d-xl-table-cell">회원등급</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="d-none d-xl-table-cell">1</td>
										<td>hyunjune94</td>
										<td><a href="/xmin/memberView">강현준</a></td>										
										<td class="d-none d-md-table-cell">010-7335-2901</td>
										<td class="d-none d-xl-table-cell"><span class="badge bg-success">Done</span></td>
									</tr>
									<tr>
										<td>2</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-danger">Cancelled</span></td>
										<td class="d-none d-md-table-cell">William Harris</td>
									</tr>
									<tr>
										<td>3</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-success">Done</span></td>
										<td class="d-none d-md-table-cell">Sharon Lessman</td>
									</tr>
									<tr>
										<td>4</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-warning">In progress</span></td>
										<td class="d-none d-md-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td>5</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-success">Done</span></td>
										<td class="d-none d-md-table-cell">William Harris</td>
									</tr>
									<tr>
										<td>6</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-success">Done</span></td>
										<td class="d-none d-md-table-cell">Sharon Lessman</td>
									</tr>
									<tr>
										<td>7</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-success">Done</span></td>
										<td class="d-none d-md-table-cell">Christina Mason</td>
									</tr>
									<tr>
										<td>8</td>
										<td class="d-none d-xl-table-cell">01/01/2021</td>
										<td class="d-none d-xl-table-cell">31/06/2021</td>
										<td><span class="badge bg-warning">In progress</span></td>
										<td class="d-none d-md-table-cell">William Harris</td>
									</tr>
								</tbody>
							</table>
							<nav aria-label="Page navigation example" style="margin-top:20px;">
								<ul class="pagination" style="justify-content: center;">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</main>
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>

	<script src="/resources/admin/js/app.js"></script>
	<script src="/resources/admin/js/app2.js"></script>

</body>

</html>