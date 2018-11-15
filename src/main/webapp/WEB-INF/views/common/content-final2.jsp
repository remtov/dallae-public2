
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>test search</title>
<style>
</style>
<script>
	</script>

</head>


<body>

	<hr style="clear: both;">

	<div style="width: 28%; float: left;">
		<select class="form-control input" id="search">
			<option value="#">선택하세요</option>
			<option value="productNumber">경매번호</option>
			<option value="productName">경매제목</option>
			<option value="productCategory">분류아이디</option>
			<option value="productQuantity">수량</option>
			<option value="productDate">등록시간</option>
			<option value="productEndDate">마감시간</option>
			<option value="productLowestPrice">현재입찰가격</option>
			<option value="productImage">이미지</option>
			<option value="productDesc">설명</option>
			<option value="productBrand">브랜드</option>
			<option value="productCondition">상태</option>
			<option value="userId">판매자ID</option>
			<option value="userCreditLevel">판매자 신용등급</option>
			<option value="userNumber">판매자 번호</option>
		</select>
	</div>

	<div style="width: 38%; float: left; margin: 0px 5px 0px 5px;">
		<input class="form-control input" type="text" id="search-ex">
	</div>


	<div style="width: 28%; float: right;">
		<button class="btn btn-primary btn btn-block" type="button" onclick="search()">검색</button>
	</div>
	<br>
	
	<hr style="clear: both;">
	<div id="product-div"></div>


	<script>
  function search(){
 		var ser =document.querySelector('#search').value;	
		var tex = document.querySelector('#search-ex').value;
		var params = ser + '=' + tex;
		var conf = {
		param : params,
		url : '/productlist',
		success : function(res){
			res = JSON.parse(res);
			document.querySelector('#product-div').innerHTML = '';
			var html = '';
			for(var product of res){
				html += '<button onclick="location.href=\'/product/'+ product.productNumber +'\'">'+product.productNumber+'</button>';
				html += '<p>' +product.productNumber + '</p>';
				html += '<p>' +product.productName+ '</p>';
				html += '<p>' +product.productCategory+ '</p>';
				html += '<p>' +product.productQuantity+ '</p>';
				html += '<p>' +product.productDate+ '</p>';
				html += '<p>' +product.productEndDate+ '</p>';
				html += '<p>' +product.productLowestPrice+ '</p>';
				html += '<p>' +product.productImage+ '</p>';
				html += '<p>' +product.productDesc+ '</p>';
				html += '<p>' +product.productBrand+ '</p>';
				html += '<p>' +product.productCondition+ '</p>';
				html += '<p>' +product.userId+ '</p>';
				html += '<p>' +product.userCreditLevel+ '</p>';
				html += '<p>' +product.userNumber+ '</p>';
				
			} 
			document.querySelector('#product-div').insertAdjacentHTML('afterbegin',html);
		}
	}
		var ajaxUtil = new AjaxUtil(conf);
		ajaxUtil.send();
	}
	 window.addEventListener('load',search);
	 </script>