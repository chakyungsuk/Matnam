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

	<title>Matnam Service</title>

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
				<%@include file="../include/serviceNav.jsp" %>
				<!-- nav -->
			</div>
		</nav>

		<div class="main">
			<!-- header -->
			<%@include file="../include/top.jsp" %>
			<!-- header -->
			<main class="content">
				<div class="container-fluid p-0">
					<h1 class="h3 mb-3" style="text-align:center;">불만 및 건의사항 답변</h1>					
					<div class="card">
						<div class="card-header">
							<h5 class="card-title mb-0">original</h5>
						</div>
						<div class="row" style="padding: 15px 15px 15px 15px;">
							<h5 style="text-align:center;"><매칭시스템이 어떤식으로 되는건지 궁금합니다></h5>
							<a style="text-align:right; color:#939ba2;">보낸사람 : hyunjune94 </a>
							<a style="text-align:right; color:#939ba2;">2022-03-03 20:08 </a>
							<a style="text-align:center;">
				              <i class="align-middle" data-feather="edit"></i> <span class="align-middle" style="margin-right:20px;">직원 불친절</span>
				              <i class="align-middle" data-feather="edit"></i> <span class="align-middle" style="margin-right:20px;">욕설/모욕적 언어사용 신고</span>
				            </a>
				            <div class="row" style="padding: 25px 25px 25px 25px; text-align:center;">
								중앙방역대책본부(방대본)는 이날 0시 기준 신규 확진자가 5만1131명(국내 발생 5만1086명, 해외유입 45명)이라고 밝혔다. 지난달 27일부터 1주간 확진자는 7만6769명→5만7475명→5만557명→4만3282명→3만7766명→2만84명→5만1131명으로, 하루 평균 국내 발생 확진자는 4만8120.9명이다. 이날 확진자는 1주 전 화요일 확진자 8만349명보다는 2만9218명 적다. 이날 국내 신규 확진자 가운데 60살 이상 고위험군은 1만552명(20.7%)이며, 18살 이하 소아·청소년은 1만156명(19.9%)이다.
								사망자는 전날 83명보다 34명 적은 49명이다. 80살 이상이 31명(63.27%)으로 가장 많았고, 70대 8명(16.33%), 60대 5명(10.20%) 등 고령층이 다수였다. 50대 3명과 40대 2명도 코로나19로 숨졌다. 단, 이는 사망 신고 집계일 기준으로 실제 사망 일과는 차이가 있을 수 있다.
							</div>	
						</div>												
					</div>			
				</div>				
				<div class="row">
					<div class="col-12">
						<div class="card flex-fill">
							<div class="card-header">
								<h5 class="card-title mb-0">Reply</h5>
							</div>	
							<div class="input-group" style="padding: 15px 15px 15px 15px;">
								<textarea class="form-control" aria-label="With textarea" style="min-height:200px;"></textarea>
							</div>									
							<div style="padding: 0px 0px 25px 0px; text-align:center;">
								<button type="button" class="btn btn-outline-primary"	onclick="location.href='/xmin/serviceView';">전송</button>
								<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/serviceList';">취소</button>
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

</body>

</html>