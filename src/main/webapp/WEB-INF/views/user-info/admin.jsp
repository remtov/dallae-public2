<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>관리자 페이지</title>
<style>
div {
	/* border: 1px solid red; */
	
}
</style>
<script>
/* 셀렉트필수 잇풋활성화 */
	 function searchValueUserInfoOpen(value){ 
		 if(value!='#'){
			 document.getElementById('search-value_user-info').disabled = 0;	 
		 }else{
			 document.getElementById('search-value_user-info').disabled = 1; 
		 }
	 }
	 
	 function searchValueProductOpen(value){ 
		 if(value!='#'){
			 document.getElementById('search-value_product').disabled = 0;	 
		 }else{
			 document.getElementById('search-value_product').disabled = 1; 
		 }
	 }
	 function searchValueProductBiddingOpen(value){ 
		 if(value!='#'){
			 document.getElementById('search-value_product-bidding').disabled = 0;	 
		 }else{
			 document.getElementById('search-value_product-bidding').disabled = 1; 
		 }
	 }
	 function searchValueSellerInfoOpen(value){ 
		 if(value!='#'){
			 document.getElementById('search-value_seller-info').disabled = 0;	 
		 }else{
			 document.getElementById('search-value_seller-info').disabled = 1; 
		 }
	 }
	 
