<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="emailSubscribe" action="/enroll.php">
		<h4>뉴스레터 구독으로 간편하게 새소식을 만나세요!"</h4>
		<div>
			<input id="email" type="text" maxlength="50" name="mailAddr"
				placeholder="Email" />
			<button type="button" onclick="verifyEmail()">지금 구독하기</button>
		</div>
	</form>
	<script>
		verifyEmail = function() {
			// 이메일 검증 스크립트 작성
			var emailVal = $("#email").val();

			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			// 검증에 사용할 정규식 변수 regExp에 저장

			
		};
	</script>
</body>
</html>