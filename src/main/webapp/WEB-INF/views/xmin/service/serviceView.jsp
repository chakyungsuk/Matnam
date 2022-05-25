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
				<form id="form" name="form" method="get" action="">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3" style="text-align:center;">불만 및 건의사항</h1>					
						<div class="card">
							<div class="row" style="padding: 15px 15px 15px 15px;">
								<h5 style="text-align:center;"><c:out value="${rt.mnsvTitle}"/></h5>
								<a style="text-align:right; color:#939ba2;">보낸사람 : <c:out value="${rt.mnsvTitle}"/> </a>
								<a style="text-align:right; color:#939ba2;">2022-03-03 20:08 </a>
								<a style="text-align:center;">
					              <i class="align-middle" data-feather="edit"></i> <span class="align-middle" style="margin-right:20px;">직원 불친절</span>
					              <i class="align-middle" data-feather="edit"></i> <span class="align-middle" style="margin-right:20px;">욕설/모욕적 언어사용 신고</span>
					            </a>
							</div>												
						</div>			
					</div>				
					<div class="row">
						<div class="col-12">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">건의 사항</h5>
								</div>							
								<div class="row" style="padding: 25px 25px 25px 25px; text-align:center;">
								<c:out value="${rt.mnsvDesc}"/>
								</div>	
								<div style="padding: 25px 25px 25px 0px; text-align:right;">
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
										<i data-feather="trash"></i>삭제
									</button>										
									<!-- Modal -->
									<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" style="text-align:center;">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="staticBackdropLabel">데이터 삭제</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
												 해당 건의사항을 삭제하시겠습니까?
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal" onclick="location.href='/xmin/deleteService?mnMmSeq=<c:out value="${rt.mnMmSeq}"/>&mnsvSeq=<c:out value="${rt.mnsvSeq}"/>';">삭제</button>
													<button type="button" class="btn btn-outline-secondary" onclick="location.href='/xmin/serviceView';">취소</button>
												</div>
											</div>
										</div>
									</div>
								</div>	
								<div style="padding: 0px 0px 25px 0px; text-align:center;">
									<button type="button" class="btn btn-outline-primary"	onclick="location.href='/xmin/serviceReply?mnMmSeq=<c:out value="${rt.mnMmSeq}"/>&mnsvSeq=<c:out value="${rt.mnsvSeq}"/>';">답변</button>
									<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/serviceList';">목록</button>
								</div>	
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="col-12">
							<div class="card flex-fill">
								<div class="card-header">
									<h5 class="card-title mb-0">Reply</h5>
									<c:out value="${rtReply.mnsrDesc}"/>
								</div>							
								<div class="row" style="padding: 25px 25px 25px 25px; text-align:center;">
								
								</div>	
							</div>
						</div>
					</div>
				</form>
			</main>
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>

	<script src="/resources/admin/js/app.js"></script>
	<script src="/resources/admin/js/app2.js"></script>

</body>

</html>