<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function recieve() {
		var txt = "<font color='red'>부모창에서 받아온 값</font>";
		document.getElementById("process").innerHTML = txt;
		document.myform.receiver.value = window.opener.document.myform.sender.value;
	}

	function send() {
		var txt = "<font color='blue'>자식창에서 보낸 값</font>";
		window.opener.document.myform.receiver.value = document.myform.sender.value;
		window.opener.document.getElementById("process").innerHTML = txt;
		window.close();
	}

	function send2() {
		$("#certificationYN", opener.document).val('Y');
		opener.$("#name").val($("#name").val());
		opener.$("#name").html($("#name").val());

		opener.$("#cell_phone1").val($("#cell_phone1").val());
		opener.$("#cell_phone2").val($("#cell_phone2").val());
		opener.$("#cell_phone3").val($("#cell_phone3").val());
		opener.nameCheck($("#name").val());
		self.close();
	}
</script>
<body>
	<!-- 자식창에서 완료 후 찍히는 로직
	alert("인증이 완료되었습니다.");
$("#certificationYN", opener.document).val('Y');
opener.$("#name").val($("#name").val());
opener.$("#name").html($("#name").val());

opener.$("#cell_phone1").val($("#cell_phone1").val());
opener.$("#cell_phone2").val($("#cell_phone2").val());
opener.$("#cell_phone3").val($("#cell_phone3").val());
opener.nameCheck($("#name").val()); self.close(); } }
-->
</head>
<form name="myform">
	자식창 Sender : <input type="text" name="sender" size="10"><br>
	자식창 Receiver : <input type="text" name="receiver" size="10"><span
		id="process"></span><br /> <input type="button" value="받아오기"
		onclick="recieve()"> <input type="button"
		value="부모창에 데이터 보내고 닫기" onclick="send()" />
</form>

</body>
</html>


