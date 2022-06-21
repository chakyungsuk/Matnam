<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   <!--  -- c:out -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- -- 날짜나 시간 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<fmt:formatDate value="${item.mnevStartDate }" pattern="yyyy-MM-dd"/>
<fmt:formatDate value="${item.mnevEndDate }" pattern="yyyy-MM-dd HH"/>
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

	<title>Matnam xdmin</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
	<style>
		.card-header{
			padding: 15px 0px 0px 15px;
			background-color:white;
			border-bottom:none;
		}
		
		a:link {
			text-decoration : none;
		}
	</style>
	
	
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<!-- nav -->				
				<%@include file="../include/nav.jsp" %>
				<!-- nav -->
			</div>
		</nav>

		<div class="main">
			<!-- header -->
			<%@include file="../include/top.jsp" %>
			<!-- header -->
			<%-- <nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
		          <i class="hamburger align-self-center"></i>
		        </a>
				<form id="formList" name="formList" method="post" action="/xmin/memberView">
					<input type="hidden" id="mnMmSeq" name="mnMmSeq">
				</form>
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
										<div class="row g-0 align-items-center" style="text-align:center;">
											<div class="col-12">
												<div class="text-dark"><i class="text-warning" data-feather="bell"></i>신규 문의</div>
												<div class="text-muted small mt-1">2개의 새로운 문의가 접수되었습니다.</div>
											</div>
										</div>
									</a>
									<a href="#" class="list-group-item">
										<div class="row g-0 align-items-center" style="text-align:center;">
											<div class="col-12">
												<div class="text-dark"><i class="text-success" data-feather="user-plus"></i>신규 회원</div>
												<div class="text-muted small mt-1">3명의 회원이 신규가입하였습니다.</div>
											</div>
										</div>
									</a>
								</div>
							</div>
						</li>
						<li>
						<c:choose>
	        		<c:when test="${not empty sessSeq}">
	        			<c:if test="${sessAdminNy eq 1}">
	        				
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle d-none d-sm-inline-block" href="#" data-bs-toggle="dropdown">
				              <img src="/resources/admin/img/avatars/avatar.jpg" class="avatar img-fluid rounded me-1" alt="Charles Hall" /> <span class="text-dark"><c:out value="${sessName}"></c:out> 님</span>
				            </a>
							<div class="dropdown-menu dropdown-menu-end">
								<a class="dropdown-item" href="javascript:goForm(${sessSeq})"><i class="align-middle me-1" data-feather="user"></i> Profile</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" id="btnLogout" onclick="btnLogout();"><i class="align-middle me-1" data-feather="log-out"></i> Log out</a>
							</div>
						</li>
	        			</c:if>						
	        		</c:when>
	       		</c:choose>
						</li>						
						
					</ul>
				</div>
			</nav> --%>

			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3" style="text-align:center;"><strong>사이트 관리</strong></h1>					
					<div class="row">
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-2 order-xxl-3">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">사용자 건의사항</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="py-3">
											<div class="chart chart-xs">
												<canvas id="chartjs-dashboard-pie"></canvas>
											</div>
										</div>

										<table class="table mb-0">
											<tbody>
												<tr>
													<td>기타불만</td>
													<td class="text-end">43</td>
												</tr>
												<tr>
													<td>사용자 매칭에대한 질의</td>
													<td class="text-end">21</td>
												</tr>
												<tr>
													<td>직원 불친절</td>
													<td class="text-end">16</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-12 col-xxl-6 d-flex order-3 order-xxl-2">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0">음식점 관리</h5>
								</div>
								<div class="card-body px-4">
									<img src="/resources/admin/img/photos/map.JPG" style="height:350px; width:100%;">
								</div>
							</div>
						</div>
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">Calendar</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="chart">
											<div id="datetimepicker-dashboard"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-12 col-lg-8 col-xxl-9 d-flex">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">최근등록 회원</h5>
								</div>
								<table class="table table-hover my-0" style="text-align:center;">
									<thead>
										<tr>
											<th class="d-none d-xl-table-cell">no</th>
											<th>아이디</th>
											<th>사용자 이름</th>										
											<th class="d-none d-md-table-cell">전화번호</th>
											<th class="d-none d-md-table-cell">등급</th>
											<th class="d-none d-xl-table-cell">등록일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${list}" var="item" varStatus="status">
											<tr>
												<td class="d-none d-xl-table-cell"><c:out value="${item.mnMmSeq }"/></td>
												<td class="d-none d-xl-table-cell"><c:out value="${item.mnMmId }"/></td>
												<td class="d-none d-xl-table-cell"><c:out value="${item.mnMmName }"/></td>										
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
												<td class="d-none d-md-table-cell">
													<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd"/>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="col-12 col-lg-4 col-xxl-3 d-flex">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h5 class="card-title mb-0">최근등록된 이벤트</h5>
								</div>
								<table class="table table-hover my-0" style="text-align:center;">
									<thead>
										<tr>
											<th>이벤트</th>										
											<th class="d-none d-md-table-cell"><small>시작일</small></th>
											<th class="d-none d-md-table-cell"><small>마감일</small></th>
										</tr>
									</thead>
									<tbody>
									<c:forEach items="${listEvent}" var="item" varStatus="status">
										<tr>
											<td><small><c:out value="${item.mnevTitle }"/></small></td>
											<td class="d-none d-xl-table-cell"><small>
												<fmt:formatDate value="${item.mnevStartDate }" pattern="yyyy-MM-dd"/>		
											</small></td>
											<td class="d-none d-xl-table-cell"><small>
												<fmt:formatDate value="${item.mnevEndDate }" pattern="yyyy-MM-dd"/>
											</small></td>
										</tr>
									</c:forEach>	
									</tbody>
								</table>
							</div>
						</div>
					</div>

				</div>
			</main>
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>

	<script src="/resources/admin/js/app.js"></script>
	<script src="/resources/admin/js/app2.js"></script>
	<!-- <script src="/resources/user/js/jquery-3.6.0.min.js"></script> -->

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var ctx = document.getElementById("chartjs-dashboard-line").getContext("2d");
			var gradient = ctx.createLinearGradient(0, 0, 0, 225);
			gradient.addColorStop(0, "rgba(215, 227, 244, 1)");
			gradient.addColorStop(1, "rgba(215, 227, 244, 0)");
			// Line chart
			new Chart(document.getElementById("chartjs-dashboard-line"), {
				type: "line",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "Sales ($)",
						fill: true,
						backgroundColor: gradient,
						borderColor: window.theme.primary,
						data: [
							2115,
							1562,
							1584,
							1892,
							1587,
							1923,
							2566,
							2448,
							2805,
							3438,
							2917,
							3327
						]
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 1000
							},
							display: true,
							borderDash: [3, 3],
							gridLines: {
								color: "rgba(0,0,0,0.0)"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Pie chart
			new Chart(document.getElementById("chartjs-dashboard-pie"), {
				type: "pie",
				data: {
					labels: ["Chrome", "Firefox", "IE"],
					datasets: [{
						data: [4306, 3801, 1689],
						backgroundColor: [
							window.theme.primary,
							window.theme.warning,
							window.theme.danger
						],
						borderWidth: 5
					}]
				},
				options: {
					responsive: !window.MSInputMethodContext,
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					cutoutPercentage: 75
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-dashboard-bar"), {
				type: "bar",
				data: {
					labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
					datasets: [{
						label: "This year",
						backgroundColor: window.theme.primary,
						borderColor: window.theme.primary,
						hoverBackgroundColor: window.theme.primary,
						hoverBorderColor: window.theme.primary,
						data: [54, 67, 41, 55, 62, 45, 55, 73, 60, 76, 48, 79],
						barPercentage: .75,
						categoryPercentage: .5
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							gridLines: {
								display: false
							},
							stacked: false,
							ticks: {
								stepSize: 20
							}
						}],
						xAxes: [{
							stacked: false,
							gridLines: {
								color: "transparent"
							}
						}]
					}
				}
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var markers = [{
					coords: [31.230391, 121.473701],
					name: "Shanghai"
				},
				{
					coords: [28.704060, 77.102493],
					name: "Delhi"
				},
				{
					coords: [6.524379, 3.379206],
					name: "Lagos"
				},
				{
					coords: [35.689487, 139.691711],
					name: "Tokyo"
				},
				{
					coords: [23.129110, 113.264381],
					name: "Guangzhou"
				},
				{
					coords: [40.7127837, -74.0059413],
					name: "New York"
				},
				{
					coords: [34.052235, -118.243683],
					name: "Los Angeles"
				},
				{
					coords: [41.878113, -87.629799],
					name: "Chicago"
				},
				{
					coords: [51.507351, -0.127758],
					name: "London"
				},
				{
					coords: [40.416775, -3.703790],
					name: "Madrid "
				}
			];
			var map = new jsVectorMap({
				map: "world",
				selector: "#world_map",
				zoomButtons: true,
				markers: markers,
				markerStyle: {
					initial: {
						r: 9,
						strokeWidth: 7,
						stokeOpacity: .4,
						fill: window.theme.primary
					},
					hover: {
						fill: window.theme.primary,
						stroke: window.theme.primary
					}
				},
				zoomOnScroll: false
			});
			window.addEventListener("resize", () => {
				map.updateSize();
			});
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
			var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
			document.getElementById("datetimepicker-dashboard").flatpickr({
				inline: true,
				prevArrow: "<span title=\"Previous month\">&laquo;</span>",
				nextArrow: "<span title=\"Next month\">&raquo;</span>",
				defaultDate: defaultDate
			});
		});
		
		/* $("#btnLogout").on("click",function(){
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
		
		goForm = function(seq){
			$("#mnMmSeq").val(seq);
			$("#formList").attr("action","/xmin/memberView");
			$("#formList").submit();
		}  */
	</script>

</body>

</html>