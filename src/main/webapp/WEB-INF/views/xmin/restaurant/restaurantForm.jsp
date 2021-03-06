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

	<link rel="canonical" href="https://demo-basic.adminkit.io/ui-forms.html" />

	<title>Matnam Member</title>

	<link href="/resources/admin/css/app.css" rel="stylesheet">
	<link href="/resources/user/css/style.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<link href="https://www.jqueryscript.net/demo/Material-Time-Picker-Plugin-jQuery-MDTimePicker/mdtimepicker.css" rel="stylesheet">
	
	
	<style type="text/css">
    	.hoverHi{
    		cursor:pointer;
    	}
    </style> 
</head>

<body>

<form id="formInst" name="formInst" method="post" action="/xmin/restaurantInst" enctype="multipart/form-data">

	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
		<!-- nav -->
		<%@include file="../include/restaurantNav.jsp" %>
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

					<div class="mb-3">
						<h1 class="h3 d-inline align-middle">Xmin Forms</h1>
						<a class="badge bg-dark text-white ms-2" href="upgrade-to-pro.html">????????? ????????????</a>
					</div>
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">???????????????</h5>
								</div>
								<div class="card-body">
								<label>???????????????</label>
									<input type="text" class="form-control mb-3" name="mnrtName" id="mnrtName" placeholder="" autocomplete="off">
									
									<div class="card-header">
									<h5 class="card-title mb-0">???????????????</h5>
								</div>
								<div class="card-body">
								
									<div class="input-group mb-2">
										<input type="text" class="form-control" id="mnmaZipcode" name="mnmaZipcode" readonly>
										<!-- <input type="text" class="form-control" id="ifmaZipcode" name="ifmaZipcode"> -->
										<button class="btn btn-outline-secondary" type="button" id="userAddressButton" onclick="execDaumPostcode()">????????????</button>
									</div>
							    		<input type="text" class="form-control mb-2" id="mnmaAddress1" name="mnrtAddressFull" readonly>
								    <!-- <input type="text" class="form-control mb-2" id="ifmaAddress1" name="ifmaAddress1"> -->
								    <input type="text" class="form-control mb-2" id="mnmaAddress2" name="mnmaAddress2" placeholder="????????????" required>
								   
								    <div class="row">
									    <div class="col-md-4 col-sm-4 mb-3">
				                            <input type="text" id="mnrtX" name="mnrtX" class="form-control" placeholder="x??????">
				                        </div>
				                    	<div class="col-md-4 col-sm-4">
				                            <input type="text" id="mnrtY" name="mnrtY" class="form-control" placeholder="y??????">
				                        </div>
				                     </div>
								</div>
									
									
								<div class="form-group">
			                		<div class="row">
		                        		<label>????????????</label>
				                    	<div class="col-md-4 col-sm-4 mb-3">
				                            <input type="text" id="mnrtNumber" name="mnrtNumber" class="form-control" placeholder="">
				                        </div>
		                        		<label>????????????</label>
				                    	<div class="col-md-4 col-sm-4 mb-3">
				                            <!-- <input type="time" id="mnrtTimeStart" name="mnrtTimeStart" class="form-control" placeholder=""> -->
				                            <input type="text" id="mnrtTimeStart" name="mnrtTimeStart" class="form-control timepicker"/>
				                        </div>
				                    	<div class="col-md-4 col-sm-4">
				                            <input type="text" id="mnrtTimeEnd" name="mnrtTimeEnd" class="form-control timepicker" placeholder="">
				                        </div>
		                        		<label>??????????????????</label>
				                    	<div class="col-md-4 col-sm-4 mb-3">
				                            <input type="text" id="mnrtBreakTimeStart" name="mnrtBreakTimeStart" class="form-control timepicker" placeholder="">
				                        </div>
				                    	<div class="col-md-4 col-sm-4">
				                            <input type="text" id="mnrtBreakTimeEnd" name="mnrtBreakTimeEnd" class="form-control timepicker" placeholder="">
				                        </div>
										<label for="formGroupExampleInput" class="form-label">?????? ????????????</label>
						  					<div class="col-md-4 col-sm-4 mb-3">
					                            <select class="form-control" name=mnrtFoodCateCd id="mnrtFoodCateCd">
					                                <option value="" selected>????????????</option>
					                                <option value="123">??????</option>
					                                <option value="124">??????</option>
					                                <option value="125">??????,?????????</option>
					                                <option value="126">?????????,???,??????</option>
					                                <option value="127">??????</option>
					                                <option value="128">??????</option>
					                                <option value="129">?????????,??????</option>
					                                <option value="130">?????????</option>
					                                <option value="131">??????,??????</option>
					                                <option value="132">??????</option>
					                                <option value="133">???,???</option>
					                                <option value="134">?????????</option>
					                                <option value="135">???????????????</option>
					                            </select>
					                        </div>
			                        	<label for="formGroupExampleInput" class="form-label">?????????</label>
					  					<div class="col-md-4 col-sm-4">
				                            <select class="form-control" name="mnrtHolidayCd" id="mnrtHolidayCd">
				                                <option value="" selected>????????????</option>
				                                <option value="136">???</option>
				                                <option value="137">???</option>
				                                <option value="138">???</option>
				                                <option value="139">???</option>
				                                <option value="140">???</option>
				                                <option value="141">???</option>
				                                <option value="142">???</option>
				                                <option value="143">????????????</option>
				                            </select>
										</div>
			                        </div>
										
									</div>
									
								</div>
							</div>
						</div>
						

						<div class="col-12 col-lg-6">
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">????????????</h5>
								</div>
								<div class="card-body text-center" id="image_container">
									<label for="file" class="hoverHi">
										<img id="image_hide" src="/resources/admin/img/avatars/avatar-4.jpg" class="img-fluid rounded-circle mb-2" width="180" height="180" />
										<input class="form-control" type="file" name="file" id="file" accept="jpeg,png,gif" style="display:none;" onchange="setThumbnail(event, image_container, image_hide);"/> 									
									</label>									
								</div>
									<label style="text-align: center;">????????? ?????? ????????? ??????????????????</label><br>
							</div>
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">????????????</h5>
								</div>
								<div class="card-body text-center" id="image_container_under">
									<label for="file1" class="hoverHi">
										<img id="image_hide_under" src="/resources/admin/img/avatars/avatar-4.jpg" class="img-fluid rounded-circle mb-2" width="180" height="180" />
										<input class="form-control" type="file" name="file1" id="file1" accept="jpeg,png,gif" style="display:none;" onchange="setThumbnail(event, image_container_under, image_hide_under);"/> 									
									</label>									
								</div>
									<label style="text-align: center;">????????? ?????? ????????? ??????????????????</label><br>
							</div>
							
							
							<div class="card">
								<div class="card-header">
									<h5 class="card-title mb-0">????????????</h5>
								</div>
								<div class="card-body">
									<div class="row">
									 	<label for="exampleFormControlTextarea1" class="form-label"></label>
						  				<textarea class="form-control" id="exampleFormControlTextarea1" name="mnrtText" rows="500" placeholder="???????????? ?????? ????????? ??????????????????."></textarea>

									</div>
									<div class="btn_area text-center" style="margin-top: 50px;">
										<button type="button" class="btn btn-outline-secondary"	onclick="location.href='/xmin/memberList';">??????</button>	
										<button type="submit" class="btn btn-outline-primary" name="btnSubmit" id="btnSubmit">??????</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
			<%@ include file="/WEB-INF/views/xmin/include/footer.jsp"%>
		</div>
	</div>
