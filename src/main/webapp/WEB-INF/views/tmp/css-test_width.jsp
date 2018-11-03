<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
div {
	border: 1px solid #444444;
}

div.a {
	width: 100%;
}

div.b {
	width: 70%;
	padding: 10px;
}

div.c {
	width: 50%;
	padding: 10px;
	margin: 10px;
}
</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(
			function() {
				var jbWidth1 = $('div.a').width();
				var jbInnerWidth1 = $('div.a').innerWidth();
				var jbOuterWidth1 = $('div.a').outerWidth();

				$('div.a').after(
						'<p>Width = ' + jbWidth1 + ', Inner Width = '
								+ jbInnerWidth1 + ', Outer Width = '
								+ jbOuterWidth1 + '</p>');

				var jbWidth2 = $('div.b').width();
				var jbInnerWidth2 = $('div.b').innerWidth();
				var jbOuterWidth2 = $('div.b').outerWidth();

				$('div.b').after(
						'<p>Width = ' + jbWidth2 + ', Inner Width = '
								+ jbInnerWidth2 + ', Outer Width = '
								+ jbOuterWidth2 + '</p>');

				var jbWidth3 = $('div.c').width();
				var jbInnerWidth3 = $('div.c').innerWidth();
				var jbOuterWidth3 = $('div.c').outerWidth();

				$('div.c').after(
						'<p>Width = ' + jbWidth3 + ', Inner Width = '
								+ jbInnerWidth3 + ', Outer Width = '
								+ jbOuterWidth3 + '</p>');
			});
</script>
</head>
<body>
	<div class="a">
		<p>AAA</p>
	</div>
	<div class="b">
		<p>BBB</p>
	</div>
	<div class="c">
		<p>CCC</p>
	</div>
</body>
</html>
