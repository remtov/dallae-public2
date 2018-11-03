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




<!-- 롤오버드랍다운 css & script -->
<style>
#home_container {
	width: 100%;
	background-color: #f6f6f6;
}

div {
	/* border: 1px solid red; */
	
}

.home-content_img-big {
	width: 75%;
	float: left;
	height: auto;
}

.home-content_img-big>img {
	width: 100%;
}

.home-content_img-small {
	width: 23%;
	float: right;
	display: block;
}

.home-content_img-small>div {
	overflow: hidden;
}

.home-content_img-small>div>img {
	width: 100%;
}
</style>


<script src="//code.jquery.com/jquery.min.js"></script>
<script>
	
</script>

</head>


<body>

	<div id="home_container">


		<%@ include file="/WEB-INF/views/common/home_img-slide.jspf"%>
		<!-- 이미지슬라이드 -->


		<div class="container">

			<div class="row">
				<h2 style="margin-left: 20px;">카테고리별 인기 매물</h2>
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
					<!-- 힌색판넬 -->
					<div style="background-color: white;">
						<!-- 사진들 -->
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<!-- 큰사진 -->
							<div class="home-content_img-big">
								<img src="/img/middle-img-<%=i%>.jpg">
							</div>
							<!-- 큰사진 -->


							<!-- 작은사진 세개 -->
							<div class="home-content_img-small">
								<div>
									<img src="/img/middle-img-<%=i + 1%>.jpg">
								</div>
								<div>
									<img src="/img/middle-img-<%=i + 2%>.jpg">
								</div>
								<div>
									<img src="/img/middle-img-<%=i + 3%>.jpg">
								</div>



							</div>
							<!-- 작은사진 세개 -->
						</div>
						<!-- 사진들 -->

						<!-- 문장들-제목,내용,버튼 -->
						<div style="height: 200px; overflow: hidden; padding: 20px;">
							<h3>Product Title</h3>
							<h5>입찰자수:345343534 | 현재가격:8152000원</h5>
							<p>글wefwefdsf wfwdfw fdwf wdfwfwdfwdf wdfwdfwd fwdfwfdw
								jsdhfjkds fsdjf sjdf hsdjfh skdjfhsjdfhskdj sadf sadf
								asdfhsdjfhsf sdf sda faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
								sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
								fdhfjksdhfskdjfhsd gwergwer gwergwer ger gwer g ergwer g wergwer
								g wergwegwergwergwer g werg wer htr he th eth et hertertr th f</p>
							<p>글wefwefddfwd fwdfwfdw jsdhfjkds fsdjf sjdf hsdjfh
								skdjfhsjdfhskdj sadf sadf asdfhsdjfhsf sdf sda
								faskjdfhksjdhfjsdf sdf sdf dsf af sadf sdaf
								sdksasdfasdfkjhsadkjfhasdkjfhaskdja sdf sdaf asdf sad
								fdhfjksdhfskdjfhsd gwergwer gwergwer ger gw g wergwegwergwergwer
								g werg wer htr he th eth et hertertr th f</p>


						</div>
						<div class="home-content_more-button">

							<!-- 더보기 스판버튼-->

							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;" href="#" class="btn btn-default"
									role="button" onclick="goPage()"> 더보기 </a>
							</p>




						</div>


						<!-- 문장들-제목,내용,버튼 -->
					</div>
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


		<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	</div>
</body>
</html>



