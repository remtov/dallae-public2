<!-- 데이터베이스에 유저이미지가 있긴있지만 아직비활성화
낫널로 일단달려있지만 구현되지않은상태 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<style>
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
/* 동의해야 인서트가 가능하도록 */
function agreeCheck(frm){
   if (frm.checkButton.disabled==true){
	   frm.checkButton.disabled=false
   } 
   else{
	   frm.checkButton.disabled=true
	 }
  }
/* 동의해야 인서트가 가능하도록 */
</script>


</head>
<body>
	<div class="view-container">
		<div class="container">
			<form class="form-horizontal" name="form">
				<div
					style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">

					<h2>
						<button type="button" class="btn btn-default"
							onclick="history.back()">X</button>
						<b>회원가입</b>

					</h2>
					<p>
						이미 회원입니까?
						<button class="btn btn-default btn-xs" type="button"
							onclick="location.href='/url/user-info:login'">로그인</button>
					</p>
					<p>
						이름 <input type="text" id="userName" data-vali="2"
							class="form-control" style="width: 200px" placeholder="이름">
					</p>
					<p>
						아이디 <input style="width: 200px" type="text" id="userId"
							data-vali="2" class="form-control" placeholder="아이디">
					</p>
					<p>
						비밀번호 <input style="width: 200px" class="form-control"
							type="password" id="userPassword" data-vali="2"
							placeholder="비밀번호">
					</p>
					<p>
						비밀번호 확인 <input style="width: 200px" class="form-control"
							type="password" id="confirmPassword" data-vali="2"
							placeholder="비밀번호 확인">

					</p>

					<p>
						이메일 <input style="width: 300px" type="email" id="userEmail"
							class="form-control" placeholder="이메일 주소를 입력하세요 예)abc@defg.com">
					</p>
					<p>
						별명 <input type="text" style="width: 200px" class="form-control"
							id="userNickName" placeholder="별명" data-vali="2">
					</p>

					<p>
						전화번호 <input type="text" class="form-control" id="userPhoneNum"
							placeholder="전화번호를 입력해주세요 예)01012345678" data-vali="2"
							style="width: 300px">

					</p>


					<!-- 진석이 주소API영역 -->
					<p>
						우편번호<input style="width: 200px; margin-bottom: 5px;" type="text"
							id="postCode" placeholder="우편번호" disabled class="form-control" />
						<input type="button" class="btn btn-default"
							onclick="execPostCode()" value="우편번호 찾기" />
					</p>
					<p>
						주소 <input style="margin-bottom: 5px;" type="text" id="userAddress"
							placeholder="주소" class="form-control" disabled> <input
							type="text" id="userAddress2" placeholder="상세주소"
							class="form-control">
					</p>
					<!-- 진석이 주소API영역 -->



					<p>
						<textarea class="form-control" cols="40" rows="5"
							style="width: 100%; height: 200px;">
						<%@ include file="/WEB-INF/views/common/terms.jspf"%> 
						</textarea>
					</p>


					<p>
						약관 동의 <input type="checkbox" name="agree" id="agree"
							onClick="agreeCheck(this.form)"> 체크하시고 가입을 완료하세요.
					</p>
					<input class="btn btn-primary btn-block" type="button"
						name="checkButton" onclick="save()" disabled value="확인">


				</div>


			</form>

		</div>
	</div>







	<script>
/* 배진석 주소API추가 */
function execPostCode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullAddr = ''; // 최종 주소 변수
							var extraAddr = ''; // 조합형 주소 변수

							// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								fullAddr = data.roadAddress;

							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								fullAddr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
							if (data.userSelectedType === 'R') {
								//법정동명이 있을 경우 추가한다.
								if (data.bname !== '') {
									extraAddr += data.bname;
								}
								// 건물명이 있을 경우 추가한다.
								if (data.buildingName !== '') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
								fullAddr += (extraAddr !== '' ? ' ('
										+ extraAddr + ')' : '');
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('userAddress').value = fullAddr;

							// 커서를 상세주소 필드로 이동한다.
							document.getElementById('userAddress2').focus();
						}
					}).open();
		}

/* 배진석 주소API추가 */

function save(){



	
	var userName = document.querySelector('#userName').value;
	var userId = document.querySelector('#userId').value;
	var userPassword = document.querySelector('#userPassword').value;
	var userEmail = document.querySelector('#userEmail').value;
	
	var userNickName = document.querySelector('#userNickName').value;
	var userPhoneNum = document.querySelector('#userPhoneNum').value;
		
	var userAddress = document.querySelector('#userAddress').value;
	var userAddress2 = document.querySelector('#userAddress2').value;
	
    
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '은(는) ' + length + '이상의 글자로 채워 주셔야 합니다.');
			return false;
		}
	});


	
	var confirmPassword = document.querySelector("#confirmPassword").value;
	
	if(userPassword.trim()!==confirmPassword.trim()){
		alert("비밀번호가 다릅니다.");
		var passFocus =document.querySelector('#Password');
		passFocus.focus();
	}else{
				
		
				  
	var params={userName:userName,
			userId:userId,
			userPassword:userPassword,
			userEmail:userEmail,
			
			userNickName:userNickName,
			userPhoneNum:userPhoneNum,
			
			userAddress:userAddress,
			userAddress2:userAddress2
			};
	
	 params = JSON.stringify(params);
	
		var conf = {
				url : '/userinfo',
				method :'POST',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원가입이 완료 되셨습니다.');
						location.href="/";
					};  
				}
		
		};
		var ajaxUtil = new AjaxUtil(conf);
		ajaxUtil.send();
		 
	
		
}
	
}
</script>
</body>
</html>




