<!-- 디비실제이미지 수정 배경이미지 수정
팔로잉: 팔로워 비활성화 sns기능비활성화
팔로우라인을 나중에 인클루드화해서 활용하면 좋을듯 그냥 지금은 데코레이션으로 써먹자

비활성화상태 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MY PAGE</title>

</head>


<style>
div {
	/* border: 1px solid red; */
	
}

.my-page_in-box {
	position: absolute;
	z-index: 2;
	width: 80%;
	left: 90%;
	top: 40px;
	margin-left: -80%;
	background-color: white;
	padding: 20px;
}

.my-page_cut-text--inline-100 {
	margin-top: 5px;
	margin-left: 5px;
	float: left;
	display: inline-block;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 90px;
}

.my-page_follow-line>img {
	width: 20px;
	height: auto;
}
</style>

<body>
	<div class="view-container">

		<c:choose>
			<c:when test="${not empty sessionScope.userlogininfo}">
				<!-- 세션을가진사람만보임 -->

				<!-- 프로필배경판넬 -->
				<div
					style="width: 100%; height: 500px; position: relative; z-index: 1; overflow: hiddn;">
					<img src="/img/back-ground-1.jpg"
						style="width: auto; position: absolute; z-index: 1;">





					<div class="my-page_in-box" style="position: absolute;">
						<button style="top: -30px; right: 0px; z-index: 2;"
							class="btn btn-default btn-xs">

							편집 <img style="width: 13px;" src="/img/icon_edit.png">

						</button>
						<h2>
							My Page>ID<b> ${userlogininfo.userId} </b><small>님의 페이지
								입니다. ${userlogininfo.userSignUpDate}</small>
						</h2>

						<!-- 프로필사진Div -->
						<div class="row">
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								<div style="width: 30%; float: left;">
									<a href="#"><img src="/img/icon_profile.png"
										style="width: 70px;"></a>
									<!-- 수정버튼 -->
								</div>

								<!-- 프로필사진Div -->


								<div style="width: 70%; float: left;">
									<p>
										<input class="form-control" style="float: left; width: 80px;"
											type="text" id="userName" value="${userlogininfo.userName}"
											data-vali="2"> <span
											class="my-page_cut-text--inline-100">|
											${userlogininfo.userAddress}</span>
									</p>

									<p style="clear: both;">
										신용점수 <b>${userlogininfo.userPoint}</b> | 신용등급 LV <b>${userlogininfo.userCreditLevel}</b>
										<br>회원 No.<b>${userlogininfo.userNumber}</b> | 권한등급 LV <b>${userlogininfo.userLevel}</b>
									</p>




								</div>
								ID<input style="width: 80px;" class="form-control" type="text"
									id="userId" value="${userlogininfo.userId}" data-vali="2">
								<p style="margin-top: 5px;">
									새 비밀번호 <input class="form-control" type="password"
										id="userPassword" data-vali="2">
								</p>
								<p style="margin-top: 5px;">
									별명 <input style="width: 200px;" class="form-control"
										type="text" id="userNickName"
										value="${userlogininfo.userNickName}" data-vali="2">
								</p>
							</div>

							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">


								이메일<input class="form-control" type="text" id="userEmail"
									value="${userlogininfo.userEmail}" data-vali="2">
								<p style="margin-top: 5px;">
									폰번호 <input style="width: 200px;" class="form-control"
										type="text" id="userPhoneNum"
										value="${userlogininfo.userPhoneNum}" data-vali="2"> <input
										style="margin: 5px 0px 5px 0px" class="form-control"
										type="text" value="${userlogininfo.userAddress}"
										id="userAddress"> <input class="form-control"
										type="text" value="${userlogininfo.userAddress2}"
										id="userAddress2">
								</p>
								<p style="margin-top: 30px;" class="my-page_follow-line">
									팔로윙 0명 | 팔로워 0명 | <img src="/img/kakao.png"> <img
										src="/img/facebook.png"> <img src="/img/instagram.png">
								</p>
								<input class="btn btn-primary btn-lg btn-block" type="button"
									name="checkButton" value=" 수 정 " onclick="save()">




							</div>
						</div>
					</div>
					<!-- 프로필판넬 -->
				</div>




				<!-- 배경 -->


				<h2>
					판매 품목 ( 0 ) | <small><a href="#">모든 항목보기</a></small>
				</h2>
				<p>
					오늘 dallae에서 <a href="#">판매를 시작</a>하십시오.
				</p>
				<hr>


				<div id="my-page_setting-button">
					<img src="/img/icon_setup.png">설정
				</div>

				<div>
					<h2>팔로윙</h2>
					<p>
						다른 회원, 소장품 및 관심사를 따라 가면 <a href="#">dallae 피드</a>에서 더 많은 검색 결과를 얻을
						수 있습니다.
					</p>
				</div>
				<div id="my-page_follow-line">
					<hr>
					<h2>팔로워</h2>
					<p>
						아직 팔로워가 없습니다. 프로필을 <a href="#">맞춤 설정</a>하면 다른 회원에게 좋은 인상을 남길 수
						있습니다.
					</p>
				</div>
			</c:when>
			<c:otherwise>
				<!-- 세션없는 사람에게 보이는 영역 -->

				<div class="gray-container">
					<div class="find-container">
						<div id="session-less" style="margin: auto;">
							<img src="/img/icon_login.png">
							<h3>
								<a href="/url/user-info:login"><b>로그인</b></a> 부탁드립니다. <small><a
									href="/">| <b>홈으로</b></a></small>
							</h3>
							<p>
								권한 에러 : 페이지에 대한 <b>권한</b>이 없으십니다.
							</p>
						</div>
					</div>
				</div>

				<!-- 세션없는 사람에게 보이는 영역 -->

			</c:otherwise>
		</c:choose>

	</div>


	<script>

function save(){

	var userName = document.querySelector('#userName').value;
	var userId = document.querySelector('#userId').value;
	var userPassword = document.querySelector('#userPassword').value;
	var userNickName = document.querySelector('#userNickName').value;
	var userEmail = document.querySelector('#userEmail').value;
	var userPhoneNum = document.querySelector('#userPhoneNum').value;
    
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '은(는) ' + length + '이상의 글자로 채워 주셔야 합니다.');
			return false;
		}
	});

	var params={userName:userName,userId:userId,userPassword:userPassword,userEmail:userEmail,userNickName:userNickName,
				userPhoneNum:userPhoneNum,userAddress:userAddress,userAddress2:userAddress2};
	 params = JSON.stringify(params); 
	
		var conf = {
				url : '/update/'+${userlogininfo.userNumber},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원수정이 완료 되셨습니다.');
						location.href="/url/user-info:my-page";
					};  
				}
		
		};
		var ajaxUtil = new AjaxUtil(conf);
		ajaxUtil.send();
	
}

</script>
</body>
</html>




