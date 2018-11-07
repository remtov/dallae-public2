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
#user-info_btn {
	height: 100px;
	/* background-color:red; */
}
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

	<div class="my-page_container">
		<div class="container" id="find_container--800">


			<div style="text-align: center; margin-bottom: 50px;">
				<h1>회원가입</h1>
				<p>
					이미 회원입니까? <a href="/url/user-info:login">로그인</a>
				</p>

			</div>


			<form class="form-horizontal" name="form">
				<div class="form-group">
					<label for="userName" class="col-sm-2 control-label">이름</label>

					<div class="col-sm-10">
						<input type="text" id="userName" data-vali="2"
							class="form-control" placeholder="이름">
					</div>
				</div>
				<div class="form-group">
					<label for="userId" class="col-sm-2 control-label">아이디</label>

					<div class="col-sm-10">
						<input type="text" id="userId" data-vali="2" class="form-control"
							placeholder="아이디">
					</div>
				</div>
				<div class="form-group">
					<label for="userPassword" class="col-sm-2 control-label">비밀번호</label>

					<div class="col-sm-10">
						<input class="form-control" type="password" id="userPassword"
							data-vali="2" placeholder="비밀번호">
					</div>
				</div>
				<div class="form-group">
					<label for="confirmPassword" class="col-sm-2 control-label">비밀번호
						확인</label>

					<div class="col-sm-10">
						<input class="form-control" type="password" id="confirmPassword"
							data-vali="2" placeholder="비밀번호 확인">
					</div>
				</div>
				<div class="form-group">
					<label for="userEmail" class="col-sm-2 control-label">이메일</label>

					<div class="col-sm-10">
						<input type="email" id="userEmail" class="form-control"
							placeholder="이메일 주소를 입력하세요 예)abc@defg.com">
					</div>
				</div>
				<div class="form-group">
					<label for="userNickName" class="col-sm-2 control-label">별명</label>

					<div class="col-sm-10">
						<input type="text" class="form-control" id="userNickName"
							placeholder="별명" data-vali="2">
					</div>
				</div>
				<div class="form-group">
					<label for="userPhoneNum" class="col-sm-2 control-label">전화번호</label>

					<div class="col-sm-10">
						<input type="text" class="form-control" id="userPhoneNum"
							placeholder="전화번호를 입력해주세요 예)01012345678" data-vali="2">
					</div>
				</div>
				<!-- 진석이 주소API영역 -->
				<div class="form-group">
					<label class="col-sm-2 control-label">우편번호 찾기</label>
					<div class="col-sm-10">
						<input type="text" id="postCode" placeholder="우편번호" disabled /> <input
							type="button" onclick="execPostCode()" value="우편번호 찾기" /><br>

					</div>
				</div>


				<div class="form-group">
					<label class="col-sm-2 control-label">주소</label>

					<div class="col-sm-10">
						<input type="text" id="userAddress" placeholder="주소" disabled>
						<input type="text" id="userAddress2" placeholder="상세주소">
					</div>
				</div>
				<!-- 진석이 주소API영역 -->



				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<!-- 약관내용 -->
						<textarea class="form-control" cols="40" rows="5"
							style="width: 100%; height: 300px;">
						<%@ include file="/WEB-INF/views/common/terms.jspf"%> 
						</textarea>
						<!-- 약관내용 -->


					</div>
				</div>
				<div class="form-group">
					<label for="agree" class="col-sm-2 control-label">약관 동의</label>

					<div class="col-sm-10" style="margin-top: -7px;">

						<div class="checkbox">
							<label class="checkbox-inline"> <input type="checkbox"
								name="agree" id="agree" onClick="agreeCheck(this.form)">
								체크하심으로 회원가입을 완료하실 수 있습니다.

							</label>
						</div>
					</div>
				</div>
				<hr>
				<div id="user-info_btn">
					<input class="btn btn-default btn-lg btn-block" type="button"
						name="checkButton" value="확인 " disabled onclick="save()">
				</div>


			</form>



		</div>
		<!-- 이너컨테이너 -->
	</div>
	<!-- 아웃터컨테이너 -->




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
	
	var userNickName = document.querySelector('#userNickName').value;
	var userEmail = document.querySelector('#userEmail').value;
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
		
		
		
	var params={userName:userName,userId:userId,userPassword:userPassword,userEmail:userEmail,userNickName:userNickName,
				userPhoneNum:userPhoneNum,userAddress:userAddress,userAddress2:userAddress2};
	 params = JSON.stringify(params); 
	
		var conf = {
				url : '/UserInfo',
				method :'POST',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원가입이 완료 되셨습니다.');
						location.href="/";
					};  
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
		 
	
		
}
	
}
</script>
</body>
</html>




