
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
<head>
<title>비밀번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
h1 {
	margin-top: 100px;
}
</style>


</head>




<body>
	<div class="find-container">

		<div class="container" id="find_container--800">
			<div>


				<h1>비밀번호 찾기</h1>
				<p>가입할 때 적으셨던 아이디, 성함, 전화번호를 입력하여 주십시오. <a onclick="history.back()">뒤로가기</a></p>
			</div>


			<form class="form-horizontal" id="find_form--40">

				<div class="form-group">
					<label for="signupId" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input type="text" id="signupId" data-vali="2"
							class="form-control" placeholder="아이디를 입력하세요.">
					</div>
				</div>



				<div class="form-group">
					<label for="signupName" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input type="text" id="signupName" data-vali="2"
							class="form-control" placeholder="이름을 입력하세요.">
					</div>
				</div>


				<div class="form-group">
					<label for="signupPhone" class="col-sm-2 control-label">핸드폰
						번호</label>

					<div class="col-sm-10">
						<input class="form-control" type="password" id="signupPhone"
							data-vali="2" placeholder="핸드폰 번호를 입력하세요. 예)01012345678">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="button" class="btn btn-default btn-lg btn-block"
							onclick="findpass()">비밀번호 찾기</button>

					</div>
				</div>

			</form>
		</div>

	</div>




	<script>
		
		function findpass() {
			var signupId = document.querySelector('#signupId').value
			var signupName = document.querySelector('#signupName').value
			var signupPhone = document.querySelector('#signupPhone').value
			var params = '';
			params = 'signupName=' + signupName + '&signupPhone=' + signupPhone
					+ '&signupId=' + signupId;

			var conf = {
				url : '/findpass',
				param : params,
				success : function(res) {
					if (res != '') {
						res = JSON.parse(res);
						alert('회원님의 비밀번호는' + res.signupPassword + ' 입니다.');
						location.href = "/url/SignUp:login";
					} else {
						alert('아이디 또는 폰 번호 또는 회원 이름가 일치하지 않습니다.');
					}

				}
			}

			var au = new AjaxUtil(conf);
			au.send();

		}
	</script>
</body>
</html>





