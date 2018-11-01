<!-- 백엔드
-상단에 검색창에서 검색하면 하단에 원하는내용 AJAX비동기로 조회되는 것 (가능하면)
-마감임박시간 구현

프론트엔드
- 검색창 DIV 버튼부분 해상도깨짐 수정
- 모바일환경에서 해상도 깨짐 수정
- 경매보기 화면에서 디비가 실제적 데이터로 바꿔준후 홈화면에 가짜데이터 진짜로바꿀것
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<!--pro-->
<html>
<head>


<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	$(function() {
		$(".zeta-menu li").hover(function() {
			$('ul:first', this).show();
		}, function() {
			$('ul:first', this).hide();
		});
		$(".zeta-menu>li:has(ul)>a").each(function() {
			$(this).html($(this).html() + ' &or;');
		});
		$(".zeta-menu ul li:has(ul)").find("a:first").append(
				"<p style='float:right;margin:-3px'>&#9656;</p>");
	});
</script>

<!-- 롤오버드랍다운 css & script -->
<style>
#home_container {
	background-color: #f6f6f6;
}

#home-category_drop-down {
	display: inline-block;
	width: 100px;
}

#home_search-bar {
	z-index: 1;
	display: inline-block;
	position: absolute;
	left: 100px;
	right: 0;
}

.home-search_category-drop-down {
	z-index: 3;
}

.home-search_category-drop-down>div {
	z-index: 3;
}

.home_img-slide {
	z-index: 1;
}

#home-img-slide_alert--right-top {
	width: 300px;
	position: absolute;
	top: 20px;
	right: 20px;
}

#home-img-slide_button span {
	font-size: 3em;
}

#home-img-slide_button p {
	margin-top: 250px;
}

#home-content_title-line {
	margin-top: 60px;
}

#home-content_left-img--tr01 {
	height: 100px;
}

#home-content_left-img--td01 {
	width: 400px;
}

#home-content_left-img--td01>div {
	overflow: hidden;
	height: 300px;
	width: 400px;
}

#home-content_left-img--td01>div>img {
	width: auto;
	height: 300px;
}

#home-content_left-img--td02 {
	width: 160px;
}

#home-content_left-img--td02>div {
	width: 160px;
	height: 100px;
	overflow: hidden;
}

#home-content_left-img--td02>div>img {
	width: 160px;
	height: auto;
}

#home-content_left-img--tr02 {
	height: 100px;
}

#home-content_left-img--tr02 div {
	width: 160px;
	height: 100px;
	overflow: hidden;
}

#home-content_left-img--tr02 div>img {
	width: 160px;
	height: auto;
}

#home-content_left-img--tr03 {
	height: 100px;
}

#home-content_left-img--tr03 div {
	width: 160px;
	height: 100px;
	overflow: hidden;
}

#home-content_left-img--tr03 div>img {
	width: 160px;
	height: auto;
}

#home-content_left-img--tr03 div>#margin-top_-40px {
	width: 160px;
	height: auto;
	margin-top: -40px;
}

.home-content_more-button a {
	style ="boreder: 0px;
}

.home-content_more-button a>span {
	position: absolute;
	bottom: 0px;
	right: 0px;
	border: 3px solid #f6f6f6;
}
</style>

</head>


