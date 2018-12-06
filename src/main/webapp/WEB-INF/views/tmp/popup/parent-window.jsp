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

		newWindow = window.open("/url/tmp:popup:child-window", "newWindow",
				"height=200, width=400, resizable=yes");

	}

	function sendMeData(data) {

		var txt = "<font color='red'>자식창에서 받아온 값 : </font>";

		document.getElementById("process").innerHTML = txt;

		document.getElementById("result").innerHTML = data;

	}
</script>

</head>

<input type="button" value="자식창 열기" onclick="openNewWindow()">
<br>

<span id="process"></span>
<span id="result"></span>

</body>

</html>



