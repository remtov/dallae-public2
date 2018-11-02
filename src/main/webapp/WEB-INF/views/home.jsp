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

.common_middle-img {
	max-width: 100%;
	margin: auto;
	display: block;
}

div {
	/* border: 1px solid red; */
	
}
</style>

</head>


<body>

	<div id="home_container">
		<div class="container">

			<%@ include file="/WEB-INF/views/common/home_img-slide.jspf"%>
			<!-- 이미지슬라이드 -->




			<div class="row">
				<%
					for (int i = 1; i < 17; i += 4) {
				%>

				<div class="col-md-6">
					<!-- 카테고리영역 -->
					<ol class="breadcrumb2">
						<li><a href="#">홈</a></li>
						<li><a href="#">대분류</a></li>
						<li class="active">중분류</li>
					</ol>
					<!-- 카테고리영역 -->


					<!-- 사진들 -->
					<div class="row" style="height: 250px; overflow: hidden;">
						<!-- 큰사진 -->
						<div class="col-md-9">
							<img class="common_middle-img" src="/img/middle-img-<%=i%>.jpg">
						</div>
						<!-- 큰사진 -->


						<!-- 작은사진 세개 -->
						<div class="col-md-3">
							<div style="height: 83px;">
								<img class="common_middle-img"
									src="/img/middle-img-<%=i + 1%>.jpg">
							</div>
							<div style="height: 83px;">
								<img class="common_middle-img"
									src="/img/middle-img-<%=i + 2%>.jpg">
							</div>
							<div style="height: 83px;">
								<img class="common_middle-img"
									src="/img/middle-img-<%=i + 3%>.jpg">
							</div>



						</div>
						<!-- 작은사진 세개 -->
					</div>
					<!-- 사진들 -->

					<!-- 문장들-제목,내용,버튼 -->
					<div style="height: 200px; overflow: hidden;">
						<h3>Product Title</h3>
						<h5>입찰자수:345343534 | 현재가격:8152000원</h5>
						<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
							jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf
							asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
							sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
							fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer
							g wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
						<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
							skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf
							sdf sdf dsf af sadf sdaf sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf
							sdaf asdf sad fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g
							wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
					</div>
					<!-- 더보기 스판버튼-->
					<div class="home-content_more-button">
						<h4>
							<a href="#"><span class="label label-default">더보기</span> </a>
						</h4>
					</div>
					<!-- 더보기 스판버튼-->

					<!-- 문장들-제목,내용,버튼 -->
				</div>
				<%
					}
				%>
			</div>





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