<body>

	<div id="home_container">
		<div class="container">

			
				<h2>경매 마감임박 상품</h2>
				
			

			<%@ include file="/WEB-INF/views/common/home_img-slide.jspf"%>


			<!-- 이미지슬라이드 -->
			<!-- 두번째 검색라인 -->







			<div id="home-content_title-line">
				<h2>최고 입찰상품</h2>
				<hr>
			</div>


			<!-- 왼쪽컨텐츠 1열 -->
			<div class="contentLeft">

				<table class="contentRigntLeftBoxTable">

					<tr>
						<!-- 카테고리로직 영역 -->
						<td colspan="2">
							<ol class="breadcrumb2">
								<li><a href="#">홈</a></li>
								<li><a href="#">전자</a></li>
								<li class="active">카메라</li>
							</ol>
						</td>
						<!-- 카테고리로직 영역 -->
					</tr>


					<tr id="home-content_left-img--tr01">
						<!-- 첫번째사진영역 -->
						<td id="home-content_left-img--td01" rowspan="3"><div>
								<img src="/img/rail-camera-01.jpg">
							</div></td>
						<!-- 첫번째사진영역 -->

						<!-- 두번째사진영역 -->
						<td id="home-content_left-img--td02"><div>
								<img src="/img/rail-camera-02.jpg">
							</div></td>
						<!-- 두번째사진영역 -->
					</tr>
					<!-- 세번째사진영역 -->
					<tr id="home-content_left-img--tr02">
						<td><div>
								<img src="/img/rail-camera-03.jpg">
							</div></td>
					</tr>
					<!-- 세번째사진영역 -->
					<!-- 네번째사진영역 -->
					<tr id="home-content_left-img--tr03">
						<td><div>
								<img id="margin-top_-40px" src="/img/rail-camera-04.jpg">
							</div></td>
					</tr>
					<!-- 네번째사진영역 -->

				</table>



				<h3>Product Title</h3>
				<h5>입찰자수:345343534 | 현재가격:8152000원</h5>
				<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
					jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf
					sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
					sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
					fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
				<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
					skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf
					sdf sdf dsf af sadf sdaf sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf
					sdaf asdf sad fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>

				<!-- 더보기 스판버튼-->
				<div class="home-content_more-button">
					<h4>
						<a href="#"><span class="label label-default">더보기</span> </a>
					</h4>
				</div>
				<!-- 더보기 스판버튼-->


			</div>
			<!-- 왼쪽컨텐츠 1열 -->



			<!-- 오른쪽컨텐츠 1열 -->
			<div class="contentRight">
				<table class="contentRigntLeftBoxTable">

					<tr>
						<!-- 카테고리로직 영역 -->
						<td colspan="2">
							<ol class="breadcrumb2">
								<li><a href="#">홈</a></li>
								<li><a href="#">모터</a></li>
								<li class="active">바이크</li>
							</ol>
						</td>
						<!-- 카테고리로직 영역 -->
					</tr>


					<tr id="home-content_left-img--tr01">
						<!-- 첫번째사진영역 -->
						<td id="home-content_left-img--td01" rowspan="3"><div>
								<img src="/img/motor-bike-01.jpg">
							</div></td>
						<!-- 첫번째사진영역 -->

						<!-- 두번째사진영역 -->
						<td id="home-content_left-img--td02"><div>
								<img src="/img/motor-bike-02.jpg">
							</div></td>
						<!-- 두번째사진영역 -->
					</tr>
					<!-- 세번째사진영역 -->
					<tr id="home-content_left-img--tr02">
						<td><div>
								<img src="/img/motor-bike-03.jpg">
							</div></td>
					</tr>
					<!-- 세번째사진영역 -->
					<!-- 네번째사진영역 -->
					<tr id="home-content_left-img--tr03">
						<td><div>
								<img src="/img/motor-bike-04.jpg">
							</div></td>
					</tr>
					<!-- 네번째사진영역 -->

				</table>



				<h3>Product Title</h3>
				<h5>입찰자수:345343534 | 현재가격:8152000원</h5>
				<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
					jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf
					sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
					sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
					fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
				<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
					skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf
					sdf sdf dsf af sadf sdaf sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf
					sdaf asdf sad fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>

				<!-- 더보기 스판버튼-->
				<div class="home-content_more-button">
					<h4>
						<a href="#"><span class="label label-default">더보기</span> </a>
					</h4>
				</div>
				<!-- 더보기 스판버튼-->

			</div>
			<!-- 오른쪽컨텐츠 1열 -->







			<!-- 왼쪽컨텐츠 2열 -->
			<div class="contentLeft">

				<table class="contentRigntLeftBoxTable">

					<tr>
						<!-- 카테고리로직 영역 -->
						<td colspan="2">
							<ol class="breadcrumb2">
								<li><a href="#">홈</a></li>
								<li><a href="#">의류</a></li>
								<li class="active">신발</li>
							</ol>
						</td>
						<!-- 카테고리로직 영역 -->
					</tr>


					<tr id="home-content_left-img--tr01">
						<!-- 첫번째사진영역 -->
						<td id="home-content_left-img--td01" rowspan="3"><div>
								<img src="/img/nike-01.jpg">
							</div></td>
						<!-- 첫번째사진영역 -->

						<!-- 두번째사진영역 -->
						<td id="home-content_left-img--td02"><div>
								<img src="/img/nike-02.jpg">
							</div></td>
						<!-- 두번째사진영역 -->
					</tr>
					<!-- 세번째사진영역 -->
					<tr id="home-content_left-img--tr02">
						<td><div>
								<img src="/img/nike-03.jpg">
							</div></td>
					</tr>
					<!-- 세번째사진영역 -->
					<!-- 네번째사진영역 -->
					<tr id="home-content_left-img--tr03">
						<td><div>
								<img src="/img/nike-04.jpg">
							</div></td>
					</tr>
					<!-- 네번째사진영역 -->

				</table>



				<h3>Product Title3</h3>
				<h5>입찰자수:34534534 | 현재가격:81523000원</h5>
				<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
					jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf
					sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
					sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
					fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
				<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
					skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf
					sdf sdf dsf af sadf sdaf sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf
					sdaf asdf sad fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>

				<!-- 더보기 스판버튼-->
				<div class="home-content_more-button">
					<h4>
						<a href="#"><span class="label label-default">더보기</span> </a>
					</h4>
				</div>
				<!-- 더보기 스판버튼-->


			</div>
			<!-- 왼쪽컨텐츠 2열 -->



			<!-- 오른쪽컨텐츠 2열 -->
			<div class="contentRight">
				<table class="contentRigntLeftBoxTable">
					<tbody>

						<tr>
							<!-- 카테고리로직 영역 -->
							<td colspan="2">
								<ol class="breadcrumb2">
									<li><a href="#">홈</a></li>
									<li><a href="#">모터</a></li>
									<li class="active">자동차</li>
								</ol>
							</td>
							<!-- 카테고리로직 영역 -->
						</tr>

						<tr id="home-content_left-img--tr01">
							<!-- 첫번째사진영역 -->
							<td id="home-content_left-img--td01" rowspan="3"><div>
									<img src="/img/car-01.jpg">
								</div></td>
							<!-- 첫번째사진영역 -->

							<!-- 두번째사진영역 -->
							<td id="home-content_left-img--td02"><div>
									<img src="/img/car-02.jpg">
								</div></td>
							<!-- 두번째사진영역 -->
						</tr>
						<!-- 세번째사진영역 -->
						<tr id="home-content_left-img--tr02">
							<td><div>
									<img src="/img/car-03.jpg">
								</div></td>
						</tr>
						<!-- 세번째사진영역 -->
						<!-- 네번째사진영역 -->
						<tr id="home-content_left-img--tr03">
							<td><div>
									<img src="/img/car-04.jpg">
								</div></td>
						</tr>
						<!-- 네번째사진영역 -->
				</table>

				<h3>Product Title2</h3>
				<h5>입찰자수:787844 | 현재가격:985000원</h5>
				<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
					jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf
					sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
					sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
					fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
				<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
					skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf
					sdf sdf dsf af sadf sdaf sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf
					sdaf asdf sad fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g
					wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>

				<!-- 더보기 스판버튼-->
				<div class="home-content_more-button">
					<h4>
						<a href="#"><span class="label label-default">더보기</span> </a>
					</h4>
				</div>
				<!-- 더보기 스판버튼-->


			</div>
			<!-- 오른쪽컨텐츠 2열 -->

			<!-- 정적인클루드방식 -->
			<%@ include file="/WEB-INF/views/common/content_final.jspf"%>

			<!-- 정적인클루드방식 -->

			<!-- 동적 인클루드방식 -->
			<%-- 		<jsp:include page="/WEB-INF/views/common/content_final.jspf"
			flush="false">
			<jsp:include page="/WEB-INF/views/common/footer.jspf" flush="false">
			사용이 안된다 jspf라서 그런듯 --%>
			<!-- 동적 인클루드방식 -->
			<!-- 전체컨테이너 -->
		</div>

	</div>
	<%@ include file="/WEB-INF/views/common/footer.jspf"%>

</body>
</html>



