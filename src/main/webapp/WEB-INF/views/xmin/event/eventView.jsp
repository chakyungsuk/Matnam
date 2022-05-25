<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

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
		<form id="eventList" name="eventList" method="post">
			<main class="content">
				<input type="hidden" id="mnevSeq" name="mnevSeq">
				<div class="container-fluid p-0">
					<h1 class="h3 mb-3" style="text-align:center;">이벤트</h1>					
					<div class="card">
						<div class="row" style="padding: 15px 15px 15px 15px;">
							<div class="col-2">					
							</div>
							<div class="col-8" style="text-align:center;">
								<h2><c:out value="${item.mnevTitle}" /></h2>	
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
									<input type="text" class="form-control" value="<c:out value="${item.mnevStartDate}" />" aria-label="" aria-describedby="basic-addon1" readonly>
								</div>
							</div>
							<div class="col-3">
								<div class="input-group mb-3">
									<span class="input-group-text" id="basic-addon1">종료일</span>
									<input type="text" class="form-control" value="<c:out value="${item.mnevEndDate}" />" aria-label="" aria-describedby="basic-addon1" readonly>
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
							<div style="padding: 15px 15px 15px 15px;">
								<c:out value="${item.mnevContent}" />
							</div>		
							<div style="padding: 15px 15px 15px 15px; text-align:right; color:#939ba2;">							
								<a>등록일 : 2022-03-03 20:08 </a>
							</div>
							<div style="padding: 0px 0px 25px 0px; text-align:center;">
								<button type="button" class="btn btn-outline-primary" onclick="location.href='javascript:goEdit(<c:out value="${item.mnevSeq}"/>)';">수정</button>
								<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
									삭제
								</button>
								<button type="button" class="btn btn-outline-secondary" onclick="location.href='/xmin/eventList';">목록</button>										
								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="staticBackdropLabel">데이터 삭제</h5>
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
											 <c:out value="${item.mnevTitle}"/>해당 이벤트를 삭제하시겠습니까?
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal" onclick="location.href='eventDele?mnevSeq=<c:out value="${item.mnevSeq}"/>';">삭제</button>
												<button type="button" class="btn btn-outline-secondary" onclick="location.href='/xmin/eventView?mnevSeq=<c:out value="${item.mnevSeq}"/>';">취소</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal -->
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
	goEdit = function(seq) {
		$("#mnevSeq").val(seq);
		$("#eventList").attr("action","/xmin/eventEdit");
		$("#eventList").submit();
	};
</script>
</body>

</html>