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
</head>
<body>
	<%@ include file="/WEB-INF/views/common/head-admin.jspf"%>
	<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
	<c:choose>
		<c:when test="${userLevel>2.5}">
			<div class="view-container">

				<h3>
					<b>관리자</b> 페이지
				</h3>
				<p>모든 컨텐츠와 회원정보를 편집하거나 관리할 수 있는 페이지 입니다.</p>
				<hr style="clear: both;">


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
							role="tabpanel" aria-labelledby="headingOne"
							style="overflow: auto;">
							<div class="panel-body">


								<div style="width: 28%; float: left;">
									<select class="form-control" id="search-select_user-info">
										<option value="#">선택</option>
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
										id="search-value_user-info" onkeyup="enter(event)">
								</div>
								<div style="width: 8%; float: left;">
									<button class="btn btn-default" type="button"
										onclick="javascript:searchEmpty()">x</button>
								</div>
							</div>

							<div class="table-responsive">
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
											<th>상세주소</th>
											<th>권한등급</th>
											<th>신용점수</th>
											<th>신용등급</th>

										</tr>
									</thead>
									<tbody id="user-info_div">
									</tbody>
								</table>
							</div>
						</div>


					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading" role="tab" id="headingTwo">
						<h4 class="panel-title">
							<a class="collapsed" data-toggle="collapse"
								data-parent="#accordion" href="#collapseTwo"
								aria-expanded="false" aria-controls="collapseTwo">
								Collapsible Group Item #2 </a>
						</h4>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse"
						role="tabpanel" aria-labelledby="headingTwo">
						<div class="panel-body">


							<div style="width: 28%; float: left;">
								<select class="form-control" id="search-select_product">
									<option value="#">선택</option>
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
									id="search-value_product" onkeyup="enterProduct(eventProduct)">
							</div>
							<div style="width: 8%; float: left;">
								<button class="btn btn-default" type="button"
									onclick="javascript:searchEmpty()">x</button>
							</div>
						</div>

						<div class="table-responsive">
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
										<th>상세주소</th>
										<th>권한등급</th>
										<th>신용점수</th>
										<th>신용등급</th>

									</tr>
								</thead>
								<tbody id="user-info_div">
								</tbody>
							</table>
						</div>
					</div>





				</div>
			</div>

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
					<div class="panel-body">
						<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
					</div>
				</div>
			</div>








		</c:when>
		<c:otherwise>
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
		</c:otherwise>
	</c:choose>
	<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
	<script>
function enter(ent) {
	var code = ent.which ? ent.which : event.keyCode;
	if (code != 0) {
		search()
	}
}
function searchEmpty() {
$('#search-value_user-info').val('');
}

	function search(){
		var ser =document.querySelector('#search-select_user-info').value;	
		var tex = document.querySelector('#search-value_user-info').value;
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
	}
 window.addEventListener('load',search);
</script>
</body>
</html>
