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



	<c:set var="userid" value="${userLoginInfo.signupId}"></c:set>
	<c:choose>
		<c:when test="${userid=='관리자'}">


			<!-- 관리자만보이는영역 -->

			<!-- 회색바탕 -->
			<div class="view-container">
				<!-- 컨텐츠컨테이너 -->
				<div class="container">
					<!-- 2분할 -->
					<div class="row">
						<!-- 좌측메뉴 -->
						<div class="col-md-2" style="background-color: #f6f6f6;">
							


						</div>


						<!-- 우측컨텐츠 -->
						<div class="col-md-10" style="background-color: #f6f6f6;">


							<div class="col-md-6">
								<h3>관리자 페이지</h3>
								<p>모든 컨텐츠와 회원정보를 편집하거나 관리할 수 있는 페이지 입니다.</p>
							</div>

							<!-- 상단광고 -->
							<div class="col-md-6">
								<img style="margin-top: 20px;" class="pull-right"
									src="http://www.koitt.com/data/file/right_banner/3547767421_JgukId0s_rb04.jpg">

							</div>

							<!-- 상단광고 -->


							<!-- 검색창영역 -->
							<hr style="clear: both;">

							<div class="admi-main_search-line">
								<div class="col-md-3">
									<select class="form-control input" id="serch">
										<option value="signupNum">선택하세요</option>
										<option value="signupNum">회원 번호</option>
										<option value="signupName">회원 이름</option>
										<option value="signupId">회원id</option>
										<option value="signupPassword">회원 비밀번호</option>
										<option value="signupEmail">회원 email</option>
										<option value="signupNickName">회원 별명</option>
										<option value="signupDate">회원가입 일자</option>
										<option value="signupConcern">회원 관심사</option>
										<option value="signupPersonallity">회원 주민등록번호</option>
										<option value="signupPhone">회원폰번호</option>
									</select>
								</div>

								<div class="col-md-7">
									<input class="form-control input" type="text" id="serchEx">
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

											<th>회원 번호</th>
											<th>회원 이름</th>
											<th>회원id</th>
											<th>회원 비밀번호</th>
											<th>회원 email</th>
											<th>회원 별명</th>
											<th>회원가입 일자</th>
											<th>회원 관심사</th>
											<th>회원 주민등록번호</th>
											<th>회원폰번호</th>
										</tr>
									</thead>
									<tbody id="liBody">
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
 
		var ser =document.querySelector('#serch').value;	
		var tex = document.querySelector('#serchEx').value;
		var params = ser + '=' + tex;
	
		var conf = {
		param : params,
		url : '/SignUp',
		success : function(res){
			res = JSON.parse(res);
			document.querySelector('#liBody').innerHTML = '';
			var html = '';
			for(var su of res){
				html += '<tr onclick="location.href=\'/SignUpView/'+ su.signupNum +'\'">';
				html += '<td>' + su.signupNum + '</td>';
				html += '<td>' +su.signupName+ '</td>';
				html += '<td>' +su.signupId+ '</td>';
				html += '<td>' +su.signupPassword+ '</td>';
				html += '<td>' +su.signupEmail+ '</td>';
				html += '<td>' +su.signupNickName+ '</td>';
				html += '<td>' +su.signupDate+ '</td>';
				html += '<td>' +su.signupConcern+ '</td>';
				html += '<td>' +su.signupPersonallity+ '</td>';
				html += '<td>' +su.signupPhone+ '</td>';
				html += '</tr>';
 
			
			} 
			document.querySelector('#liBody').insertAdjacentHTML('afterbegin',html);
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
						<a href="/url/SignUp:login">관리자 ID로 <b>로그인</b></a> 부탁드립니다. <small><a
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