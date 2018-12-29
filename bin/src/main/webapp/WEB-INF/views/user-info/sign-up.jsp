<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>here</title>
<style>
</style>
<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	/* 필수체크동의 */
	function agreeCheck(frm) {
		if (frm.checkButton.disabled == true) {
			frm.checkButton.disabled = false
		} else {
			frm.checkButton.disabled = true
		}
	}
</script> -->
</head>
<body>
	<div class="view-container">
		<div class="container">
			<form class="form-horizontal" name="form">
				<div class="row"
					style="border: 1px solid #d6d6d6; padding: 30px; margin-top: 30px; margin-bottom: 30px;">
					<h2>
						<button type="button" class="btn btn-default"
							onclick="history.back()">X</button>
						<b>회원가입</b>
					</h2>
					이미 회원입니까?
					<button class="btn btn-default btn-xs" type="button"
						onclick="location.href='/url/user-info:login'">로그인</button>
					<hr>
					<div class="col-md-6" style="margin-top: 10px; padding: 10px;">
						<p>
							이름 <input type="text" id="userName" class="form-control"
								style="width: 200px" placeholder="이름" data-vc="2,5">
						</p>
						<p>
							아이디 <input style="width: 200px" type="text" id="userId"
								oninput="checkId2()" class="form-control" placeholder="아이디"
								data-vc="2,30">
						</p>
						<p>
							비밀번호 <input style="width: 200px" class="form-control"
								type="password" id="userPassword" data-vc="2,30"
								placeholder="비밀번호">
						</p>
						<p>
							비밀번호 확인 <input style="width: 200px" class="form-control"
								type="password" id="confirmPassword" data-vc="2,30"
								placeholder="비밀번호 확인">
						</p>

						<p>
							이메일 <input style="max-width: 300px;" type="email" id="userEmail"
								class="form-control" placeholder="예)abc@abc.abc" data-vc="2,30">
						</p>

						<p>
							별명 <input type="text" style="width: 200px" class="form-control"
								id="userNickName" placeholder="별명" data-vc="2,30">
						</p>
						<p>
							전화번호 <input style="max-width: 300px;" type="text"
								class="form-control" id="userPhoneNum"
								placeholder="예)01012345678" data-vc="2,30">
						</p>
					</div>
					<div class="col-md-6" style="margin-top: 10px; padding: 10px;">
						<!--주소API-->
						<p>
							우편번호<input style="width: 200px; margin-bottom: 5px;" type="text"
								id="postCode" placeholder="우편번호" disabled class="postcodify_postcode5"
								data-vali="2" /> <input type="button" id="postcodify_search_button" class="btn btn-default"
								onclick="execPostCode()" value="우편번호 찾기" />
						</p>
						<p>
							주소 <input style="margin-bottom: 5px;" type="text"
								id="userAddress" placeholder="주소" class="postcodify_address" disabled
								data-vali="2"> 
								<input type="text" id="userAddress2"
								placeholder="상세주소" class="postcodify_details" data-vc="2,33">
								<input type="text" name="" class="postcodify_extra_info" value="" /><br />
								
						</p>
						<p>
							<textarea class="form-control" cols="20" rows="5"
								style="width: 100%; height: 200px;" readonly="readonly">
						<%@ include file="/WEB-INF/views/common/terms.jspf"%> 
						</textarea>
						</p>
						<p>
							<input type="checkbox" name="agree" id="agree"
								onClick="agreeCheck(this.form)"> 약관 동의 체크하시고 가입을 완료하세요.
						</p>
						<input class="btn btn-primary btn-block" type="button"
							name="checkButton" onclick="save()" disabled value="확인">
					</div>
				</div>
			</form>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	
<script>
<!-- jQuery와 Postcodify를 로딩한다 -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>

/* 주소API */
/* function execPostCode() {
   new daum.Postcode({
      oncomplete: function(data) {
         var fullAddr = ''; // 최종 주소 변수
         var extraAddr = ''; // 조합형 주소 변수
         if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;
         } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
         }
         if (data.userSelectedType === 'R') {
            if (data.bname !== '') {
               extraAddr += data.bname;
            }
            if (data.buildingName !== '') {
               extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
         }
         document.getElementById('postCode').value = data.zonecode; //5자리 새우편번호 사용
         document.getElementById('userAddress').value = fullAddr;
         document.getElementById('userAddress2').focus();
      }
   }).open();
} */

var idDuplicationCheck = 0
function checkId2() {
   var userId = document.querySelector('#userId').value;
   $.ajax({
      data: {
         userId: userId
      },
      url: "/check-id",
      success: function(res) {
         if (userId == "" && res == '0') {
            $("#userId").css("background-color", "#FFCECE");
            idDuplicationCheck = 0;
         } else if (res == '1') {
            $("#userId").css("background-color", "#FFCECE");
            idDuplicationCheck = 0;
         } else {
            $("#userId").css("background-color", "#B0F6AC");
            idDuplicationCheck = 1;
         }
      }
   });
}

function save() {
   var userName = document.querySelector('#userName').value;
   var userId = document.querySelector('#userId').value;
   var userPassword = document.querySelector('#userPassword').value;
   var userEmail = document.querySelector('#userEmail').value;
   var userNickName = document.querySelector('#userNickName').value;
   var userPhoneNum = document.querySelector('#userPhoneNum').value;
   var userAddress = document.querySelector('#userAddress').value;
   var userAddress2 = document.querySelector('#userAddress2').value;
   var valis = document.querySelectorAll('*[data-vali]');
   var emailVal = $("#userEmail").val();
   var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   var id = $("#userId").val();
   var checkid = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
   var confirmPassword = document.querySelector("#confirmPassword").value;
   
   valis.forEach((e) => {
      var length = e.getAttribute('data-vali');
      if (e.value.trim().length < length) {
         e.focus();
         alert('우편번호와 주소가 정상적으로 입력되지 않았습니다.');
         return false;
      } else if (checkid.test(id)) {
         alert("한글을 아이디로 가입 하실 수 없습니다");
         return false;
      } else if (idDuplicationCheck == 0) {
         alert("사용중인 아이디 입니다.");
         return false;
      } else if (emailVal.match(regExp) == null) {
         alert('이메일 주소 형식이 올바르지 않습니다. 확인 부탁드립니다.');
         return false;
      } else if (userPassword.trim() !== confirmPassword.trim()) {
         alert("비밀번호가 다릅니다.");
         var passFocus = document.querySelector('#Password');
         passFocus.focus();
         return false;
      } else {
         var params = {
            userName: userName,
            userId: userId,
            userPassword: userPassword,
            userEmail: userEmail,
            userNickName: userNickName,
            userPhoneNum: userPhoneNum,
            userAddress: userAddress,
            userAddress2: userAddress2
         };
         params = JSON.stringify(params);
         if (valiCheck()) {
            var conf = {
               url: '/userinfo',
               method: 'POST',
               param: params,
               success: function(res) {
                  if (res == 1) {
                     alert('회원가입이 완료 되셨습니다.');
                     location.href = "/";
                  };
               }
            };
         };
         var ajaxUtil = new AjaxUtil(conf);
         ajaxUtil.send();
      }
   });
}
</script>
</body>
</html>