<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<div class="find-container">
	<div class="container">
		<c:choose>
			<c:when test="${not empty sessionScope.userlogininfo}">
				<!-- 로그인 된 사람이 보는 영역 -->
				<div
					style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">
					<h2 style="text-align: center;">
						<button style="float: left;" type="button" class="btn btn-default"
							onclick="history.back()">X</button>
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
							onclick="location.href='#'">인증</button>
					</p>
				</div>
			</c:when>
			<c:otherwise>
				<!-- 세션이 없는 사람이 보는 영역 -->
				<form id="login">
					<div
						style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">
						<h2 style="text-align: center;">
							<button style="float: left;" type="button"
								class="btn btn-default" onclick="history.back()">X</button>
							<b style="float: center;">비밀번호 찾기</b>
							<button style="float: right;" type="button"
								class="btn btn-primary" onclick="findPassword()">찾기</button>
						</h2>
						<p>
							아이디<input onkeypress="enter(event)" type="text" id="userId"
								data-vali="2" class="form-control" placeholder="아이디를 입력하세요.">
						</p>
						<p>
							이름 <input onkeypress="enter(event)" type="text" id="userName"
								data-vali="2" class="form-control" placeholder="이름을 입력하세요.">
						</p>
						<p>
							폰번호 <input onkeypress="enter(event)" class="form-control"
								type="number" id="userPhoneNum" data-vali="2"
								placeholder="핸드폰 번호를 입력하세요. 예)01012345678">
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
			findPassword()
		}
	}

	function findPassword() {
			var userId = document.querySelector('#userId').value
			var userName = document.querySelector('#userName').value
			var userPhoneNum = document.querySelector('#userPhoneNum').value
			var params = '';
			params = 'userName=' + userName + '&userPhoneNum=' + userPhoneNum
					+ '&userId=' + userId;
			var conf = {
				url : '/findpass',
				param : params,
				success : function(res) {
					if (res != '') {
						res = JSON.parse(res);
						alert('회원님의 비밀번호는 '+ res.userPassword+' 입니다.');
						location.href = "/url/user-info:login";
					} else {
						alert('아이디, 폰 번호, 회원 이름이 일치하지 않습니다.');
					}

				}
			}
			var ajaxUtil = new AjaxUtil(conf);
			ajaxUtil.send();

	}
</script>
</body>
</html>
