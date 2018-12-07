<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Login</title>
<script src="https://www.google.com/recaptcha/api.js?render=6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m" async defer></script>
<script type="text/javascript">
var onloadCallback=function(){
	greCAPTCHA.render('html_element',{
		'sitekey':'6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
		'theme':'light'
	});
};
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/common/head.jspf"%>
	<div class="find-container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">
					<!-- 로그인된 상태-->
					<div
						style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">
						<h2 style="text-align: center;">
							<button style="float: left;" type="button"
								class="btn btn-default" onclick="history.back()">X</button>
							<b style="float: center;">로그인</b> <small>된 상태</small>
							<button style="float: right;" type="button"
								class="btn btn-primary" onclick="loging()">로그인</button>
						</h2>
						<p>
							"<b>${sessionScope.userlogininfo.userId}</b>"님 반갑습니다. <br> <b>
								<c:out value="${sessionScope.userlogininfo.userEmail}" />
							</b>
						</p>
						<p>
							다른 아이디로 로그인 하시겠습니까?
							<button class="btn btn-default btn-xs" onclick="logout()">로그아웃</button>
						</p>
						<p>
							개인 페이지로 가시겠습니까?
							<button class="btn btn-default btn-xs" type="button"
								onclick="location.href='/url/user-info:my-page'">마이페이지</button>
						</p>
						<p>
							판매자 인증을 받으시겠습니까?
							<button class="btn btn-primary btn-xs" type="button"
								onclick="location.href='/url/user-info:seller-certification'">인증</button>
						</p>
					</div>
				</c:when>
				<c:otherwise>
					<form id="login" class="form-horizontal">
						<div
							style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">
							<h2 style="text-align: center;">
								<button style="float: left;" type="button"
									class="btn btn-default" onclick="history.back()">X</button>
								<b style="float: center;">로그인</b>
								<button style="float: right;" type="button"
									class="btn btn-primary" onclick="loging()">로그인</button>
							</h2>
							<p>
								아이디 <input style="width: 300px;" type="text"
									onkeypress="enter(event)" id="userId" data-vali="2"
									class="form-control" placeholder="아이디를 입력하세요.">
							</p>
							<p>
								비밀번호 <input style="width: 300px;" class="form-control"
									onkeypress="enter(event)" type="password" id="userPassword"
									data-vali="2" placeholder="비밀번호를 입력하세요.">
							</p>
							<p>
								아직 가입하지 않으셨습니까?
								<button class="btn btn-default btn-xs" type="button"
									onclick="signUp()">회원가입</button>
							</p>
							<p>
								아이디를 잊어 버리셨습니까?
								<button class="btn btn-default btn-xs" type="button"
									onclick="forgetId()">아이디 찾기</button>
							</p>
							<p>
								비밀번호를 잊어버리셨습니까?
								<button class="btn btn-default btn-xs" type="button"
									onclick="forgetPass()">비밀번호 변경</button>
							</p>
							<p style="color: gray;">
								<b>테스트</b><br> id:admin pw:123 _ 관리자 테스트를 할 수 있습니다.<br>
								id:sell pw:123 _ 판매자 테스트를 할 수 있습니다.<br> id:navi pw:123 _
								구매자 테스트를 할 수 있습니다.<br>
							</p>
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
						if(typeof(greCAPTCHA)!='undefined'){
							if(greCAPTCHA.getResponse()==""){
								alert("스팸 방지코드를 확인해주세요");
								return;
							}
						}

						if (res != '') {
							alert('로그인이 완료되셨습니다.');
							location.href = "/";
						} else {
							logout();
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
				logout();
			}
		}

		function forgetId() {
			location.href = "/url/user-info:find-id"
		}

		function signUp() {
			location.href = "/url/user-info:sign-up"
		}
		function forgetPass() {
			location.href = "/url/user-info:update-password"
		}
	</script>
	<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
</body>
</html>




