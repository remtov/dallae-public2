
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>ID 찾기</title>

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


				<h1>아이디 찾기</h1>
				<p>
					가입할 때 적으셨던 성함과 전화번호를 입력하여 주십시오. <a onclick="history.back()">뒤로가기</a> 


				</p>
			</div>

			<form class="form-horizontal" id="find_form--40">

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
							onclick="findid()">아이디 찾기</button>

					</div>
				</div>

			</form>
		</div>

	</div>

	<script>
		
		/* 아이디찾기를 눌렀을때 실행되는구문 */
		function findid() {
			var signupName = document.querySelector('#signupName').value
			var signupPhone = document.querySelector('#signupPhone').value
			var params = '';
			params = 'signupName=' + signupName + '&signupPhone=' + signupPhone;

			var conf = {
				url : '/findId',
				param : params,
				success : function(res) {

					if (res != '') {
						res = JSON.parse(res);
						alert('회원님의 아이디는' + res.signupId + ' 입니다.');
						location.href = "/url/SignUp:login";

					} else {
						alert('회원 이름 또는 폰 번호가 일치하지 않습니다.');
					}
				}

			}
			var au = new AjaxUtil(conf);
			au.send();
		}
		/* 아이디찾기를 눌렀을때 실행되는구문 */
	</script>
</body>
</html>




