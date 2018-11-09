

<!-- 
벡엔드 마지막컬럼 유저크레딧레벨은 인서트에서 제외했음
어떻게 넣을지 인풋으로 입력하는건아닌것같고
어떻게 가져와서 인풋태그에 밸류로 넣어서 넣어줘야하는지 
잘모르겠음 일단 백엔드기술자에게 보류 ㅎㅎ


프론트
데이터 새로바꾼다음에
어드민 셀러 아이디 권한
유제레벨아이디로 전환할것
------------ -->

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

/* 파일버튼 바꾸기 css */
.fileBox {
	padding: 5px;
	width: 100%;
}

.fileBox>label {
	margin-bottom: 10px;
}

.fileBox>label>span {
	color: red;
}

.fileBox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: re
}
/* 파일버튼 바꾸기 css */
</style>
<script>
	/* 인서트페이지의 각 항목(예:제품상태,제품코드 등)을 누르면 설명 팝업이 생기는 기능 */
	$(function() {
		$('[data-toggle="popover"]').popover()
	})
	$('#example').popover(options)
	/* 인서트페이지의 각 항목(예:제품상태,제품코드 등)을 누르면 설명 팝업이 생기는 기능 */
</script>

</head>
<body>



	<c:set var="userId" value="${userlogininfo.userId}"></c:set>
	<c:choose>
		<c:when test="${userId=='admin'||userId=='sell'}">
			<!-- 관리자만보이는영역 -->
			<!-- 회색바탕 -->
			<div class="view-container">
				<!-- 컨텐츠컨테이너 -->
				<div class="container">
					<!-- 2분할 -->
					<div class="common_title-line">
						<h3>
							나의 달래 : 경매 등록 <small><a href="#" style="color: gray;">${sessionScope.userlogininfo.userName}
									<span class="badge">${sessionScope.userlogininfo.userNumber}</span>
							</a></small>
						</h3>
					</div>



					<div class="container">
						<form id="myform" enctype="multipart/form-data" method="POST">
							<!-- 폼 분할 -->
							<h4>경매 물품정보 작성</h4>
							<div class="row">


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
										data-vc="2,50">
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
									<textarea class="form-control" rows="2" id="productCondition"
										name="productCondition" placeholder="제품의 상태(자세히)"
										data-vc="1,50"></textarea>



								</div>
							</div>







							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span>사진
								</div>

								<div class="col-md-9" style="overflow: auto;">

									<div style="width: 33%; float: left;">
										<div class="fileBox">
											<label for="productImage" class="btn btn-default"
												style="width: 100%;"><span>+</span>1번 사진</label> <input
												name="productImage" required type="file" id="productImage"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview">
										</div>
										<div class="fileBox">
											<label for="productImage2" class="btn btn-default"
												style="width: 100%;"><span>+</span>2번 사진</label> <input
												name="productImage2" required type="file" id="productImage2"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview2">
										</div>
										<div class="fileBox">
											<label for="productImage3" class="btn btn-default"
												style="width: 100%;"><span>+</span>3번 사진</label> <input
												name="productImage3" required type="file" id="productImage3"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview3">
										</div>
									</div>
									<div style="width: 33%; float: left;">
										<div class="fileBox">
											<label for="productImage4" class="btn btn-default"
												style="width: 100%;"><span>+</span>4번 사진</label> <input
												name="productImage4" required type="file" id="productImage4"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview4">
										</div>
										<div class="fileBox">
											<label for="productImage5" class="btn btn-default"
												style="width: 100%;">+ 5번 사진</label> <input
												name="productImage5" required type="file" id="productImage5"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview5">
										</div>
										<div class="fileBox">
											<label for="productImage6" class="btn btn-default"
												style="width: 100%;">+ 6번 사진</label> <input
												name="productImage6" required type="file" id="productImage6"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview6">
										</div>
									</div>
									<div style="width: 33%; float: left;">
										<div class="fileBox">
											<label for="productImage7" class="btn btn-default"
												style="width: 100%;">+ 7번 사진</label> <input
												name="productImage7" required type="file" id="productImage7"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview7">
										</div>
										<div class="fileBox">
											<label for="productImage8" class="btn btn-default"
												style="width: 100%;">+ 8번 사진</label> <input
												name="productImage8" required type="file" id="productImage8"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview8">
										</div>
										<div class="fileBox">
											<label for="productImage9" class="btn btn-default"
												style="width: 100%;">+ 9번 사진</label> <input
												name="productImage9" required type="file" id="productImage9"
												class="uploadBtn"> <img style="width: 100%"
												src="/img/icon-img.png" id="preview9">
										</div>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-3">
									<span style="color: red;">*</span> <a tabindex="0"
										role="button" type="button" data-container="body"
										data-toggle="popover" data-placement="right"
										data-trigger="focus"
										data-content="판매하는 물건에 대한 설명을 완전하게 기재 하십시오. 
											모바일 환경에서 잘 보이도록 간결한 형식을 유지 부탁 드립니다. (300글자 이내)">제품
										설명</a>
								</div>

								<div class="col-md-9">
									<textarea class="form-control" rows="10" id="productDesc"
										name="productDesc" placeholder="제품의 설명" data-vc="1,2000"></textarea>

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
									<span style="color: red;">*</span>시작가격설정
								</div>

								<div class="col-md-4">
									<input required type="number" class="form-control"
										id="productLowestPrice" name="productLowestPrice"
										placeholder="제품의 최저가" data-vc="1,10">
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

							<div style="display: none">
								<input class="form-control" type="text" id="userId"
									name="userId" value="${userlogininfo.userId}"> 

							</div>

							

							<div class="row">
								<div class="col-md-3"></div>
								<div class="col-md-9">
									<button class="btn btn-info btn-lg btn-block" type="button"
										id="insert_myform-btn" name="Product" onclick="insert()">업로드하기</button>
								</div>
							</div>
							<!-- 폼 분할 -->
						</form>
					</div>
				</div>
				<!-- 우측 컨텐츠 -->
			</div>


			<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>

		</c:when>
		<c:otherwise>


			<!-- 세션없는 사람에게 보이는 영역 -->
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
			<!-- 세션없는 사람에게 보이는 영역 -->
		</c:otherwise>
	</c:choose>





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

		function imgVali() {
			/* var img = document.querySelector('input[type="file"]'); */

			var img = document.getElementById('productImage');
			var img2 = document.getElementById('productImage2');
			var img3 = document.getElementById('productImage3');
			var img4 = document.getElementById('productImage4');

			img = img.value.substring(img.value.lastIndexOf('.') + 1);
			img2 = img2.value.substring(img2.value.lastIndexOf('.') + 1);
			img3 = img3.value.substring(img3.value.lastIndexOf('.') + 1);
			img4 = img4.value.substring(img4.value.lastIndexOf('.') + 1);

			if (img.toUpperCase() != 'JPG' && img.toUpperCase() != 'PNG') {
				alert("1 번째 사진에 jpg 나 png파일을 넣어주세요");
				return false;
			}
			/* 		if (img2.toUpperCase() != 'JPG'
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
					} */

			return true;
		}

		function insert() {

			var form = document.querySelector('#myform');
			var formData = new FormData(form);

			if (valiCheck()) {
				if (imgVali()) {

					$.ajax({
						url : '/product',
						contentType : false,//헤더 지우기
						processData : false,//쿼리스트링 형식으로 바꾸지 않기
						data : formData,
						type : 'POST',
						success : function() {
							location.href = '/url/product:list';
							alert('성공');
						}
					});
				}
			}
		}
	</script>




</body>
</html>

