<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="http://www.google.com/reCAPTCHA/api.js?onload=onloadCallback&render=explicit"async defer></script>
<script type="text/javascript">
var onloadCallback=function(){
	greCAPTCHA.render('html_element',{
		'sitekey':'6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
		'theme':'light'
	});
};
</script>
</body>
</html>