<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<!-- top -->
	<%@include file="../include/top.jsp" %>
	<!-- top -->
	<!-- SubHeader =============================================== -->
	<section class="parallax-window" id="short" data-parallax="scroll" data-image-src="img/sub_header_short.jpg" data-natural-width="1400" data-natural-height="350">
	    <div id="subheader">
	        <div id="sub_content">
	            <h1>24 results in your zone</h1>
	            <div><i class="icon_pin"></i> 135 Newtownards Road, Belfast, BT4 1AB</div>
	        </div><!-- End sub_content -->
	    </div><!-- End subheader -->
	</section><!-- End section -->
	<!-- End SubHeader ============================================ -->
    <div class="collapse" id="collapseMap">
		<div id="map" class="map"></div>
	</div><!-- End Map -->

<!-- Content ================================================== -->
<div class="container margin_60_35">
	<div class="row">
    
		<div class="col-lg-3">
			<div id="filters_col">
				<div class="collapse show" id="collapseFilters">
					<div class="filter_type">
                    	<h6>Distance</h6>
                        <input type="text" id="range" value="" name="range">						
					</div>
					<div class="filter_type">
						<h6>Rating</h6>
						<ul>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:red; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
							<li><label><input type="checkbox" class="icheck">
							<i class="icon_heart" style="color:red;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i><i class="icon_heart" style="color:#E6E6E6; padding-left:3px;"></i>
							</label></li>
						</ul>
					</div>
					<div class="filter_type">
						<h6>친구목록</h6>
						<ul>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>김승태</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>차경석</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>한예린</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>강현준</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>홍길동</li>
							<li style="margin-bottom:3px;"><i class="color_1" style="float:left; margin-right:10px;"></i>아무개</li>
						</ul>
					</div>					
					<div class="filter_type">
						<h6>Options</h6>
						<ul class="nomargin">
							<li><label><input type="checkbox" class="icheck">Delivery</label></li>
							<li><label><input type="checkbox" class="icheck">Take Away</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 10Km</label></li>
							<li><label><input type="checkbox" class="icheck">Distance 5Km</label></li>
						</ul>
					</div>
				</div><!--End collapse -->
			</div><!--End filters col-->
		</div><!--End col-md -->
        
		<div class="col-lg-9">  
			<div id="tools" style="border:none">
				<div class="row">
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>도시</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>							
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>상세 도시</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>							
					<div class="col-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>상세 도시2</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>											
					</div>					
					<div class="col-3" style="text-align:center;">
						<a href="detail_page.html" class="btn_1" style="text-align:center;">검색<i class="icon-search"></i></a>
						<a href="detail_page.html" class="btn_1" style="text-align:center;">초기화<i class="icon-refresh"></i></a>	
					</div>					
				</div>					
        	</div>	
			<div class="strip_list wow fadeIn" data-wow-delay="0.1s">
				<div class="row">
					<div class="col-md-9" style="cursor: pointer;" onclick="location.href='/user/friendDetail';">
						<div class="desc">
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 37
							</div>
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<h3>차경석 님</h3>
							<div class="type">
								15세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>					 
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="#" class="btn_1" data-bs-toggle="modal" data-bs-target="#friendModal">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.2s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 65
							</div>
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<h3>한예린 님</h3>
							<div class="type">
								26세 / 여성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>중식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.3s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 22
							</div>
							<h3>김승태 님</h3>
							<div class="type">
								45세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일산<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>한식<i class="icon_check_alt2 ok"></i></li>
								<li>일식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->            
            
			<div class="strip_list wow fadeIn" data-wow-delay="0.4s">
				<div class="row">
					<div class="col-md-9">
						<div class="desc">
							<div class="thumb_strip">
								<a href="detail_page.html"><img src="img/thumb_restaurant.jpg" alt=""></a>
							</div>
							<div class="rating">
								<i class="icon_heart" style="color:red;"></i> x 27
							</div>
							<h3>강현준 님</h3>
							<div class="type">
								29세 / 남성
							</div>
							<div class="location">
								경기도 고양시 일산서구 주엽2동 222-2222
							</div>
							<ul>
								<li>서울<i class="icon_check_alt2 ok"></i></li>
								<li>일산<i class="icon_check_alt2 ok"></i></li>
								<li>양식<i class="icon_check_alt2 ok"></i></li>
								<li>한식<i class="icon_check_alt2 ok"></i></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3">
						<div class="go_to">
							<div>
								<a href="" class="btn_1">친구요청</a>
							</div>
						</div>
					</div>
				</div><!-- End row-->
			</div><!-- End strip_list-->
            
            <a href="#0" class="load_more_bt wow fadeIn" data-wow-delay="0.2s">Load more...</a>  
		</div><!-- End col-md-9-->
        
	</div><!-- End row -->
</div><!-- End container -->
<!-- End Content =============================================== -->

<%@include file="../include/footer.jsp" %>

	<!-- Modal -->
	
	<!-- friendModal -->
	<div class="modal fade" id="friendModal" tabindex="-1" aria-labelledby="friendModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="friendModalLabel">친구 추가</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form>
						<div class="mb-3">
							<label for="recipient-name" class="col-form-label">인사말을 남겨보세요!</label>
							<textarea class="form-control" id="message-text" style="height:150px;"></textarea>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Send</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end friendModal -->
	
	<!-- end Modal -->
    
<!-- COMMON SCRIPTS -->
<script src="/resources/user/js/jquery-3.6.0.min.js"></script>
<script src="/resources/user/js/common_scripts_min.js"></script>
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/assets/validate.js"></script>
<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
<script src="/resources/common/bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>

<!-- SPECIFIC SCRIPTS -->
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="/resources/user/js/map.js"></script>
<script src="/resources/user/js/infobox.js"></script>
<script src="/resources/user/js/ion.rangeSlider.js"></script>
<script>
    $(function () {
		 'use strict';
        $("#range").ionRangeSlider({
            hide_min_max: true,
            keyboard: true,
            min: 0,
            max: 15,
            from: 0,
            to:5,
            type: 'double',
            step: 1,
            prefix: "Km ",
            grid: true
        });
    });
</script>
</body>
</html>