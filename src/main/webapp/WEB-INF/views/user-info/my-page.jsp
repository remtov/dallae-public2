
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MY PAGE</title>

</head>


<style>
.my-page_search-line {
	position: relative;
}

#my-page_drop-down {
	display: inline-block;
	width: 100px;
}

.my-page_search-bar {
	z-index: 1;
	display: inline-block;
	position: absolute;
	left: 100px;
	right: 0;
}

.my-page_back-ground {
	margin-top: 10px;
	position: relative;
	z-index: 1;
}

#my-page_row1 {
	position: absolute;
	top: 50px;
	left: 50%;
	text-align: right;
	transform: translate(-50%);
	width: 800px;
	height: 20px;
	z-index: 2;
}

#my-page_row1>button {
	height: 100%;
	font-size: 0.8em;
	margin-top: 0px;
}

#my-page_row1>button>p {
	margin-top: -5px;
}

#my-page_row1>button>p>img {
	height: 17px;
	margin-top: -3px;
}

#my-page_row2 {
	position: absolute;
	bottom: 0px;
	left: 50%;
	transform: translate(-50%);
	width: 800px;
	background-color: #f6f6f6;
	height: 200px;
	z-index: 2;
}

#my-page_row2>.col-md-3 {
	height: 100%;
	z-index: 3;
	position: relative;
}

#my-page_row2>.col-md-3>img {
	margin-top: 20px;
	width: 100%;
}

#my-page_row2>.col-md-3>div {
	position: absolute;
	width: 30px;
	top: 0px;
	right: 0px;
}

#my-page_row2>.col-md-3>div>button {
	margin-top: 5px;
}

#my-page_row2>.col-md-3>div>button>img {
	width: 100%;
}

#my-page_row2>.col-md-4 {
	height: 100%;
	z-index: 3;
}

#my-page_row2>.col-md-4 .form-control {
	margin-top: 5px;
}

#user-pannel_td-widther {
	width: 70px;
}

#my-page_row2>.col-md-5 {
	height: 100%;
	z-index: 3;
}

#my-page_row2>.col-md-5 .form-control {
	margin-top: 5px;
}

#my-page_button-save {
	margin-top: 5px;
}

.my-page_follow-line {
	margin-top: 10px;
}

.my-page_follow-line>img {
	width: 20px;
}

.my-page_back-ground>img {
	width: 100%;
	z-index: 1;
}

#my-page_setting-button {
	width: 100%;
	margin-top: -50px;
	text-align: right;
}

#my-page_setting-button>img {
	width: 15px;
}

#my-page_follow-line {
	margin-bottom: 30px;
}

tr td .form-group div #myform {
	margin-top: 5px;
}
</style>

<body>
	<div class="my-page_container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userLoginInfo}">
					<!-- 세션을가진사람만보임 -->

					<!-- 프로필판넬 -->
					<div class="my-page_back-ground">
						<div class="row" id="my-page_row1">
							<button class="btn btn-default">
								<p>
									배경이미지 편집 <img src="/img/icon_edit.png">
								</p>
								<!-- 수정버튼 -->
							</button>
						</div>

						<div class="row" id="my-page_row2">
							<!-- 프로필판넬 -->
							<div class="col-md-3">
								<img src="/img/icon_profile.png"> DB 이미지 테스트<img
									src="/img/${userImage}">
								<!-- 프로필사진 -->
								<div>
									<button>
										<img src="/img/icon_edit.png">
										<!-- 수정버튼 -->
									</button>

								</div>

							</div>
							<!-- 수정 인풋 -->


							<div class="col-md-4">
								<table>
									<tr>
										<td id="user-pannel_td-widther">이름</td>
										<td><input class="form-control" type="text"
											id="signupName" value="${userLoginInfo.userName}"
											data-vali="2"></td>
									</tr>
									<tr>
										<td>아이디</td>
										<td><input class="form-control" type="text" id="signupId"
											value="${userLoginInfo.userId}" data-vali="2"></td>
									</tr>

									<tr>
										<td>패스워드</td>
										<td><input class="form-control" type="password"
											id="userPassword" value="${userLoginInfo.userPassword}"
											data-vali="2"></td>
									</tr>
									<tr>
										<td colspan="2"><div class="form-group">
												<div>
													<input class="form-control" type="text" id="" value=""
														data-vali="2">

												</div>
											</div></td>
									</tr>
								</table>
							</div>



							<div class="col-md-5">
								<table>
									<tr>
										<td id="user-pannel_td-widther">별명</td>
										<td><input class="form-control" type="text"
											id="userNickName" value="${userLoginInfo.userNickName}"
											data-vali="2"></td>

									</tr>

									<tr>
										<td>이메일</td>
										<td><input class="form-control" type="text"
											id="userEmail" value="${userLoginInfo.userEmail}"
											data-vali="2"></td>

									</tr>

									<tr>
										<td>폰번호</td>
										<td><input class="form-control" type="text"
											id="userPhoneNum" value="${userLoginInfo.userPhoneNum}"
											data-vali="2"></td>

									</tr>

									<tr>
										<td colspan="2"><input id="my-page_button-save"
											class="btn btn-default btn-lg btn-block" type="button"
											name="checkButton" value=" 수 정 " onclick="save()"></td>

									</tr>
									<tr>

										<td colspan="2">
											<p class="my-page_follow-line">
												팔로윙 0명 | 팔로워 0명 | <img src="/img/kakao.png"> <img
													src="/img/facebook.png"> <img
													src="/img/instagram.png">
											</p>
										</td>
									</tr>

								</table>
								<div>
									회원번호 : ${userNumber} | 등록일 : ${userSignUpDate} | 권한등급 :
									${userLevel} | 포인트 : ${userPoint} | 신용등급 : ${userCreditLevel} |
									<input class="form-control" type="text" value="userAddress"
										id="userAddress"> <input class="form-control"
										type="text" value="userAddress2" id="userAddress2">

								</div>


							</div>
							<!-- 수정 인풋 -->

							<!-- 배경 -->
						</div>


						<img src="/img/background01.jpg">
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
				url : '/Update/'+${userLoginInfo.userNumber},
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




