

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

#insert_my-form-btn {
	margin-bottom: 50px;
}

h4 {
	margin-bottom: 20px;
}

#my-form .row {
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



	
	<div class="view-container">
		<div class="container">
			<div class="common_title-line">
				<h3>
					나의 달래 : 경매 보기 <small><a href="#" style="color: gray;">${sessionScope.userlogininfo.userName}
							<span class="badge">${sessionScope.userlogininfo.userNumber}</span>
					</a></small>
				</h3>
			</div>


			<form id="i-form" enctype="multipart/form-data" method="POST">
				<!-- 폼 분할 -->
				<h4>경매 물품정보 수정</h4>

				<h2>${product.productCategory}><b>${product.productName}</b><small> 마감시
						: ${product.productEndDate}</small>
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
								style="width: 100%;">+ 5번 사진</label> <input name="productImage5"
								required type="file" id="productImage5" class="uploadBtn">
							<img style="width: 100%" src="/img/icon-img.png" id="preview5">
						</div>
						<div class="fileBox">
							<label for="productImage6" class="btn btn-default"
								style="width: 100%;">+ 6번 사진</label> <input name="productImage6"
								required type="file" id="productImage6" class="uploadBtn">
							<img style="width: 100%" src="/img/icon-img.png" id="preview6">
						</div>
					</div>
					<div style="width: 33%; float: left;">
						<div class="fileBox">
							<label for="productImage7" class="btn btn-default"
								style="width: 100%;">+ 7번 사진</label> <input name="productImage7"
								required type="file" id="productImage7" class="uploadBtn">
							<img style="width: 100%" src="/img/icon-img.png" id="preview7">
						</div>
						<div class="fileBox">
							<label for="productImage8" class="btn btn-default"
								style="width: 100%;">+ 8번 사진</label> <input name="productImage8"
								required type="file" id="productImage8" class="uploadBtn">
							<img style="width: 100%" src="/img/icon-img.png" id="preview8">
						</div>
						<div class="fileBox">
							<label for="productImage9" class="btn btn-default"
								style="width: 100%;">+ 9번 사진</label> <input name="productImage9"
								required type="file" id="productImage9" class="uploadBtn">
							<img style="width: 100%" src="/img/icon-img.png" id="preview9">
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
							<b>판매자 ID : ${product.userId}</b><br> '${product.userId}' 님의
							회원 No.${product.userNumber}<br>





						</p>
					</div>
					<div style="float: right;">
						<span style="font-size: 0.8em;">판매자 신용등급 (최고LV 10) : </span><span
							style="font-size: 1.5em; color: #f4969b;"> LV
							${product.userCreditLevel} </span> <img src="/img/icon-level-1.png"
							style="width: 50px; height: auto;">
					</div>

				</div>

				<hr style="clear: both;">

				<h3>
					<span class="label label-info">판매중</span>
				</h3>
				<p>
					<input required data-vc="2,150" class="form-control" type="text"
						name="productName" value="${product.productName}">
				</p>

				<p>
					제품 분류 <select style="width: 200px;" id="productCategory"
						class="form-control" name="productCategory">
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
				</p>


				<p>
					상태 : <input required data-vc="1,30" type="text"
						name="productCondition" value="${product.productCondition}">
					| 마감시 : ${product.productDate}
				</p>


				<p>
					시작가 : <input required data-vc="1,11" type="number"
						style="width: 100px;" name="productLowestPrice"
						value="${product.productLowestPrice}"> 원

				</p>
				<p>
					<textarea required data-vc="1,1000" rows="10" class="form-control"
						name="productDesc">${product.productDesc}</textarea>
				</p>


				<p>
					제품수량 : <input style="margin-bottom: 10px; width: 50px;"
						data-vc="1,3" required type="number" name="productQuantity"
						value="${product.productQuantity}"> 개<br> 브랜드명 : <input
						style="margin-bottom: 10px; width: 150px;"
						style="margin-bottom: 10px;" required data-vc="1,20" type="text"
						name="productBrand" value="${product.productBrand}">
				</p>

				<button class="btn btn-default btn-lg" type="button"
					onclick="updateBtn(${product.productNumber})">수정</button>
				<button class="btn btn-danger btn-lg" type="button"
					onclick="deleteBtn(${product.productNumber})">주의! 데이터가
					삭제됩니다.</button>
			</form>
			<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
		</div>

	</div>



	<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>

	<script>
var fileInput = document.querySelector('input[type="file"]');
var preview = document.getElementById('preview');

fileInput.addEventListener('change', function(e) {
	var url = URL.createObjectURL(e.target.files[0]);
	preview.setAttribute('src', url);
});
function imgVali() {
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
	var form = document.querySelector('#i-form');
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
					location.href = '/product/'+${product.productNumber},
					alert('성공');
				}
			});
		}
	}
}


	function deleteBtn(dsa){
		$.ajax({
			url : '/product/'+${product.productNumber},
			type : 'DELETE',
			success : function(){
				location.href = '/product/'+${product.productNumber},
				alert('성공');
			}
		})
	}
	
		function updateBtn(){
		var form = document.querySelector('#i-form');
		var formData = new FormData(form);
		if(valiCheck() ){
			$.ajax({
				url : '/product/'+${product.productNumber},
				contentType : false,//헤더 지우기
				processData : false,//쿼리스트링 형식으로 바꾸지 않기
				data : formData,
				type : 'POST',
				success : function(){
					location.href = '/product/'+${product.productNumber},
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
	</script>

</body>
</html>