</script>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/head-admin.jspf"%>
	<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
	<c:choose>
		<c:when test="${userLevel>2.5}">
			<div class="view-container" style="padding: 10px 20px 10px 20px;">
				<div class="panel-group" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" aria-expanded="true"
									aria-controls="collapseOne">
									<button class="btn btn-default btn-block">
										<b>회원</b> 정보
									</button>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<div style="width: 28%; float: left;">
									<select class="form-control" id="search-select_user-info"
										onchange="searchValueUserInfoOpen(value)">
										<option selected disabled>선택</option>
										<option value="userNumber">번호</option>
										<option value="userName">이름</option>
										<option value="userId">아이디</option>
										<option value="userPassword">비밀번호</option>
										<option value="userEmail">이메일</option>
										<option value="userNickName">별명</option>
										<option value="userPhoneNum">폰번호</option>
										<option value="userAddress">주소</option>
										<option value="userAddress2">상세주소</option>
										<option value="userSignUpDate">가입일자</option>
										<option value="userLevel">권한</option>
										<option value="userPoint">포인트</option>
										<option value="userCreditLevel">신용등급</option>
									</select>
								</div>
								<div style="width: 60%; float: left; margin: 0px 2% 0px 2%;">
									<input class="form-control" type="text"
										id="search-value_user-info" onkeyup="enter(event)"
										placeholder="왼쪽의 요소를 선택한 뒤에 검색하세요" disabled>
								</div>
								<div style="width: 8%; float: left;">
									<button class="btn btn-default" type="button"
										onclick="javascript:searchEmpty()">x</button>
								</div>
							</div>

							<div class="table-responsive"
								style="height: 300px; background-color: #f6f6f6 !important; overflow: auto;">
								<table class="table table-hover"
									style="border: 1px solid #cccccc;">
									<thead>
										<tr>
											<th>번호</th>
											<th>이름</th>
											<th>아이디</th>
											<th>이메일</th>
											<th>별명</th>
											<th>폰번호</th>
											<th>주소</th>
											<th>주소2</th>
											<th>권한</th>
											<th>신용</th>
											<th>LV</th>
										</tr>
									</thead>
									<tbody id="user-info_div">
									</tbody>
								</table>
							</div>
						</div>


					</div>
				</div>
				<!-- 회원정보 -->
				<!-- 경매품리스트 -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								<button class="btn btn-default btn-block">
									<b>경매품</b> 리스트
								</button>
							</a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">
							<div style="width: 28%; float: left;">
								<select class="form-control" id="search-select_product"
									onchange="searchValueProductOpen(value)">
									<option selected disabled>선택</option>
									<option value="productNumber">번호</option>
									<option value="productName">이름</option>
									<option value="productCategory">분류</option>
									<option value="productQuantity">수량</option>
									<option value="productDate">등록일</option>
									<option value="productEndDate">마감시</option>
									<option value="productLowestPrice">가격</option>
									<option value="productImage">사진</option>
									<option value="productDesc">설명</option>
									<option value="productBrand">브랜드</option>
									<option value="productCondition">상태</option>
									<option value="userId">경매자</option>
									<option value="userCreditLevel">경매자신용등급</option>
									<option value="userNumber">경매자번호</option>
								</select>
							</div>
							<div style="width: 60%; float: left; margin: 0px 2% 0px 2%;">
								<input class="form-control" type="text"
									id="search-value_product" onkeyup="enterProduct(event)"
									placeholder="왼쪽의 요소를 선택한 뒤에 검색하세요" disabled>
							</div>
							<div style="width: 8%; float: left;">
								<button class="btn btn-default" type="button"
									onclick="javascript:searchEmptyProduct()">x</button>
							</div>
						</div>

						<div class="table-responsive"
							style="height: 300px; background-color: #f6f6f6 !important; overflow: auto;">
							<table class="table table-hover"
								style="border: 1px solid #cccccc;">
								<thead>
									<tr>
										<th>번호</th>
										<th>이름</th>
										<th>분류</th>
										<th>수량</th>
										<th>등록일</th>
										<th>마감시</th>
										<th>가격</th>
										<!-- <th>사진</th> -->
										<th>설명</th>
										<th>브랜드</th>
										<th>상태</th>
										<th>경매자</th>
										<th>신용</th>
										<th>경매자No</th>
									</tr>
								</thead>
								<tbody id="product_div">
								</tbody>
							</table>
						</div>


					</div>
				</div>
				<!-- 경매품리스트 -->

				<!-- 경매품리스트 섬네일 -->
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingThree">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseThree"
								aria-expanded="false" aria-controls="collapseThree">
								<button class="btn btn-default btn-block">
									<b>경매품</b> 리스트 - 섬네일
								</button>
							</a>
						</h4>
					</div>
					<div id="collapseThree" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingThree">
						<div class="panel-body"
							style="height: 600px; background-color: #f6f6f6 !important; overflow: auto;">
							<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
						</div>
					</div>
				</div>
				<!-- 경매품리스트 섬네일-->


				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFour">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFour"
								aria-expanded="false" aria-controls="collapseFour">
								<button class="btn btn-default btn-block">
									<b>입찰</b> 정보
								</button>
							</a>
						</h4>
					</div>
					<div id="collapseFour" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFour">
						<div class="panel-body">
							<div style="width: 28%; float: left;">
								<select class="form-control" id="search-select_product-bidding"
									onchange="searchValueProductBiddingOpen(value)">
									<option selected disabled>선택</option>
									<option value="productNumber">경매품번호</option>
									<option value="bidCount">입찰수</option>
									<option value="bidsDate">입찰시</option>
									<option value="biddingId">입찰자ID</option>
									<option value="biddingStatus">상태</option>
								</select>
							</div>
							<div style="width: 60%; float: left; margin: 0px 2% 0px 2%;">
								<input class="form-control" type="text"
									id="search-value_product-bidding"
									onkeyup="enterProductBidding(event)"
									placeholder="왼쪽의 요소를 선택한 뒤에 검색하세요" disabled>
							</div>
							<div style="width: 8%; float: left;">
								<button class="btn btn-default" type="button"
									onclick="javascript:searchEmptyProductBidding()">x</button>
							</div>
						</div>

						<div class="table-responsive"
							style="height: 300px; background-color: #f6f6f6 !important; overflow: auto;">
							<table class="table table-hover"
								style="border: 1px solid #cccccc;">
								<thead>
									<tr>
										<th>경매품번호</th>
										<th>입찰수</th>
										<th>입찰시</th>
										<th>입찰자ID</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody id="productBidding_div">
								</tbody>
							</table>

						</div>
					</div>
				</div>
				<!-- 입찰 정보 -->



				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingFive">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseFive"
								aria-expanded="false" aria-controls="collapseFive">
								<button class="btn btn-default btn-block">
									<b>경매자</b> 정보
								</button>
							</a>
						</h4>
					</div>
					<div id="collapseFive" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingFive">
						<div class="panel-body">
							<div style="width: 28%; float: left;">
								<select class="form-control" id="search-select_seller-info"
									onchange="searchValueSellerInfoOpen(value)">
									<option selected disabled>선택</option>
									<option value="sellerInfoNumber">경매자번호</option>
									<option value="sellerAccountNumber">계좌번호</option>
									<option value="sellerBank">은행</option>
									<option value="sellerPoint">포인트</option>
								</select>
							</div>
							<div style="width: 60%; float: left; margin: 0px 2% 0px 2%;">
								<input class="form-control" type="text"
									id="search-value_seller-info" onkeyup="enterSellerInfo(event)"
									placeholder="왼쪽의 요소를 선택한 뒤에 검색하세요" disabled>
							</div>
							<div style="width: 8%; float: left;">
								<button class="btn btn-default" type="button"
									onclick="javascript:searchEmptySellerInfo()">x</button>
							</div>
						</div>

						<div class="table-responsive"
							style="height: 300px; background-color: #f6f6f6 !important; overflow: auto;">
							<table class="table table-hover"
								style="border: 1px solid #cccccc;">
								<thead>
									<tr>
										<th>번호</th>
										<th>계좌</th>
										<th>은행</th>
										<th>포인트</th>
									</tr>
								</thead>
								<tbody id="sellerInfo_div">
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!-- 경매자정보 -->
			</div>
			<!-- 전체 -->





		</c:when>
		<c:otherwise>
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
		</c:otherwise>
	</c:choose>
	
	<script>
	
