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

	<title>Matnam Event</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	
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
				<%@include file="../include/eventNav.jsp" %>
				<!-- nav -->
			</div>
		</nav>

		<div class="main">
			<!-- header -->
			<%@include file="../include/top.jsp" %>
			<!-- header -->
		<form method="post" action="/xmin/eventInst">
			<main class="content">
				<div class="container-fluid p-0">
					<h1 class="h3 mb-3" style="text-align:center;">이벤트 등록</h1>					
					<div class="card">
						<div class="row" style="padding: 15px 15px 15px 15px;">
							<div class="col-2">					
							</div>
							<div class="col-8">
								<input type="text" class="form-control" id="mnevTitle" name="mnevTitle" placeholder="title">	
							</div>
							<div class="col-2">
							</div>
						</div>
						<div class="row" style="padding: 0px 10px 10px 10px;">
							<div class="col-3">
							</div>
							<div class="col-3">							
						  		<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">시작일</span>
									<input type="text" class="form-control" id="datepickerS" name="mnevStartDate" placeholder="" aria-label="" aria-describedby="basic-addon1">
								</div>
							</div>
							<div class="col-3">
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">종료일</span>
									<input type=text class="form-control" id="datepickerE" name="mnevEndDate" placeholder="" aria-label="" aria-describedby="basic-addon1">
								</div>
							</div>
							<div class="col-3">
							</div>
						</div>													
					</div>			
				</div>				
				<div class="row">
					<div class="col-12">
						<div class="card flex-fill">
							<div class="card-header">
								<h5 class="card-title mb-0">이벤트 내용</h5>
							</div>							
							<div class="input-group" style="padding: 15px 15px 15px 15px;">
								<textarea class="form-control" id="mnevContent" name="mnevContent" aria-label="With textarea" style="min-height:200px;"></textarea>
							</div>		
							<div style="padding: 0px 0px 25px 0px; text-align:center;">
								<button type="submit" class="btn btn-outline-primary"	onclick="location.href='/xmin/eventView';">등록</button>
								<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/eventList';">취소</button>
							</div>	
						</div>
					</div>
				</div>
			</main>
		</form>	
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>

	<script src="/resources/admin/js/app.js"></script>
	<script src="/resources/admin/js/app2.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<script type="text/javascript">	
		$(document).ready(function(){
			 $("#datepickerS").datepicker();
		}); 
	
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
		});
		
		$(document).ready(function(){
			 $("#datepickerE").datepicker();
		}); 
	
		$.datepicker.setDefaults({
		    dateFormat: 'yy-mm-dd',
		    prevText: '이전 달',
		    nextText: '다음 달',
		    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
		    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
		    showMonthAfterYear: true,
		    yearSuffix: '년'
		});
	</script>
</body>

</html>