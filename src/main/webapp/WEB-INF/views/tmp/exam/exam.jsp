<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>ex01</title>
</head>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<body>




	<form action="exam.jsp" onsubmit="return Validation()">
		<table>
			<tr>
				<td>id</td>
				<td><input type="text" name="id" id="id" data-vc="5,10"
					required></td>
			</tr>

			<tr>
				<td>pwd</td>
				<td><input type="password" name="pwd" id="pwd" data-vc="8,20"
					required></td>
			</tr>

			<tr>
				<td>pwdChk</td>
				<td><input type="password" name="pwdChk" id="pwdChk"
					data-vc="8,20" required></td>
			</tr>

			<tr>
				<td>age</td>
				<td><input type="number" name="age" id="age" data-vc="0,130"
					required></td>
			</tr>

			<tr>
				<td>email</td>
				<td><input type="email" name="email" id="email" data-vc="2,30"
					required></td>
			</tr>

			<tr>
				<td colspan="2"><input type="submit" value="제출"
					onclick="passwordValidation()"></td>

			</tr>

		</table>
	</form>













	<script>



	
    function Validation() {
        var pwd = document.getElementById("pwd").value;
        var pwdChk = document.getElementById("pwdChk").value;
        var vcs = document.querySelectorAll('*[data-vc]');
        for(vc of vcs){
			var sp = vc.getAttribute('data-vc');
			var min = sp.split(',')[0];
			var max = sp.split(',')[1];
			
			if(vc.value.trim().length<min){
				alert(vc+'는'+min+'글자 이상 넣어주십시오');
				vc.focus();
				return false;
			}
			if(vc.value.trim().length>max){
				alert(max+'글자 이하로 넣어주십시오');
				vc.focus();
				return false;
			}
			if (pwd != pwdChk) {
	        	 alert('비밀번호가 불일치합니다.');
	        	 
	        	  
	            return false;
			}
        
        }
        return true;
    }
</script>







	<!-- 관리자만보이는영역 -->
</body>
</html>