function enter(ent) {
	var code = ent.which ? ent.which : event.keyCode;
	if (code != 0) {
		search()
	}
}
function enterProduct(entProduct) {
	var codeProduct = entProduct.which ? entProduct.which : event.keyCode;
	if (codeProduct != 0) {
		search()
	}
}
function enterProductBidding(entProductBidding) {
	var codeProductBidding = entProductBidding.which ? entProductBidding.which : event.keyCode;
	if (codeProductBidding != 0) {
		search()
	}
}
function enterSellerInfo(entSellerInfo) {
	var codeSellerInfo = entSellerInfo.which ? entSellerInfo.which : event.keyCode;
	if (codeSellerInfo != 0) {
		search()
	}
}

function searchEmpty() {
$('#search-value_user-info').val('');
}
function searchEmptyProduct() {
	$('#search-value_product').val('');
	}
function searchEmptyProductBidding() {
	$('#search-value_product-bidding').val('');
	}
function searchEmptySellerInfo() {
	$('#search-value_seller-info').val('');
	}
	
window.addEventListener('load',search);
	function search(){
		var ser =document.querySelector('#search-select_user-info').value;	
		var tex = document.querySelector('#search-value_user-info').value;
		var serProduct =document.querySelector('#search-select_product').value;	
		var texProduct = document.querySelector('#search-value_product').value;
		var serProductBidding =document.querySelector('#search-select_product-bidding').value;	
		var texProductBidding = document.querySelector('#search-value_product-bidding').value;
		var serSellerInfo =document.querySelector('#search-select_seller-info').value;	
		var texSellerInfo = document.querySelector('#search-value_seller-info').value;
		
	/* 회원조회 */	
		var params = ser + '=' + tex;
		var conf = {
		url : '/userinfolist?' + params,
		method:'GET',
		success : function(res){ 
			res = JSON.parse(res);
			document.querySelector('#user-info_div').innerHTML = '';
			var html = '';
			for(var userInfo of res){
				html += '<tr onclick="location.href=\'/userinfo/'+userInfo.userNumber+'\'">';
				html += '<td>' +userInfo.userNumber+ '</td>';
				html += '<td>' +userInfo.userName+ '</td>';
				html += '<td>' +userInfo.userId+ '</td>';
				html += '<td>' +userInfo.userEmail+ '</td>';
				html += '<td>' +userInfo.userNickName+ '</td>';
				html += '<td>' +userInfo.userPhoneNum+ '</td>';
				html += '<td>' +userInfo.userAddress+ '</td>';
				html += '<td>' +userInfo.userAddress2+ '</td>';
				html += '<td>' +userInfo.userLevel+ '</td>';
				html += '<td>' +userInfo.userPoint+ '</td>';
				html += '<td>' +userInfo.userCreditLevel+ '</td>';
				html += '</tr>';
		
 				} 
			document.querySelector('#user-info_div').insertAdjacentHTML('afterbegin',html);
		}
	}
		var ajaxUtil = new AjaxUtil(conf);
		ajaxUtil.send();
		
		/* 경매품조회 */
		 var paramsProduct = serProduct + '=' + texProduct;
		 var confProduct = {
		url : '/productlist?' + paramsProduct,
		method:'GET',
		success : function(resProduct){ 
			resProduct = JSON.parse(resProduct);
			document.querySelector('#product_div').innerHTML = '';
			var html = '';
			for(var product of resProduct){
				html += '<tr onclick="location.href=\'/productupdate/'+product.productNumber+'\'">';
				html += '<td>' +product.productNumber+ '</td>';
				html += '<td>' +product.productName+ '</td>';
				html += '<td>' +product.productCategory+ '</td>';
				html += '<td>' +product.productQuantity+ '</td>';
				html += '<td>' +product.productDate+ '</td>';
				html += '<td>' +product.productEndDate+ '</td>';
				html += '<td>' +product.productLowestPrice+ '</td>';
				/* html += '<td>' +product.productImage+ '</td>'; */
				html += '<td><div style="width:300px;white-space: nowrap; text-overflow: ellipsis;overflow: hidden;">' +product.productDesc+ '</div></td>';
				html += '<td>' +product.productBrand+ '</td>';
				html += '<td>' +product.productCondition+ '</td>';
				html += '<td>' +product.userId+ '</td>';
				html += '<td>' +product.userCreditLevel+ '</td>';
				html += '<td>' +product.userNumber+ '</td>';
				html += '</tr>';

 				} 
			document.querySelector('#product_div').insertAdjacentHTML('afterbegin',html);
		}
	}
		 ajaxUtilProduct = new AjaxUtil(confProduct);
		ajaxUtilProduct.send();
		
		/* 입찰정보조회 */
		 var paramsProductBidding = serProductBidding + '=' + texProductBidding;
		 var confProductBidding = {
		url : '/biddinglist?' + paramsProductBidding,
		method:'GET',
		success : function(resProductBidding){ 
			resProductBidding = JSON.parse(resProductBidding);
			document.querySelector('#productBidding_div').innerHTML = '';
			var html = '';
			for(var productBidding of resProductBidding){
				html += '<tr>';
				html += '<td>' +productBidding.productNumber+ '</td>';
				html += '<td>' +productBidding.bidCount+ '</td>';
				html += '<td>' +productBidding.bidsDate+ '</td>';
				html += '<td>' +productBidding.biddingId+ '</td>';
				html += '<td>' +productBidding.biddingStatus+ '</td>';
				html += '</tr>';

 				} 
			document.querySelector('#productBidding_div').insertAdjacentHTML('afterbegin',html);
		}
	}
		 ajaxUtilProductBidding = new AjaxUtil(confProductBidding);
		ajaxUtilProductBidding.send();
		
		/* 경매자정보조회 */
		 var paramsSellerInfo = serSellerInfo + '=' + texSellerInfo;
		 var confSellerInfo = {
		url : '/sellerinfolist?' + paramsSellerInfo,
		method:'GET',
		success : function(resSellerInfo){ 
			resSellerInfo = JSON.parse(resSellerInfo);
			document.querySelector('#sellerInfo_div').innerHTML = '';
			var html = '';
			for(var sellerInfo of resSellerInfo){
				html += '<tr>';
				html += '<td>' +sellerInfo.sellerInfoNumber+ '</td>';
				html += '<td>' +sellerInfo.sellerAccountNumber+ '</td>';
				html += '<td>' +sellerInfo.sellerBank+ '</td>';
				html += '<td>' +sellerInfo.sellerPoint+ '</td>';
				html += '</tr>';
				} 
			document.querySelector('#sellerInfo_div').insertAdjacentHTML('afterbegin',html);
		}
	}
		 ajaxUtilSellerInfo = new AjaxUtil(confSellerInfo);
		ajaxUtilSellerInfo.send();
				
		
	}
 
</script>
</body>
</html>
