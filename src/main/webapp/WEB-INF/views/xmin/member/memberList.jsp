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
<form id="xminList" name="xminList" method="post" action="/xmin/memberList">	
<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
<input type="hidden" id="mnMmSeq" name="mnMmSeq">

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
							    <select class="form-select" aria-label="Default select example" name="shmemberDelNy">
									<option value="">삭제여부</option>
									<option value="0" <c:if test="${vo.shmemberDelNy eq 0 }">selected</c:if>>보관</option>
									<option value="1" <c:if test="${vo.shmemberDelNy eq 1 }">selected</c:if>>삭제</option>
								</select>								
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example" name="shmemberGender">
									<option value="">성별</option>
									<option value="0" <c:if test="${vo.shmemberGender eq 0}">selected</c:if>>남자</option>
									<option value="1" <c:if test="${vo.shmemberGender eq 1}">selected</c:if>>여자</option>
									<option value="2" <c:if test="${vo.shmemberGender eq 2}">selected</c:if>>기타</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example" name="shmemberRank">
									<option value="">회원등급</option>
									<option value="0" <c:if test="${vo.shmemberRank eq 0 }">selected</c:if>>골드</option>
									<option value="1" <c:if test="${vo.shmemberRank eq 1 }">selected</c:if>>실버</option>
									<option value="2" <c:if test="${vo.shmemberRank eq 2 }">selected</c:if>>브론즈</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
							</div>
						</div>
						<div class="row" style="padding: 0px 10px 10px 10px;">
							<div class="col-6 col-md-3">
							    <input type="text" class="form-control" placeholder="ID 검색" aria-label="Username" aria-describedby="basic-addon1" name="shValueId" autocomplete="off" value="${vo.shValueId }">
							</div>
							<div class="col-6 col-md-3">
							    <input type="text" class="form-control" placeholder="이름 검색" aria-label="Username" aria-describedby="basic-addon1" name="shValueName" autocomplete="off" value="${vo.shValueName }">
							</div>
							<div class="col-6 col-md-3">
								<button class="btn btn-primary" type="submit"><i class="align-middle" data-feather="search"></i></button>
								<button class="btn btn-danger" type="button" id="btnLeset"><i class="align-middle" data-feather="refresh-cw"></i></button>
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
										<th>성별</th>
										<th>사용자 이름</th>										
										<th class="d-none d-md-table-cell">전화번호</th>
										<th class="d-none d-xl-table-cell">회원등급</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list}" var="item" varStatus="status">
										<tr>
											<td class="d-none d-xl-table-cell"><c:out value="${item.mnMmSeq }"/></td>
											<td><c:out value="${item.mnMmId }"/></td>
											<td>
												<c:choose>
													<c:when test="${item.mnMmGenderCd eq 0}">
														남성
													</c:when>
													<c:when test="${item.mnMmGenderCd eq 1}">
														여성
													</c:when>
													<c:when test="${item.mnMmGenderCd eq 2}">
														기타
													</c:when>
												</c:choose>
											</td>
											<td><a href="/xmin/memberView"><c:out value="${item.mnMmName }"/></a></td>										
											<td class="d-none d-md-table-cell">
												<c:set var="mnmpNumber" value="${item.mnmpNumber}"/>
												<c:choose>
										      		<c:when test="${fn:length(mnmpNumber) eq 10 }">
											            <c:out value="${fn:substring(mnmpNumber,0,3)}"/>
											            - <c:out value="${fn:substring(mnmpNumber,3,6)}"/>
											            - <c:out value="${fn:substring(mnmpNumber,6,10)}"/>
											        </c:when>	
													<c:otherwise>
											            <c:out value="${fn:substring(mnmpNumber,0,3)}"/>
											            - <c:out value="${fn:substring(mnmpNumber,3,7)}"/>
											            - <c:out value="${fn:substring(mnmpNumber,7,11)}"/>
											        </c:otherwise>
										        </c:choose>
											</td>
											<td class="d-none d-xl-table-cell">
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
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<nav aria-label="Page navigation example" style="margin-top:20px;">
								<ul class="pagination" style="justify-content: center;">
									<!-- Previous -->
									<c:if test="${vo.startPage gt vo.pageNumToShow}">
										<li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${vo.startPage - 1}'/>');">Previous</a></li>
									</c:if>
										
									<!-- Page -->    
									<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
										<c:choose>
											<c:when test="${i.index eq vo.thisPage}">  
									                <li class="page-item active"><a class="page-link" href="javascript:goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
											</c:when>
											<c:otherwise>             
									                <li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${i.index}'/>');">${i.index}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>  
									
									<!-- Next -->
									<c:if test="${vo.endPage ne vo.totalPages}">                
										<li class="page-item"><a class="page-link" href="javascript:goList('<c:out value='${vo.endPage + 1}'/>');">Next</a></li>
									</c:if>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<script>

	goList = function(seq){
		$("#thisPage").val(seq)		// form 객체를 가져온다.
		$("#xminList").submit();	// 그 가져온 객체를 전달한다.
	}

	$("#btnLeset").on("click", function(){
		var answer = confirm ("검색정보가 초기화 되며, 초기화면으로 돌아갑니다.")
			
		if(answer){
			$(location).attr("href","/xmin/memberList")
		} else {
			return false
		} 
	});
	
</script>	
	
</form>
</body>

</html>