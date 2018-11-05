<!--백엔드-
프로덕트 즉시구매 컬럼 삭제 할 예정 
물건에 판매자 아이디가 보여야 할 듯
컬럼간 연결 포린키인가 뭔가 -->
<!-- 
프론트엔드
물건을 올린사람이나 관리자일 경우
수정이 가능하도록
그외의 사람은 그냥 보기만 가능하도록 할것-->


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


</head>
<body>



	<c:set var="userid" value="${userLoginInfo.signupId}"></c:set>
	<c:choose>
		<c:when test="${userid=='admin'||userid=='sell'}">
			<!-- 관리자 판매자만 보이는영역 -->
			<!-- 연 회색 바디 -->

			<!-- 컨텐츠 컨테이너 -->
			<div class="view-container">
				<div class="container">
					<div class="common_title-line">
						<h3>
							나의 달래 : 경매 보기 <small><a href="#" style="color: gray;">${sessionScope.userLoginInfo.signupName}
									<span class="badge">${sessionScope.userLoginInfo.signupNum}</span>
							</a></small>
						</h3>
					</div>


					<form id="iform" enctype="multipart/form-data" method="POST">
						<!-- 폼 분할 -->
						<h4>경매 물품정보 수정</h4>

						<h2>${product.productCategory}><b>${product.productName}</b>
						</h2>

						<div style="overflow: auto;">
							<div style="width: 33%; float: left;">
								<div class="fileBox">
									<label for="productImage" class="btn btn-default"
										style="width: 100%;"><span>+</span>1번 사진</label> <input
										name="productImage" required type="file" id="productImage"
										class="uploadBtn" value="${product.productImage}"> <img
										style="width: 100%"
										src="/resources/img/product/${product.productImage}"
										id="preview">
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



						<div style="overflow: auto; margin-top: 10px;">
							<div style="float: left;">
								<img style="width: 50px; height: auto;"
									src="/img/icon_profile.png">
							</div>

							<div style="margin-left: 10px; float: left;">
								<p>
									<b>올린사람</b><br> 올린장소
								</p>
							</div>
							<div style="float: right;">
								<span style="font-size: 0.8em;">매너점수</span><span
									style="font-size: 1.5em; color: #f4969b;"> 61점</span> <img
									src="/img/icon-level-1.png" style="width: 50px; height: auto;">
							</div>

						</div>

						<hr style="clear: both;">

						<h3>
							<span class="label label-info">판매중</span>
						</h3>

						<input required data-vc="2,50" class="form-control" type="text"
							name="productName" value="${product.productName}"><br>
						<p>
							<input required data-vc="1,30" type="text"
								name="productCondition" value="${product.productCondition}">.${product.productDate}
						</p>


						<p>
							<input required data-vc="1,11" type="number"
								style="width: 100px;" name="productLowestPrice"
								value="${product.productLowestPrice}"><b
								style="font-size: 1.5em; color: gray;"> ~ </b><input required
								data-vc="1,11" type="number" name="productHopefulPrice"
								value="${product.productHopefulPrice}" style="width: 100px;">
						</p>

						<textarea required data-vc="1,600" rows="10" class="form-control"
							name="productDesc">${product.productDesc}</textarea>



						<p>
							제품수량 : <input style="margin-bottom: 10px; width:50px;"
								data-vc="1,3" required type="number" name="productQuantity"
								value="${product.productQuantity}"><br> 
								
								제품코드 : <input
								style="margin-bottom: 10px; width: 200px;" required
								data-vc="3,10" type="text" name="productCode"
								value="${product.productCode}"><br> 브랜드명 : <input style="margin-bottom: 10px; width: 150px;"
								style="margin-bottom: 10px;" required data-vc="1,20" type="text"
								name="productBrand" value="${product.productBrand}">
						</p>

						<button class="btn btn-default btn-lg" type="button"
							onclick="update(${product.productNumber})">수정</button>
						<button class="btn btn-danger btn-lg" type="button"
							onclick="dele(${product.productNumber})">주의! 데이터가 삭제됩니다.</button>
					</form>
				</div>
			</div>

			<!-- 우측 컨텐츠 -->
			<%@ include file="/WEB-INF/views/bproduct/product-bottom.jspf"%>
			<!-- 관리자만보이는영역 -->
		</c:when>
		<c:otherwise>
			<!-- 세션없는 사람에게 보이는 영역 -->
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
			<!-- 세션없는 사람에게 보이는 영역 -->
		</c:otherwise>
	</c:choose>

	<script>
var fileInput = document.querySelector('input[type="file"]');
var preview = document.getElementById('preview');

fileInput.addEventListener('change', function(e) {
	var url = URL.createObjectURL(e.target.files[0]);
	preview.setAttribute('src', url);
});
function imgvali() {
	var img = document.querySelector('input[type="file"]');

	img = img.value.substring(img.value.lastIndexOf('.') + 1);
	if (img.toUpperCase() != 'JPG'
			&& img.toUpperCase() != 'PNG') {
		alert("jpg 나 png파일을 넣어주세요");
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


	function dele(dsa){
		$.ajax({
			url : '/BProductInfo/'+${product.productNumber},
			type : 'DELETE',
			success : function(){
				location.href = '/url/bproduct:list';
				alert('성공');
			}
		})
	}
	
		function update(){
		var form = document.querySelector('#iform');
		var formData = new FormData(form);
		if(valicheck() ){
			$.ajax({
				url : '/BProductInfo/'+${product.productNumber},
				contentType : false,//헤더 지우기
				processData : false,//쿼리스트링 형식으로 바꾸지 않기
				data : formData,
				type : 'POST',
				success : function(){
					location.href = '/url/bproduct:list';
					alert('성공');
				}
			});
			}
		}
		
		

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
	</script>

</body>
</html>