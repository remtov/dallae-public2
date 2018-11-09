<!-- 백엔드- 현재 판매자 아이디와 관리자아이디로 레벨구현중인데
레벨컬럼을 추가하여 레벨권한 구현해야할듯 -->


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Login</title>

<style>
div {
	/* border: 1px solid red; */
	
}

h1 {
	margin-top: 50px;
}

.row>p {
	margin-bottom: 100px;
}
</style>

</head>
<body>



	<div class="find-container">
		<div class="container" id="find_container--800">

			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">
					<!-- 로그인된 상태인 사람이 이 페이지를 열었을 때 보여지는 영역-->
					<head>
<style>
h1 {
	margin-top: 150px;
}
</style>
					</head>


					<body>
						<div class="row">

							<h1>
								"<b>${sessionScope.userlogininfo.userId}</b>"님 반갑습니다.
							</h1>
							<p>
								로그인 된 상태입니다. (이메일 : " <b><c:out
										value="${sessionScope.userlogininfo.userEmail}" /></b>") <a
									onclick="history.back()">뒤로가기</a>
							</p>
							<div class="col-md-4">
								<button class="btn btn-default btn-lg btn-block" type="button"
									onclick="logOut()">로그아웃</button>
							</div>
							<div class="col-md-4">
								<button class="btn btn-default btn-lg btn-block" type="button"
									onclick="location.href='/url/user-info:my-page'">마이페이지</button>
							</div>
							<div class="col-md-4">
								<button class="btn btn-primary btn-lg btn-block" type="button"
									onclick="location.href='#'">판매자 인증하러 가기</button>
							</div>
						</div>
					</body>
					<!-- 로그인된상태인 사람이 이 페이지를 열었을때 보여지는 영역-->
				</c:when>
				<c:otherwise>

					<div>
						<h1>로그인</h1>
						<p>
							아직 가입하지 않으셨습니까? <a onclick="signUp()">회원가입</a>
						</p>
						<p style="color: red;">
							테스트<br> id:admin pw:123 _ 관리자 테스트를 할 수 있습니다.<br>
							id:sell pw:123 _ 판매자 테스트를 할 수 있습니다.
						</p>
					</div>
					<form id="login" class="form-horizontal">
						<div class="form-group">
							<label for="userId" class="col-sm-2 control-label">아이디</label>
							<div class="col-sm-10">
								<input type="text" onkeypress="enter(event)" id="userId"
									data-vali="2" class="form-control" placeholder="아이디를 입력하세요.">
							</div>
						</div>

						<div class="form-group">
							<label for="userPassword" class="col-sm-2 control-label">비밀번호</label>

							<div class="col-sm-10">
								<input class="form-control" onkeypress="enter(event)"
									type="password" id="userPassword" data-vali="2"
									placeholder="비밀번호를 입력하세요.">
							</div>
						</div>

						<div class="form-group" id="find-pass_quiz--2">
							<div class="col-sm-offset-2 col-sm-10">
								<p>
									아이디를 잊어버리셨습니까? <a onclick="forgetId()">아이디찾기</a>
								</p>
							</div>
							<div class="col-sm-offset-2 col-sm-10">
								<p>
									비밀번호를 잊어버리셨습니까? <a onclick="forgetPass()">비밀번호 찾기</a>
								</p>
							</div>
						</div>

						<div class="form-group" style="margin-bottom: 30px;">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="button" class="btn btn-primary btn-lg btn-block"
									onclick="loging()">로그인</button>
							</div>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>

	<script>
		function enter(ent) {
			var code = ent.which ? ent.which : event.keyCode;
			if (code == 13) {
				loging()
			}
		}
		
		function loging() {
			var userId = document.querySelector('#userId').value
			var userPassword = document.querySelector('#userPassword').value
			if (userId != '' && userPassword != '') {
				var params = {
						userId : userId,
						userPassword : userPassword
				};
				params = JSON.stringify(params);

				var conf = {
					url : '/dologin',
					method : 'POST',
					param : params,
					success : function(res) {
						if (res != '') {
							alert('로그인이 완료되셨습니다.');
							location.href = "/";
						} else {
							logOut();
							location.href = "/url/user-info:login";
							alert('로그인에 실패하였습니다.');

						}
						;
					}
				}
				var ajaxUtil = new AjaxUtil(conf);
				ajaxUtil.send();
			} else {
				alert('아이디와 비밀번호를 입력하세요');
				logOut();
			}
		}
		function forgetId() {
			location.href = "/url/user-info:find-id"
		}
		function signUp() {
			location.href = "/url/user-info:sign-up"
		}
		function forgetPass() {
			location.href = "/url/user-info:find-pass"
		}
	</script>
</body>
</html>




