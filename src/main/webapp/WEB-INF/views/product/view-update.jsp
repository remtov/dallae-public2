<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* div {
	border: 1px solid red;
} */
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

.view-update_middle-content {
	overflow: auto;
}

.view-update_middle-content--33 {
	width: 33%;
	float: left;
}

#view-update_file-box--1 {
	width: 100%;
}

.fileBox img {
	width: 100%;
}

.view-update_middle-content--33-margin {
	width: 33%;
	margin: 0px 1px 0px 1px;
	float: left;
}

.view-update_seller-info {
	overflow: auto;
	margin-top: 10px;
}

.view-update_seller-info--pic {
	float: left;
}

.view-update_seller-info--pic>img {
	width: 50px;
	height: auto;
}

.view-update_seller-info--id {
	margin-left: 10px;
	float: left;
}

.view-update_seller-info--lv {
	float: right;
}

.view-update_seller-info--lv>img {
	width: 50px;
	height: auto;
}

.view-update_seller-info--lv>span {
	font-size: 0.8em;
}

.view-update_seller-info--lv>b {
	font-size: 1.5em;
	color: #f4969b;
}

hr {
	clear: both;
	visibility: hidden;
}

#productLowestPrice {
	width: 100px;
}

#productQuantity {
	margin-bottom: 10px;
	width: 50px;
}

#productBrand {
	margin-bottom: 10px;
	width: 150px;
}

#button-left {
	float: left;
}

