<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>관리자 페이지</title>
</head>
<body>
	<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
	<c:choose>
		<c:when test="${userLevel>2.5}">
			<div class="view-container">
				<div class="container">
					<h3>관리자 페이지</h3>
					<p>모든 컨텐츠와 회원정보를 편집하거나 관리할 수 있는 페이지 입니다.</p>
					<hr style="clear: both;">
					<div style="width: 28%; float: left;">
						<select class="form-control input" id="search-select_user-info">
							<option value="#">선택하세요</option>
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
					<div style="width: 38%; float: left; margin: 0px 5px 0px 5px;">
						<input class="form-control input" type="text"
							id="search-value_user-info">
					</div>
					<div style="width: 28%; float: left;">
						<button class="btn btn-default btn btn-block" type="button"
							onclick="search()">검색</button>
					</div>
				</div>
				<div class="container"
					style="margin-top: 20px; background-color: white;">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>이름</th>
									<th>아이디</th>
									<th>비밀번호</th>
									<th>이메일</th>
									<th>별명</th>
									<th>폰번호</th>
									<th>주소</th>
									<th>상세주소</th>
									<th>권한등급</th>
									<th>신용점수</th>
									<th>신용등급</th>
									<th>사진</th>
								</tr>
							</thead>
							<tbody id="user-info_div">
							</tbody>
						</table>
					</div>
					<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
		</c:otherwise>
	</c:choose>
<script>
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
				html += '<td>' +userInfo.userPassword+ '</td>';
				html += '<td>' +userInfo.userEmail+ '</td>';
				html += '<td>' +userInfo.userNickName+ '</td>';
				html += '<td>' +userInfo.userPhoneNum+ '</td>';
				html += '<td>' +userInfo.userAddress+ '</td>';
				html += '<td>' +userInfo.userAddress2+ '</td>';
				html += '<td>' +userInfo.userLevel+ '</td>';
				html += '<td>' +userInfo.userPoint+ '</td>';
				html += '<td>' +userInfo.userCreditLevel+ '</td>';
				html += '<td>' +userInfo.userImage+ '</td>';
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
