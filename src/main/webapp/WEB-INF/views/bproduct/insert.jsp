<!-- 백엔드
-회원테이블에 레벨컬럼 제작하여 판매자 인증 후 레벨상승되며
레벨에 따라 경매올리기가 가능하도록 하기
-프로덕트테이블에 즉시구매 컬럼 삭제하고 입찰가가 회원들이 입찰버튼누를 때마다 상승되고
마지막에 누른 회원의 이름이 출력되도록 구현
-여러장의 사진을 인서트하고 셀렉트 할 수 있도록 구조나 스크립트 기술이 필요
 

프론트엔드
-판매자인증하러가기 페이지나 모달창구현 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	/* border: 1px solid red; */
	
}

#insert_myform-btn {
	margin-bottom: 50px;
}

h4 {
	margin-bottom: 20px;
}

#myform .row {
	margin-top: 20px;
	width: 100%;
	padding: 5px;
}
</style>
<script>
	$(function() {
		$('[data-toggle="popover"]').popover()
	})

	$('#example').popover(options)
	
	
</script>

</head>
<body>



	<c:set var="userid" value="${userLoginInfo.signupId}"></c:set>
	<c:choose>
		<c:when test="${userid=='관리자'||userid=='판매자'}">


			<!-- 관리자만보이는영역 -->


			<!-- 회색바탕 -->
			<div class="view-container">
				<!-- 컨텐츠컨테이너 -->
				<div class="container">
					<!-- 2분할 -->

					<div class="common_title-line">
						<h3>
							나의 달래 : 경매 등록 <small><a href="#" style="color: gray;">${sessionScope.userLoginInfo.signupName}
									<span class="badge">${sessionScope.userLoginInfo.signupNum}</span>
							</a></small>
						</h3>



					</div>



					<div class="container" style="width: 100%;">
						<form id="myform" enctype="multipart/form-data" method="POST">
							<!-- 폼 분할 -->
							<h4>경매 물품정보 작성</h4>
							<div class="row" style="margin-top: 0px;">


								<div class="col-md-3">
									<span style="color: red;">*</span> <a tabindex="0"
										role="button" type="button" data-container="body"
										data-toggle="popover" data-placement="right"
										data-trigger="focus"
										data-content="제목은 구매자가 귀하의 상품을 찾는 데 도움이 됩니다. 정확히 진술하십시오. 검색하는 데 사용될 단어를 포함 하십시오.">제품
										명</a>
								</div>

								<div class="col-md-9">
									<input required type="text" class="form-control"
										id="productName" name="productName" placeholder="제품명을 입력해 주세요"
										data-vc="2,30">
								</div>
							</div>


							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>제품 분류
								</div>

								<div class="col-md-3">
									<select id="productCategory" class="form-control"
										name="productCategory">
										<option value="none">대분류</option>
										<option value="fashion">패션</option>
										<option value="digital">디지털</option>
										<option value="rareCollection">희귀수집품</option>
										<option value="healthBeauty">건강 및 미용</option>
										<option value="motorPartz">모터츠파츠</option>
										<option value="toyHobby">완구,취미</option>
										<option value="sports">스포츠</option>
										<option value="homeGarden">홈,가든</option>
										<option value="life">생활</option>


									</select>
								</div>
							</div>


							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span> <a tabindex="0"
										role="button" type="button" data-container="body"
										data-toggle="popover" data-placement="right"
										data-trigger="focus"
										data-content="새 것 인지 패키지 포장도 포함 되는지, 생활 기스가 존재 하는지, 누락 되거나 손상된 부분, 주름이나 찢김, 마모, 불완전성에 대한 내용을 한글 50글자내로 작성하여 주십시오.">제품
										상태</a>
								</div>

								<div class="col-md-9">
									<textarea class="form-control" rows="4" id="productCondition"
										name="productCondition" placeholder="제품의 상태(자세히)"
										data-vc="1,30"></textarea>
									<!-- 
										<input class="form-control" type="text" id="productCondition"
											name="productCondition" placeholder="제품의 상태(자세히)"
											data-vc="1,30">
 -->
								</div>
							</div>

							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span> <a tabindex="0"
										role="button" type="button" data-container="body"
										data-toggle="popover" data-placement="right"
										data-trigger="focus"
										data-content="데이터 관리를 위한 코드를 영문과 숫자로 정해 주십시오.(10글자이하)">제품
										코드</a>
								</div>



								<div class="col-md-3">
									<input required type="text" class="form-control"
										id="productCode" name="productCode" placeholder="제품코드"
										data-vc="3,10">
								</div>
							</div>


							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>사진

								</div>

								<div class="col-md-9" style="overflow: auto;">



									<table style="width: 100%;">

										<tr>
											<td><input required type="file" id="productImage"
												name="productImage"></td>
											<td><input type="file" id="productImage2"></td>
											<td><input type="file" id="productImage3"></td>
										</tr>

										<tr style="height: auto;">

											<td style="width: 200px;"><img style="width: 100%"
												src="/img/icon-img.png" id="preview"></td>
											<td style="width: 200px;"><img style="width: 100%"
												src="/img/icon-img.png" id="preview2"></td>
											<td style="width: 200px;"><img style="width: 100%"
												src="/img/icon-img.png" id="preview3"></td>

										</tr>

										<tr>
											<td><input type="file" id="productImage4"></td>
											<td><input type="file" id="productImage5"></td>
											<td><input type="file" id="productImage6"></td>
										</tr>

										<tr style="height: auto;">

											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview4"></td>
											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview5"></td>
											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview6"></td>

										</tr>

										<tr>
											<td><input type="file" id="productImage7"></td>
											<td><input type="file" id="productImage8"></td>
											<td><input type="file" id="productImage9"></td>
										</tr>

										<tr style="height: auto;">

											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview7"></td>
											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview8"></td>
											<td><img style="width: 100%" src="/img/icon-img.png"
												id="preview9"></td>

										</tr>


									</table>




								</div>
							</div>

							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>제품 설명 <a tabindex="0"
										role="button" type="button" data-container="body"
										data-toggle="popover" data-placement="right"
										data-trigger="focus"
										data-content="판매하는 물건에 대한 설명을 완전하게 기재 하십시오. 
											모바일 환경에서 잘 보이도록 간결한 형식을 유지 부탁 드립니다. (300글자 이내)">ⓘ</a>
								</div>

								<div class="col-md-9">
									<textarea class="form-control" rows="10" id="productDesc"
										name="productDesc" placeholder="제품의 설명" data-vc="1,300"></textarea>
									<!-- 
										<input class="form-control" type="text" id="productDesc"
											name="productDesc" placeholder="제품의 설명" data-vc="1,300"> -->
								</div>
							</div>

							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>제품 수량
								</div>

								<div class="col-md-3">
									<input required type="number" class="form-control"
										id="productQuantity" name="productQuantity"
										placeholder="판매 수량 (숫자)" data-vc="1,3" required>
								</div>
							</div>



							<div class="row">

								<div class="col-md-3">
									<span style="color: red;">*</span>가격설정
								</div>

								<div class="col-md-4">
									<input required type="number" class="form-control"
										id="productLowestPrice" name="productLowestPrice"
										placeholder="제품의 최저가" data-vc="1,10">
								</div>
								<div class="col-md-1">
									<p style="font-size: 2em; color: #D9E0DF;">~</p>
								</div>
								<div class="col-md-4">
									<input required type="number" class="form-control"
										id="productHopefulPrice" name="productHopefulPrice"
										placeholder="제품 희망가(즉시 구매가)" data-vc="1,10">
								</div>
							</div>





							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>제품 브랜드
								</div>

								<div class="col-md-6">
									<input required class="form-control" type="text"
										id="productBrand" name="productBrand" placeholder="제품명의 브랜드"
										data-vc="1,20">
								</div>
							</div>




							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-9">
									<button class="btn btn-info btn-lg btn-block" type="button"
										id="insert_myform-btn" name="ATProductInfo" onclick="insert()">업로드하기</button>
								</div>
							</div>
							<!-- 폼 분할 -->
						</form>
					</div>

				</div>
				<!-- 우측 컨텐츠 -->



			</div>
			<!-- 전체 분할 레프트-메인 -->


			<!-- 				<div class="form-group">
											<label for="productImage-2" >경매
												물품 사진 업로드 2</label>
											<div class="col-sm-10">
												<input class="form-control" type="file" id="productImage-2"
													name="productImage-2" accept="image/*">
												<p class="help-block">(비활성화중)</p>

												<div style="width: 100%; overflow: auto;">

													<img style="width: 100%" src="#" id="preview-2">

												</div>
											</div>
										</div> -->



			<%@ include file="/WEB-INF/views/bproduct/product-bottom.jspf"%>



			<!-- 우측컨텐츠 -->

			<script>
				/* 				var fileInput = document.querySelector('input[type="file"]'); */

				var fileInput = document.getElementById('productImage');
				var fileInput2 = document.getElementById('productImage2');
				var fileInput3 = document.getElementById('productImage3');
				var fileInput4 = document.getElementById('productImage4');
				var fileInput5 = document.getElementById('productImage5');
				var fileInput6 = document.getElementById('productImage6');
				var fileInput7 = document.getElementById('productImage7');
				var fileInput8 = document.getElementById('productImage8');
				var fileInput9 = document.getElementById('productImage9');

				var preview = document.getElementById('preview');
				var preview2 = document.getElementById('preview2');
				var preview3 = document.getElementById('preview3');
				var preview4 = document.getElementById('preview4');
				var preview5 = document.getElementById('preview5');
				var preview6 = document.getElementById('preview6');
				var preview7 = document.getElementById('preview7');
				var preview8 = document.getElementById('preview8');
				var preview9 = document.getElementById('preview9');

				fileInput.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview.setAttribute('src', url);
				});

				fileInput2.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview2.setAttribute('src', url);
				});

				fileInput3.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview3.setAttribute('src', url);
				});

				fileInput4.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview4.setAttribute('src', url);
				});

				fileInput5.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview5.setAttribute('src', url);
				});

				fileInput6.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview6.setAttribute('src', url);
				});

				fileInput7.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview7.setAttribute('src', url);
				});

				fileInput8.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview8.setAttribute('src', url);
				});

				fileInput9.addEventListener('change', function(e) {
					var url = URL.createObjectURL(e.target.files[0]);
					preview9.setAttribute('src', url);
				});

				function imgvali() {
					/* var img = document.querySelector('input[type="file"]'); */

					var img = document.getElementById('productImage');
					var img2 = document.getElementById('productImage2');
					var img3 = document.getElementById('productImage3');
					var img4 = document.getElementById('productImage4');

					img = img.value.substring(img.value.lastIndexOf('.') + 1);
					img2 = img2.value
							.substring(img2.value.lastIndexOf('.') + 1);
					img3 = img3.value
							.substring(img3.value.lastIndexOf('.') + 1);
					img4 = img4.value
							.substring(img4.value.lastIndexOf('.') + 1);

					if (img.toUpperCase() != 'JPG'
							&& img.toUpperCase() != 'PNG') {
						alert("1 번째 사진에 jpg 나 png파일을 넣어주세요");
						return false;
					}
					if (img2.toUpperCase() != 'JPG'
							&& img2.toUpperCase() != 'PNG') {
						alert("2 번째 사진에 jpg 나 png파일을 넣어주세요");
						return false;
					}
					if (img3.toUpperCase() != 'JPG'
							&& img3.toUpperCase() != 'PNG') {
						alert("3 번째 사진에 jpg 나 png파일을 넣어주세요");
						return false;
					}
					if (img4.toUpperCase() != 'JPG'
							&& img4.toUpperCase() != 'PNG') {
						alert("4 번째 사진에 jpg 나 png파일을 넣어주세요");
						return false;
					}

					return true;
				}

				function insert() {

					var form = document.querySelector('#myform');
					var formData = new FormData(form);

					if (valicheck()) {
						if (imgvali()) {

							$.ajax({
								url : '/BProductInfo',
								contentType : false,//헤더 지우기
								processData : false,//쿼리스트링 형식으로 바꾸지 않기
								data : formData,
								type : 'POST',
								success : function() {
									location.href = '/url/bproduct:list';
									alert('성공');
								}
							});
						}
					}
				}
			</script>


			<!-- 관리자만보이는영역 -->
		</c:when>



		<c:otherwise>

			<!-- 세션없는 사람에게 보이는 영역 -->
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
			<!-- 세션없는 사람에게 보이는 영역 -->



		</c:otherwise>

	</c:choose>





</body>
</html>

<!-- 	var productImage = productImage + ',' + productImage2 + ','
							+ productImage3 + ',' + productImage4 + ','
							+ productImage5 + ',' + productImage6 + ','
							+ productImage7 + ',' + productImage8 + ','
							+ productImage9
				/* var productImage = document
							.getElementByName('productImage');
					var productImage2 = document
							.getElementByName('productImage2');
					var productImage3 = document
							.getElementByName('productImage3');
					var productImage4 = document
							.getElementByName('productImage4');
					var productImage5 = document
							.getElementByName('productImage5');
					var productImage6 = document
							.getElementByName('productImage6');
					var productImage7 = document
							.getElementByName('productImage7');
					var productImage8 = document
							.getElementByName('productImage8');
					var productImage9 = document
							.getElementByName('productImage9');
 */ -->