</form>		
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f63a1dcbbb1e9abb694eaf03908b395c&libraries=services"></script>
<script src="/resources/admin/js/app.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.min.js"></script>
<script src="https://www.jqueryscript.net/demo/Material-Time-Picker-Plugin-jQuery-MDTimePicker/mdtimepicker.js"></script>

<script>
<!-- ??????S -->
 $("#btnSubmit").on("click", function(){
	var answer = confirm("?????? ???????????????????");
	
	if(answer){
		$("#btnSubmit").attr("action", "/xmin/restaurantInst");
		$("#btnSubmit").submit(); 
	} else {
		return false;
	}

}); 
<!-- ??????E -->

<!-- ???????????? ????????? S -->
 function setThumbnail(event, thisDiv, thisImg) { 
	var reader = new FileReader(); 
	reader.onload = function(event) { 
		
			var img = document.createElement("img"); 
			img.width = 180;
		    img.height = 180;
			img.setAttribute("src", event.target.result);
			$("#"+thisImg.id).hide();
			document.querySelector("div#"+thisDiv.id).appendChild(img); 
			
		}; 
			reader.readAsDataURL(event.target.files[0]); 
		}  
<!-- ???????????? ????????? E -->

<!-- ??????S -->
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
            var addr = ''; // ?????? ??????
            var extraAddr = ''; // ???????????? ??????

            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                addr = data.roadAddress;
            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                addr = data.jibunAddress;
            }

            // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
            if(data.userSelectedType === 'R'){
                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // ???????????? ??????, ??????????????? ?????? ????????????.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
              /*   if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                } */
                // ????????? ??????????????? ?????? ????????? ?????????.
                //document.getElementById("ifmaAddress3").value = extraAddr;
            
            } else {
               // document.getElementById("ifmaAddress3").value = '';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            document.getElementById('mnmaZipcode').value = data.zonecode;
            document.getElementById("mnmaAddress1").value = addr;
            // ????????? ???????????? ????????? ????????????.
            document.getElementById("mnmaAddress2").focus();
            
            
        	/* lat and lng from address s */
			var geocoder = new daum.maps.services.Geocoder();
        	
			geocoder.addressSearch(addr, function(result, status) {
				if (status === daum.maps.services.Status.OK) {
					document.getElementById("mnrtX").value=result[0].y;
					document.getElementById("mnrtY").value=result[0].x;
					
				}
			});
			/* lat and lng from address e */
        }
    }).open();
}
$(document).ready(function(){
	$('.timepicker').mdtimepicker({
		timeFormat:'hh:mm',
		format:'hh:mm'
	}); 
});
<!-- ??????E -->
</script>

</body>

</html>
