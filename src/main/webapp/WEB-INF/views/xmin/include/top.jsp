<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

</head>

<body>

			<nav class="navbar navbar-expand navbar-light navbar-bg">
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
			</nav>
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$("#btnLogout").on("click",function(){
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
	} 
</script>

</body>
</html>