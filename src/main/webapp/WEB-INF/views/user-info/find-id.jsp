
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>ID 찾기</title>
</head>
<body>
	<div class="find-container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">
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
								onclick="location.href='#'">인증</button>
						</p>
					</div>
					<!-- 로그인된상태인 사람이 이 페이지를 열었을때 보여지는 영역-->
				</c:when>
				<c:otherwise>
					<form id="login">
						<div
							style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">

							<h2 style="text-align: center;">
								<button style="float: left;" type="button"
									class="btn btn-default" onclick="history.back()">X</button>
								<b style="float: center;">ID 찾기</b>
								<button style="float: right;" type="button"
									class="btn btn-primary" onclick="findId()">찾기</button>
							</h2>
							<p>
								이름 <input onkeypress="enter(event)" type="text" id="userName"
									data-vali="2" class="form-control" placeholder="이름을 입력하세요.">
							</p>
							<p>
								폰번호 <input onkeypress="enter(event)" class="form-control"
									type="number" id="userPhoneNum" data-vali="2"
									placeholder="핸드폰 번호를 입력하세요. 예)01012345678">
							</p>
							<p>
								비밀번호를 잊어 버리셨습니까?
								<button class="btn btn-default btn-xs" type="button"
									onclick="forgetPass()">비밀번호 찾기</button>
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
				findId()
			}
		}
		/* 아이디찾기를 눌렀을때 실행되는구문 */
		function findId() {
			var userName = document.querySelector('#userName').value
			var userPhoneNum = document.querySelector('#userPhoneNum').value
			var params = '';
			params = 'userName=' + userName + '&userPhoneNum=' + userPhoneNum;
			var conf = {
				url : '/findid',
				param : params,
				success : function(res) {

					if (res != '') {
						res = JSON.parse(res);
						alert('회원님의 아이디는 ' + res.userId + ' 입니다.');
						location.href = "/url/user-info:login";
					} else {
						alert('회원 이름 또는 폰 번호가 일치하지 않습니다.');
					}
				}
			}
			var ajaxUtil = new AjaxUtil(conf);
			ajaxUtil.send();
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
</body>
</html>




