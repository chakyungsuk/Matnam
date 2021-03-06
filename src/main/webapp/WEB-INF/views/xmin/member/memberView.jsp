<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   <!--  -- c:out -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- -- 날짜나 시간 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
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

	<link rel="canonical" href="https://demo-basic.adminkit.io/pages-profile.html" />

	<title>Matnam Member</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<style>	
		a:link {
			text-decoration : none;
		}

		.input-group {
			width : 80%;
		}
		
		.card-header {
			padding: 15px 0px 0px 15px;
			background-color:white;
			border:none;
		}
		
		div > h5 {
			font-size : 20px;
		}
		
		.btn_area {
			text-align:center;
			margin-top : 60px;
		}
	</style>
</head>

<body>

<form id="formView" name="formView" method="get" action="/xmin/memberView">

<input type="hidden" name="mnMmSeq" id="mnMmSeq" value="<c:out value="${vo.mnMmSeq}"/>">


	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
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
												<img src="/resources/admin/img/avatars/avatar-5.jpg" class="avatar img-fluid rounded-circle" alt="Vanessa Tucker">
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

					<div class="mb-3" style="text-align:center;">
						<h1>회원 정보</h1>
					</div>
					<div class="row">
						<div class="col-md-4 col-xl-3">
							<div class="card mb-3" style="height:740px;">
								<div class="card-body text-center">
									<img src="/resources/admin/img/avatars/avatar-4.jpg" alt="" class="img-fluid rounded-circle mb-2" width="128" height="128" />
									<h5 class="card-title mb-0" style="margin-top: 10px;">
										<c:choose>
											<c:when test="${item.mnMmAdminNy eq 0}">
												사용자
											</c:when>
											<c:when test="${item.mnMmAdminNy eq 1}">
												관리자
											</c:when>
										</c:choose>
									</h5>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">#</h5>
									<a href="#" class="badge bg-primary me-1 my-1">경기도</a>
									<a href="#" class="badge bg-primary me-1 my-1">고양시</a>
									<a href="#" class="badge bg-primary me-1 my-1">양식</a>
									<a href="#" class="badge bg-primary me-1 my-1">일식</a>
									<a href="#" class="badge bg-primary me-1 my-1">한식</a>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">About</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><span data-feather="heart" class="feather-sm me-1" style="color:red;"></span> x 30</li>
										<li class="mb-1"><span data-feather="user-plus" class="feather-sm me-1"></span> 친구 <a href="#">5명</a></li>										
										<li class="mb-1"><span data-feather="mail" class="feather-sm me-1"></span>문의사항 <a href="#">3건</a></li>
										<li class="mb-1"><span data-feather="tag" class="feather-sm me-1"></span>특이사항</li>
									</ul>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">History</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><a href="#">게시물을 업로드 했습니다</a></li>
										<li class="mb-1">김승태님과 친구가 되었습니다</li>
										<li class="mb-1"><a href="#">게시물을 업로드 했습니다</a></li>
										<li class="mb-1">한예린님과 친구가 되었습니다</li>
										<li class="mb-1">차경석님과 친구가 되었습니다</li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-8 col-xl-9">
							<div class="card" style="height:740px;">
								<div class="card-header">

									<h5 class="card-title mb-0">Profile</h5>
								</div>
								<div class="card-body h-100">

									<div class="d-flex align-items-start">
										<div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">아이디</label>
											<h5><c:out value="${item.mnMmId }"/></h5>
									    </div>
									    <div class="col-12 col-md-6">
									    	<label for="formGroupExampleInput" class="form-label">이름</label>
						  					<h5><c:out value="${item.mnMmName }"/></h5>
									    </div>
									</div>
									<hr />
									
									<div class="d-flex align-items-start">
										<div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">비밀번호</label>
						  					<h5><c:out value="${item.mnMmPassword }"/></h5>
									    </div>
									    <div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">회원등급</label><br>
											<c:choose>
												<c:when test="${item.mnMmRankCd eq 0}">
													<span class="badge bg-warning">골드</span>
												</c:when>
												<c:when test="${item.mnMmRankCd eq 1}">
													<span class="badge bg-secondary">실버</span>
												</c:when>
												<c:when test="${item.mnMmRankCd eq 2}">
													<span class="badge bg-success">브론즈</span>
												</c:when>
											</c:choose>
									    </div>
									</div>
									<hr />
									
									<div class="d-flex align-items-start">
										<div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">모바일</label>
						  					<div class="input-group">
												<h5>
													<fmt:formatNumber var="mnmpNumber" value="${item.mnmpNumber }" pattern="###,####,####"/>
		                                    		<p class="mb-0">0<c:out value="${fn:replace(mnmpNumber, ',', '-')}" /></p>
												</h5>
											</div>
									    </div>
									    <div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">이메일</label>
						  					<div class="input-group	">
						  						<h5><c:out value="${item.mnMmEmail }"/></h5>
											</div>
									    </div>
									</div>
									<hr />
									
									<div class="d-flex align-items-start">
										<div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">생일</label>
											<div class="input-group">
												<h5><c:out value="${item.mnMmDob_Year }"/>년</h5>
												<h5><c:out value="${item.mnMmDob_Month_Cd }"/>월</h5>
												<h5><c:out value="${item.mnMmDob_Day }"/>일</h5>
											</div>
									    </div>
									    <div class="col-12 col-md-6">
											<label for="formGroupExampleInput" class="form-label">성별</label>
												<div class="">
													<c:choose>
														<c:when test="${item.mnMmGenderCd eq 0}">
															<h5>남성</h5>
														</c:when>
														<c:when test="${item.mnMmGenderCd eq 1}">
															<h5>여성</h5>
														</c:when>
														<c:when test="${item.mnMmGenderCd eq 2}">
															<h5>기타</h5>
														</c:when>
													</c:choose>
												</div>
									    </div>
									</div>
									<hr />
									
									<div class="d-flex align-items-start">
										<div class="col-12 col-md-12">
											<label for="formGroupExampleInput" class="form-label">우편번호</label>
						  					<h5><c:out value="${item.mnmaZipcode }"/></h5>
									    </div>
									</div>
									<div class="d-flex align-items-start">
										<div class="col-6 col-md-6">
											<label for="formGroupExampleInput" class="form-label">주소</label>
						  					<h5><c:out value="${item.mnmaAddress1 }"/></h5>
									    </div>
										<div class="col-6 col-md-6">
											<label for="formGroupExampleInput" class="form-label">상세주소</label>
						  					<h5><c:out value="${item.mnmaAddress2 }"/></h5>
									    </div>
									</div>
									<hr />
									
									<div class="btn_area">
										<button type="button" class="btn btn-outline-primary"	onclick="location.href='/xmin/memberList';">목록</button>
										<button type="button" class="btn btn-outline-secondary" id="goform2">수정</button>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
											삭제
										</button>										
										<!-- Modal -->
										<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<h5 class="modal-title" id="staticBackdropLabel">데이터 삭제</h5>
														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
													 '강현준'님의 데이터를 삭제하시겠습니까?
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal" onclick="location.href='/xmin/memberList';">삭제</button>
														<button type="button" class="btn btn-outline-secondary" onclick="location.href='/xmin/memberView';">취소</button>
													</div>
												</div>
											</div>
										</div>
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
<script src="/resources/admin/js/app2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>

$("#goform2").on("click", function(){
	$("#formView").attr("action","/xmin/memberEdit")
	$("#formView").submit();
}); 

</script>


</body>

</html>