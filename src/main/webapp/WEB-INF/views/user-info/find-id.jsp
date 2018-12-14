
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>ID 찾기</title>
</head>
<script src="https://www.google.com/recaptcha/api.js?render=6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m" async defer></script>
<script type="text/javascript">
var onloadCallback=function(){
	greCAPTCHA.render('html_element',{
		'sitekey':'6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
		'theme':'light'
	});
};
</script>
<body>
<%@ include file="/WEB-INF/views/common/head.jspf"%>
	<div class="find-container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">

					<!-- 로그인 된 상태 -->
					<%@ include file="/WEB-INF/views/common/logged-status.jspf"%>
		
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
							<div id="html_element"></div>
							<p>
							
							</p>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
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
					if(typeof(greCAPTCHA)!='undefined'){
						if(greCAPTCHA.getResponse()==""){
							alert("스팸 방지코드를 확인해주세요");
							return;
						}
					}

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




