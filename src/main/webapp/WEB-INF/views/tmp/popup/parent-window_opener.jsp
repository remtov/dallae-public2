<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var newWindow;

	function openNewWindow() {
		newWindow = window.open("/url/tmp:popup:child-window_opener", "newWindow",
				"height=200, width=400, resizable=yes");
	}

	function recieve() {
		var txt = "<font color='red'>자식창에서 받아온 값</font>";
		document.getElementById("process").innerHTML = txt;
		document.myform.receiver.value = newWindow.document.myform.sender.value;
	}
</script>
</head>
<body>
<form name="myform">
	<input type="button" value="자식창 열기" onclick="openNewWindow()"><br>
	부모창 Sender : <input type="text" name="sender" size="10"><br>
	부모창 Receiver : <input type="text" name="receiver" size="10"><span
		id="process"></span><br /> <input type="button" value="받아오기"
		onclick="recieve()">
</form>
</body>
</html>


