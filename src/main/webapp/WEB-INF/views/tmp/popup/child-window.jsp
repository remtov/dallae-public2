<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<script type="text/javascript">
	function send() {

		var data = document.myform.sender.value;

		window.opener.sendMeData(data)

		window.close();

	}
</script>

</head>

<form name="myform">

	자식창 Sender : <input type="text" name="sender" size="10"><br>

	<input type="button" value="부모창에 데이터 보내고 닫기" onclick="send()" />

</form>

</body>

</html>