#button-rignt {
	float: right;
}
</style>
</head>
<body>
	<div class="view-container">
		<c:set var="userId" value="${userlogininfo.userId}"></c:set>
		<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
		<c:choose>
			<c:when test="${userLevel>2.5||userId==product.userId}">
				<!-- 관리자나 같은 아이디일 경우 페이지를 볼 수 있음-->
				<div class="container">
					<div class="inner-box2">
						<h4>
							<b>경매 수정</b> <small><a href="#"><b>${sessionScope.userlogininfo.userName}</b>(${sessionScope.userlogininfo.userId})
									<span class="badge">No.${sessionScope.userlogininfo.userNumber}</span>
							</a></small>
						</h4>
						<form id="i-form" enctype="multipart/form-data" method="POST">
							<h2>${product.productCategory}><b>${product.productName}</b><small>마감일
									: ${product.productEndDate}</small>
							</h2>

							<c:set var="productImageSplited"
								value="${fn:split(product.productImage,'|')}" />
							<div class="view-update_middle-content">
								<div class="view-update_middle-content--33">
									<div class="fileBox">
										<p>
											<label for="productImage" id="view-update_file-box--1"
												class="btn btn-default"> <span>+</span>1<br> <img
												name="preview" src="/img/product/${productImageSplited[0]}"
												id="preview" onError="this.src='/img/icon-img.png'">
											</label>
										</p>
										<p>
											<input name="productImage" required type="file"
												id="productImage" class="uploadBtn" name="productImage"
												value="${productImageSplited[0]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage2" class="btn btn-default"><span>+</span>2<br>
												<img name="preview"
												src="/img/product/${productImageSplited[1]}" id="preview2"
												onError="this.src='/img/icon-img.png'"></label>
										</p>
										<p>
											<input name="productImage2" required type="file"
												id="productImage2" class="uploadBtn"
												value="${productImageSplited[1]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage3" class="btn btn-default"><span>+</span>3<br>
												<img name="preview"
												src="/img/product/${productImageSplited[2]}" id="preview3"
												onError="this.src='/img/icon-img.png'"></label>
										</p>
										<p>
											<input name="productImage3" required type="file"
												id="productImage3" class="uploadBtn"
												value="${productImageSplited[2]}">
										</p>
									</div>
								</div>
								<div class="view-update_middle-content--33-margin">
									<div class="fileBox">
										<p>
											<label for="productImage4" class="btn btn-default"><span>+</span>4<br>
												<img name="preview"
												src="/img/product/${productImageSplited[3]}" id="preview4"
												onError="this.src='/img/icon-img.png'"></label>
										</p>
										<p>
											<input name="productImage4" required type="file"
												id="productImage4" class="uploadBtn"
												value="${productImageSplited[3]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage5" class="btn btn-default">+
												5<br> <img name="preview"
												src="/img/product/${productImageSplited[4]}" id="preview5"
												onError="this.src='/img/icon-img.png'">
											</label>
										</p>
										<p>
											<input name="productImage5" required type="file"
												id="productImage5" class="uploadBtn"
												value="${productImageSplited[4]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage6" class="btn btn-default">+
												6<br> <img name="preview"
												src="/img/product/${productImageSplited[5]}" id="preview6"
												onError="this.src='/img/icon-img.png'">
											</label>
										</p>
										<p>
											<input name="productImage6" required type="file"
												id="productImage6" class="uploadBtn"
												value="${productImageSplited[5]}">
										</p>
									</div>
								</div>
								<div class="view-update_middle-content--33">
									<div class="fileBox">
										<p>
											<label for="productImage7" class="btn btn-default">+
												7<br> <img name="preview"
												src="/img/product/${productImageSplited[6]}" id="preview7"
												onError="this.src='/img/icon-img.png'">
											</label>
										</p>
										<p>
											<input name="productImage7" required type="file"
												id="productImage7" class="uploadBtn"
												value="${productImageSplited[6]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage8" class="btn btn-default">+
												8<br> <img name="preview"
												src="/img/product/${productImageSplited[7]}"
												onError="this.src='/img/icon-img.png'" id="preview8"
												name="preview">
											</label>
										</p>
										<p>
											<input name="productImage8" required type="file"
												id="productImage8" class="uploadBtn"
												value="${productImageSplited[7]}">
										</p>
									</div>
									<div class="fileBox">
										<p>
											<label for="productImage9" class="btn btn-default">+
												9<br> <img name="preview"
												src="/img/product/${productImageSplited[8]}"
												onError="this.src='/img/icon-img.png'" id="preview9">
											</label>
										</p>
										<p>
											<input name="productImage9" required type="file"
												id="productImage9" class="uploadBtn"
												value="${productImageSplited[8]}">
										</p>
									</div>
								</div>
							</div>

							<div class="view-update_seller-info">
								<div class="view-update_seller-info--pic">
									<img src="/img/icon_profile.png">
								</div>
								<div class="view-update_seller-info--id">
									<p>
										판매자 <b>ID : ${product.userId}</b><br> 판매자 회원 <b>No.
											${product.userNumber}</b><br>
									</p>
								</div>
								<div class="view-update_seller-info--lv">
									<span>판매자 신용등급 (최고LV 10) : </span> <b> LV
										${product.userCreditLevel} </b> <img src="/img/icon-level-1.png">
								</div>
							</div>
							<hr>
							<h3>
								<span class="label label-info">경매중</span>
							</h3>
							<input required data-vc="2,50" class="form-control" type="text"
								name="productName" value="${product.productName}"><br>
							<p>
								상태 : <input required data-vc="1,30" type="text"
									name="productCondition" value="${product.productCondition}">
								| 등록일 : ${product.productDate}
							</p>
							<p>
								시작가 : <input required data-vc="1,11" type="number"
									id="productLowestPrice" name="productLowestPrice"
									value="${product.productLowestPrice}"> 원
							</p>
							<p>
								<textarea required data-vc="1,600" rows="10"
									class="form-control" name="productDesc">${product.productDesc}</textarea>
							</p>
							<p>
								제품수량 : <input data-vc="1,3" required type="number"
									name="productQuantity" id="productQuantity"
									value="${product.productQuantity}"> 개
							</p>
							<p>
								브랜드명 : <input required data-vc="1,20" type="text"
									name="productBrand" id="productBrand"
									value="${product.productBrand}">
							</p>
							<p>
								<button class="btn btn-danger btn-lg" type="button"
									onclick="deleteBtn(${product.productNumber})" id="button-left">삭제</button>
								<button class="btn btn-primary btn-lg" type="button"
									onclick="updateBtn(${product.productNumber})" id="button-rignt">수정</button>
							</p>
							<hr>
						</form>
					</div>
					<p><%@ include file="/WEB-INF/views/common/content-final.jspf"%></p>
				</div>
				<p><%@ include file="/WEB-INF/views/product/product-bottom.jspf"%></p>
			</c:when>
			<c:otherwise>
				<p><%@ include file="/WEB-INF/views/common/no-session.jspf"%></p>
			</c:otherwise>
		</c:choose>
	</div>
	<script>
window.addEventListener('load', function() {
	var fileInputs = document.querySelectorAll('.uploadBtn');
	var previews = document.querySelectorAll('*[name=preview]');
	
	fileInputs.forEach((e, i) => {
		e.onchange = function(event) {
			let url = URL.createObjectURL(event.target.files[0]);   
			console.log(url);
			previews[i].src = url;
		};
	});
});
	
function imgVali() {
	var imgs = document.querySelectorAll('input[type="file"]');
	for(img of imgs){
		img = img.value.substring(img.value.lastIndexOf('.') + 1);
		if (img.toUpperCase() != 'JPG'
				&& img.toUpperCase() != 'PNG') {
			alert("jpg 나 png파일을 넣어주세요");
			return false;
		}
	}
	return true;
}

function deleteBtn(dsa){
		$.ajax({
			url : '/product/'+${product.productNumber},
			type : 'DELETE',
			success : function(){
				location.href = '/url/product:list';
				alert('성공');
			}
		})
	}

function updateBtn(){
		var form = document.querySelector('#i-form');
		var formData = new FormData(form);
		
		if(valiCheck()){
			$.ajax({
				url : '/product/'+${product.productNumber},
				contentType : false,
				processData : false,
				data : formData,
				type : 'POST',
				success : function(){
					location.href = '/url/product:list';
					alert('성공');
				}
			});
		}
}
</script>
</body>
</html>