<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비밀번호 찾기</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.find-pass_inner-box {
	border: 1px solid #d6d6d6;
	margin: auto;
	margin-top: 30px;
	margin-bottom: 100px;
	max-width: 500px;
	padding: 20px;
}

.find-pass_inner-box>h2 {
	text-align: center;
}

.find-pass_inner-box>h2>b {
	float: center;
}
</style>
</head>
<div class="find-container">
	<div class="container">
		<form id="login">
			<div class="find-pass_inner-box">
				<h2>
					<button style="float: left;" type="button" class="btn btn-default"
						onclick="history.back()">X</button>
					<b>비밀번호 변경</b>
					<button style="float: right;" type="button" class="btn btn-primary"
						onclick="updatePassword()">변경</button>
				</h2>
				<p>
					아이디<input onkeypress="enter(event)" type="text" id="userId"
						class="form-control" placeholder="아이디를 입력하세요.">
				</p>
				<p>
					이름 <input onkeypress="enter(event)" type="text" id="userName"
						class="form-control" placeholder="이름을 입력하세요.">
				</p>
				<p>
					폰번호 <input onkeypress="enter(event)" class="form-control"
						type="number" id="userPhoneNum"
						placeholder="핸드폰 번호를 입력하세요. 예)01012345678">
				</p>
				<hr>
				<p></p>
				<p>
					새 비밀번호 <input onkeypress="enter(event)" class="form-control"
						type="password" id="userPassword" placeholder="새 비밀번호"
						data-vc="2,30">
				</p>
				<p>
					새 비밀번호 확인 <input onkeypress="enter(event)" class="form-control"
						type="password" id="confirmPassword" placeholder="새 비밀번호 확인"
						data-vc="2,30">
				</p>
			</div>
		</form>
	</div>
</div>
<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>

<script>
    function enter(ent) {
       var code = ent.which ? ent.which : event.keyCode;
       if (code == 13) {
          updatePassword()
       }
    }

    function updatePassword() {
       var userId = document.querySelector('#userId').value
       var userName = document.querySelector('#userName').value
       var userPhoneNum = document.querySelector('#userPhoneNum').value
       var userPassword = document.querySelector('#userPassword').value
       var confirmPassword = document.querySelector('#confirmPassword').value
       if(userPassword.trim()!=confirmPassword.trim()){
    	   alert('비밀번호와 비밀번호 확인이 일치하지 않습니다');

    	   return false;
       }
       
       var params = {userId:userId,userName:userName,userPhoneNum:userPhoneNum,userPassword:userPassword};
       params = JSON.stringify(params);
      
       var conf = {
          url: '/updatepass',
          param: params, 
          method:'PUT',
          success: function(res) {   
             if (res == 0) {
                alert('아이디 , 폰 번호 혹은 회원 이름이 일치하지 않습니다.');
                return false;
             } else if (res==1){
            	 alert('비밀번호 변경이 완료 되었습니다.')
      			location.href='/url/user-info:login'
           
             }
          }
       }
       var ajaxUtil = new AjaxUtil(conf);
       ajaxUtil.send();
    }
</script>
</body>
</html>
