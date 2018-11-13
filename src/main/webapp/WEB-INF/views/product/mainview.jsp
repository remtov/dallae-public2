

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
					경매 보기 <small><a href="#" style="color: gray;"> </a></small>
				</h3>
			</div>



			<!-- 폼 분할 -->
			<h4>경매 물품정보 수정</h4>

			<h3>${product.productCategory}><b>${product.productName} </b><small>
					마감일 : ${product.productEndDate}</small>
			</h3>


			<div style="overflow: auto;">
				<div style="width: 100%; float: left;">
					<div class="fileBox">
						<img style="width: 100%"
							src="/resources/img/product/${product.productImage}" id="preview">
					</div>

				</div>
			</div>




			<div style="overflow: auto; margin-top: 10px;">
				<div style="float: left;">
					<img style="width: 50px; height: auto;" src="/img/icon_profile.png">
				</div>

				<div style="margin-left: 10px; float: left;">
					<p>
						<a style="font-size: 1.2em;"
							href="/userinfo_my-page/${product.userNumber}">판매자 ID : <b>${product.userId}</b>
							님의 페이지로 가기
						</a> <br> 게시물 번호: ${product.productNumber} <br>





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


			<h3>${product.productName}</h3>
			<p>상태 : ${product.productCondition} | 등록일 :
				${product.productDate}</p>


			<p>시작가 : ${product.productLowestPrice} 원</p>

			<p>${product.productDesc}</p>



			<p>
				제품수량 : <b>${product.productQuantity}</b> 개<br> 브랜드명 :
				${product.productBrand}
			</p>

			<c:set var="userId" value="${userlogininfo.userId}"></c:set>
			<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
			<c:choose>
				<c:when test="${userLevel>2.5}">
					<button class="btn btn-default btn-lg" type="button"
						onclick="updateBtn(${product.productNumber})">수정</button>

				</c:when>
				<c:when test="${userId==product.userId}">

					<button class="btn btn-default btn-lg" type="button"
						onclick="updateBtn(${product.productNumber})">수정</button>
				</c:when>
				<c:otherwise>

	</c:otherwise>
	</c:choose>

					<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
		</div>

	</div>



	<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>


	<script>
		function updateBtn(productNumber) {
			location.href = '/productupdate/' + productNumber;
		}
	</script>