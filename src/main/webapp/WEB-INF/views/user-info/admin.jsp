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
	/* border: 3px solid red; */
	
}
</style>

</head>


<body>



	<c:set var="userId" value="${userlogininfo.userId}"></c:set>
	<c:choose>
		<c:when test="${userId=='admin'}">


			<!-- 관리자만보이는영역 -->

			<!-- 회색바탕 -->
			<div class="view-container">
				<!-- 컨텐츠컨테이너 -->
				<div class="container">
					<!-- 2분할 -->
					<div class="row">
						<!-- 좌측메뉴 -->
						<div class="col-md-2" style="background-color: #f6f6f6;"></div>


						<!-- 우측컨텐츠 -->
						<div class="col-md-10" style="background-color: #f6f6f6;">


							<div class="col-md-6">
							
								<h3>관리자 페이지</h3>
								<p>모든 컨텐츠와 회원정보를 편집하거나 관리할 수 있는 페이지 입니다.</p>
								userImage-view--test :<img
									src="/img/user-info/${userlogininfo.userImage}"
									style="width: 100px; height: auto;">

							</div>



							<!-- 검색창영역 -->
							<hr style="clear: both;">


							<div class="admin-main_search-line">
								<div class="col-md-3">
									<select class="form-control input" id="search">
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

								<div class="col-md-7">
									<input class="form-control input" type="text" id="search-ex">
								</div>


								<div class="col-md-2">
									<button class="btn btn-default btn btn-block" type="button"
										onclick="search()">검색</button>
								</div>
							</div>
							<!-- 검색창영역 -->
							<div class="admin-right_table-member">
								<table style="margin-top: 20px;" class="table table-hover">
									<thead>
										<tr>

											<th>번호</th>
											<th>이름</th>
											<th>아이디</th>
											<th>비밀번호</th>
											<th>이메일</th>
											<th>별명</th>
											<th>폰번호</th>
											<th>가입일</th>
											<th>주소</th>
											<th>상세주소</th>
											<th>권한</th>
											<th>포인트</th>
											<th>신용등급</th>
											<th>사진</th>
										</tr>
									</thead>
									
									<tbody id="user-info_div">
									</tbody>
								</table>
							</div>
						</div>
						<!-- 우측컨텐츠 -->
					</div>
				</div>
			</div>

			<script>
 
 
	function search(){
 
		var ser =document.querySelector('#search').value;	
		var tex = document.querySelector('#search-ex').value;
		var params = ser + '=' + tex;
	
		var conf = {
		param : params,
		url : '/userinfo',
		success : function(res){
			res = JSON.parse(res);
			document.querySelector('#user-info_div').innerHTML = '';
			var html = '';
			for(var userInfo of res){
				html += '<tr onclick="location.href=\'/user-info_view/'+ userInfo.userNumber +'\'">';
				html += '<td>' +userInfo.userNumber + '</td>';
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
			
		
	var au = new AjaxUtil(conf);
	au.send();
	}
	
	
	
 window.addEventListener('load',search);
 
</script>
			<!-- 관리자만보이는영역 -->
		</c:when>



		<c:otherwise>

			<!-- 세션없는 사람에게 보이는 영역 -->
			<div class="admin-container_no-session">
				<div id="session-less" style="margin: auto;">

					<img src="/img/icon_login.png">

					<h3>
						<a href="/url/user-info:login">관리자 ID로 <b>로그인</b></a> 부탁드립니다. <small><a
							href="/">| <b>홈으로</b></a></small>
					</h3>
					<p>
						권한 에러 : 페이지에 대한 <b>권한</b>이 없으십니다.
					</p>

				</div>
			</div>

			<!-- 세션없는 사람에게 보이는 영역 -->



		</c:otherwise>

	</c:choose>





</body>
</html>


<!--<c:set var="grade" value=""></c:set>
랜덤으로 선택된 등급코드는 ${grade}이며 <br />
<c:choose>
  <c:when test="${grade=='a1'}">
     당신의 접근권한은  A1입니다!!
  </c:when>
  <c:when test="${grade=='a2'}">
     당신의 접근권한은  A2입니다!!
  </c:when>
  <c:when test="${grade=='a3'}">
     당신의 접근권한은  A3입니다!!
  </c:when>
  <c:when test="${grade=='a4'}">
     당신의 접근권한은  A4입니다!!
  </c:when>
  <c:otherwise>
     당신의 접근권한은  A5이하입니다!!
  </c:otherwise>
</c:choose>   

</body>
</html>  -->