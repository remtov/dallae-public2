<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>가입</title>
<style>
</style>
<script
	src="https://www.google.com/recaptcha/api.js?render=6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m"
	async defer></script>
<script type="text/javascript">
var onloadCallback=function(){
	greCAPTCHA.render('html_element',{
		'sitekey':'6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
		'theme':'light'
	});
};
</script>

<!-- <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>-->
<script type="text/javascript">
	/* 필수체크동의 */
	function agreeCheck(frm) {
		if (frm.checkButton.disabled == true) {
			frm.checkButton.disabled = false
		} else {
			frm.checkButton.disabled = true
		}
	}
</script>
</head>
<body>
	
	<div class="view-container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">
					<!-- 로그인 된 상태 -->
					<%@ include file="/WEB-INF/views/common/logged-status.jspf"%>
				</c:when>
				<c:otherwise>
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
										style="width: 200px" placeholder="이름" data-vc="2,5"
										onkeypress="enter(event)">
								</p>
								<p>
									아이디 <input style="width: 200px" type="text" id="userId"
										oninput="checkId2()" class="form-control" placeholder="아이디"
										data-vc="2,30" onkeypress="enter(event)"><span
										id="userIdComment"></span>
								</p>
								<p>
									비밀번호 <input style="width: 200px" class="form-control"
										type="password" id="userPassword" data-vc="2,30"
										placeholder="비밀번호" onkeypress="enter(event)">
								</p>
								<p>
									비밀번호 확인 <input style="width: 200px" class="form-control"
										type="password" id="confirmPassword" data-vc="2,30"
										placeholder="비밀번호 확인" onkeypress="enter(event)">
								</p>

								<p>
									이메일 <input style="max-width: 300px;" type="email"
										id="userEmail" class="form-control"
										placeholder="예)abc@abc.abc" data-vc="2,30"
										onkeypress="enter(event)">
								</p>

								<p>
									별명 <input type="text" style="width: 200px" class="form-control"
										id="userNickName" placeholder="별명" data-vc="2,30"
										onkeypress="enter(event)">
								</p>
								<p>
									전화번호 <input style="max-width: 300px;" type="number"
										class="form-control" id="userPhoneNum"
										placeholder="예)01012345678" data-vc="2,30"
										onkeypress="numberEnter(event2)">
								</p>

							</div>
								<div class="col-md-6" style="margin-top: 10px; padding: 10px;">
								<!--주소API-->
								<p>
									우편번호<br> <input style="width: 200px; margin-bottom: 5px;"
										type="text" id="postCode" placeholder="우편번호" disabled
										class="postcodify_postcode5" style="height:30px;"
										data-vali="2" /> <input type="button" class="btn btn-default"
										id="postcodify_search_button" value="우편번호 찾기" />
								</p>
								<p>
									주소<br> <input style="margin-bottom: 5px;" type="text"
										id="userAddress" placeholder="주소" class="postcodify_address"
										disabled> <input type="text" id="userAddress2"
										placeholder="상세주소" class="postcodify_details" data-vc="2,33"
										onkeypress="enter(event)"> <input type="text"
										id="userAddress2Reference" placeholder="참고항목" disabled
										class="postcodify_extra_info" data-vc="2,33">
								</p>
								<p>
									<textarea class="form-control" cols="20" rows="5"
										style="width: 100%; height: 200px;" readonly="readonly">
						<%@ include file="/WEB-INF/views/common/terms.jspf"%> 
						</textarea>
								</p>
								<p>
									<input type="checkbox" name="agree" id="agree"
										onClick="agreeCheck(this.form)"> 약관 동의 체크하시고 가입을
									완료하세요.
								</p>
								<input class="btn btn-primary btn-block" type="button"
									name="checkButton" onclick="save()" disabled value="확인">
							</div>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/product-bottom.jspf"%>
	<!-- jQuery와 Postcodify를 로딩한다 -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>

	<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
	<script> $(function() { $("#postcodify_search_button").postcodifyPopUp(); }); </script>
	<script>

var idDuplicationCheck = 0
function checkId2() {
   var userId = document.querySelector('#userId').value;
   var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
   var id = $("#userId").val();
   var checkid = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
   
   
   $.ajax({
      data: {
         userId: userId
      },
      url: "/check-id",
      success: function(res) {
     	 if(checkid.test(id)){
     		 $("#userIdComment").text("한글을 아이디로 가입 하실 수 없습니다").css("color", "#e53a6f");  
     	}else if (userId == "" && res == '0') {
     		$("#userIdComment").text("");
     		$("#userId").css("background-color", "#FFCECE");
            idDuplicationCheck = 0;
         } else if (res == '1') {
        	 $("#userIdComment").text("아이디가 중복 되었습니다.").css("color", "#e53a6f");
            $("#userId").css("background-color", "#FFCECE");
            idDuplicationCheck = 0;
         }else {
        	 $("#userIdComment").text("");
            $("#userId").css("background-color", "#92cacc");
            idDuplicationCheck = 1;
         }
      }
   });
}
 function enter(ent) {
		var code = ent.which ? ent.which : event.keyCode;
		if (code == 13) {
			save()
		}
	}
 
 
 function numberEnter(ent) {
		var code2 = ent.which ? ent.which : event2.keyCode;
		if (code2 == 69) {
			alert("문자는 입력할 수 없습니다.")
			return false;
		}else if(code2 == 13){
			save()
	}
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

         //test
      }return false;
      })
    	
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
            	   location.href = "/url/user-info:login";                     
             	  alert('회원가입이 완료 되셨습니다.');
            		if(typeof(greCAPTCHA)!='undefined'){
						if(greCAPTCHA.getResponse()==""){
							alert("스팸 방지코드를 확인해주세요");
							return;
						}
					}
            
                	  
                    
                 
               }
            };
         };
         var ajaxUtil = new AjaxUtil(conf);
         ajaxUtil.send();
      }
   

</script>
	
</body>
</html>