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

	<title>Matnam Restaurant</title>

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
				<%@include file="../include/restaurantNav.jsp" %>
				<!-- nav -->
			</div>
		</nav>

		<div class="main">
			<!-- header -->
			<%@include file="../include/top.jsp" %>
			<!-- header -->
			<main class="content">	
				<h1 class="h3 mb-3" style="text-align:center;">음식점 관리</h1>	
				<div class="row">
						<div class="col-12 col-md-3 col-xxl-3 d-flex" style="height:350px;">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h5 class="card-title mb-0">검색 구분</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="col-12" style="margin-bottom:10px;">
										    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
										</div>
										<div class="col-12" style="margin-bottom:10px;">
										    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
										</div>
										<div class="col-12" style="margin-bottom:20px;">
										    <input type="text" class="form-control" placeholder="검색" aria-label="Username" aria-describedby="basic-addon1">
										</div>
										<div class="col-12" style="text-align:right;">
											<button class="btn btn-primary"><i class="align-middle" data-feather="search"></i></button>
											<button class="btn btn-danger"><i class="align-middle" data-feather="refresh-cw"></i></button>
										</div>			
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-9 col-xxl-9 d-flex">
							<div class="card flex-fill w-100">
								<div class="card-header">
									<h5 class="card-title mb-0">지도</h5>
								</div>
								<div class="card-body px-4">
									<img src="/resources/admin/img/photos/map2.jpg" style="height:500px; width:100%">
								</div>
							</div>
						</div>						
					</div>			
				<div class="row">
					<div class="col-12">
						<div class="card flex-fill">
							<div class="card-header">
								<h5 class="card-title mb-0">음식점 정보</h5>
							</div>
							<table class="table table-hover my-0" style="text-align:center;">
								<thead style="border-bottom:none;">
									<tr>
										<th class="d-none d-xl-table-cell">no</th>
										<th>카테고리</th>
										<th>가게 이름</th>										
										<th class="d-none d-md-table-cell">주소</th>
										<th class="d-none d-xl-table-cell">비고</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="d-none d-xl-table-cell">1</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">2</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">3</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">4</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">5</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">6</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">7</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
									</tr>
									<tr>
										<td class="d-none d-xl-table-cell">8</td>
										<td>양식</td>
										<td>이모네 곱창</td>
										<td class="d-none d-md-table-cell">경기도 고양시 일산서구 ㅁㄴㅇㅁㄻㄻㄴ</td>
										<td class="d-none d-xl-table-cell">Vanessa Tucker</td>
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