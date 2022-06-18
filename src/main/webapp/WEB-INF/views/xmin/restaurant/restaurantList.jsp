<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
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
		
		table {
		  overflow: hidden;
		  text-overflow: ellipsis;
		  white-space: nowrap;
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
				<form id="restaurantList" name="restaurantList" method="post" action="/xmin/restaurantList">
				<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
				<input type="hidden" name="rowNumToshow" value="<c:out value="${vo.rowNumToShow }"/>">
				<input type="hidden" id="mnevSeq" name="mnevSeq">
					<div class="container-fluid p-0">
						<h1 class="h3 mb-3" style="text-align:center;">음식점 관리</h1>					
						<div class="card">
							<div class="card-header">
								<h5 class="card-title mb-0">검색 구분</h5>
							</div>
							<div class="row" style="padding: 10px 10px 10px 10px;">
	 							<div class="col-6 col-md-3">							
								    <select class="form-select" aria-label="Default select example" name="shSelected" id="shSelected">
										<option value="">구분</option>
										<option value="1" <c:if test="${vo.shSelected eq 1 }">selected</c:if>>이름
										<option value="2" <c:if test="${vo.shSelected eq 2 }">selected</c:if>>주소
									</select>								
								</div>
								<div class="col-6 col-md-3">
								   <input type="text" class="form-control" name="shValue" id="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색">
								</div>
								<div class="col-6 col-md-3">
									<button type="submit" class="btn btn-primary"><i class="align-middle" data-feather="search"></i></button>
									<button type="reset" class="btn btn-danger"><i class="align-middle" data-feather="refresh-cw"></i></button>
								</div>
							</div>				
						</div>			
					</div>	
				</form>
				
				<form id="" name="" method="post">
					<div class="row">
						<div class="col-12">
							<div class="card flex-fill">
								<table class="table table-hover my-0" style="text-align:center;">
									<thead style="border-bottom:none;">
										<tr>
											<th class="d-none d-xl-table-cell">no</th>
											<th>카테고리</th>
											<th>가게 이름</th>										
											<th class="d-none d-md-table-cell">주소</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}">
												<tr>
													<td class="text-center" colspan="9">등록된 음식점이 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="item" varStatus="status">
													<tr>
														<th style="width:10%;"><c:out value="${item.mnrtSeq}" /></th>
														<td style="width:20%;"><c:out value="${item.mncdName}" /></td>
														<td style="width:20%;"><c:out value="${item.mnrtName}" /></td>
														<td style="width:25%;"><c:out value="${item.mnrtAddressFull}" /></a></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>									
									</tbody>
								</table>
								<div style="padding: 25px 25px 0px 0px; text-align:right;">
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="location.href='/xmin/restaurantForm';">
										<i data-feather="plus"></i>추가
									</button>
								</div>	
								<nav aria-label="Page navigation example" style="margin-top:20px;">
									<ul class="pagination" style="justify-content: center;">
									    <c:if test="${vo.startPage gt vo.pageNumToShow}">
											<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
										</c:if>
										<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
											<c:choose>
												<c:when test="${i.index eq vo.thisPage}">
										        	<li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
												</c:when>
												<c:otherwise>             
										        	<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>     
										<c:if test="${vo.endPage ne vo.totalPages}">                
										        <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
										</c:if>   
									</ul>
								</nav>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script type="text/javascript">
		goList = function(seq) {
			$("#thisPage").val(seq);
			$("#restaurantList").submit();
		};
		
		goForm = function(seq) {
			$("#mnrtSeq").val(seq);
			$("#restaurantList").attr("action","/xmin/restaurantView");
			$("#restaurantList").submit();
		};
	</script>
</body>


</html>