<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
					<h1 class="h3 mb-3" style="text-align:center;">????????? ??????</h1>					
					<div class="card">
						<div class="card-header">
							<h5 class="card-title mb-0">?????? ??????</h5>
						</div>
						<div class="row" style="padding: 10px 10px 10px 10px;">
							<div class="col-6 col-md-3">							
							    <input type="text" class="form-control" placeholder="?????????" aria-label="Username" aria-describedby="basic-addon1">						
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example">
									<option selected>??????</option>
									<option value="1">8??? ??????</option>
									<option value="2">?????????</option>
									<option value="3">??????</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
							    <select class="form-select" aria-label="Default select example">
									<option selected>????????????</option>
									<option value="1">???</option>
									<option value="2">???</option>
								</select>
							</div>
							<div class="col-6 col-md-3">
								<select class="form-select" aria-label="Default select example">
									<option selected>????????????</option>
									<option value="1">???</option>
									<option value="2">???</option>
								</select>
							</div>
						</div>
						<div class="row" style="padding: 0px 10px 10px 10px;">
							<div class="col-6 col-md-3">
							
							</div>
							<div class="col-6 col-md-3">
							
							</div>
							<div class="col-6 col-md-3">

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
								<h5 class="card-title mb-0">?????? ??????</h5>
							</div>
							<table class="table table-hover my-0" style="text-align:center;">
								<thead style="border-bottom:none;">
									<tr>
										<th>??????</th>
										<th>?????????</th>
										<th>?????????</th>
										<th>??????</th>										
										<th>????????????</th>
										<th>????????????</th>
									</tr>
								</thead>
								
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}">
											???????????? ????????????.
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="item" varStatus="status">
												<tr>
													<td><c:out value="${item.mnsvSeq}"/></td>
													<td><c:out value="${item.mnMmId}"/></td>
													<td><fmt:formatDate value="${item.mnsvReceiptDate}" pattern="yyyy-MM-dd"/></td>
													<td><a href="/xmin/serviceView?mnMmSeq=<c:out value="${item.mnMmSeq}"/>&mnsvSeq=<c:out value="${item.mnsvSeq}"/>"><c:out value="${item.mnsvTitle}"/></a></td>
													
														<c:choose>
															<c:when test="${item.mnsvTypeCd eq '14'}">
																	<td><span class="badge bg-danger">?????? ????????? / ?????? ??????</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq '15'}">
																	<td><span class="badge bg-danger">??????/????????? ???????????? ??????</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq '16'}">
																	<td><span class="badge bg-danger">???????????? ???????????? ??????</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq 17}">
																	<td><span class="badge bg-danger">????????? ????????? ?????? ??????????????? ????????? ?????? ??????</span> </td>
															</c:when>
															<c:when test="${item.mnsvTypeCd eq 18}">
																	<td><span class="badge bg-danger">????????? ??????????????? ?????? ??????</span> </td>
															</c:when>
															<c:otherwise>
																<td>????????????????????????</td>
															</c:otherwise>
														</c:choose>
														<c:choose>
															<c:when test="${item.mnsvDoneNy eq 0}">
																<td>?????????</td>
															</c:when>
															<c:when test="${item.mnsvDoneNy eq 1}">
																<td>????????????</td>
															</c:when>
														</c:choose>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							
							<!-- <nav aria-label="Page navigation example" style="margin-top:20px;">
								<ul class="pagination" style="justify-content: center;">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a></li>
								</ul>
							</nav> -->
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