
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

					<!-- 두번째 검색창라인 -->
					<div id="searchLine" class="home_search-line">


						<!-- 카테고리드랍다운영역 -->
						<div class="dropdown" id="my-page_drop-down">
							<button class="btn btn-default dropdown-toggle" type="button"
								id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
								카테고리 <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu1">
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Another action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Something else here</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1"
									href="#">Separated link</a></li>
							</ul>
						</div>
						<!-- 카테고리드랍다운영역 -->

						<!-- 검색창영역 -->
						<div class="my-page_search-bar">
							<div class="input-group">

								<input type="text" class="form-control" aria-label="..."
									placeholder="Search for...">

								<div class="input-group-btn">


									<button class="btn btn-default" type="button">Search</button>

									<button type="button" class="btn btn-default dropdown-toggle"
										data-toggle="dropdown" aria-expanded="false">
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu dropdown-menu-right" role="menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul>
								</div>
								<!-- /btn-group -->


							</div>
						</div>
						<!-- /input-group -->

					</div>
					<!-- 검색창영역 -->

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
								<img src="/img/icon_profile.png">
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
											id="signupName" value="${userLoginInfo.signupName}"
											data-vali="2"></td>
									</tr>
									<tr>
										<td>아이디</td>
										<td><input class="form-control" type="text" id="signupId"
											value="${userLoginInfo.signupId}" data-vali="2"></td>
									</tr>

									<tr>
										<td>패스워드</td>
										<td><input class="form-control" type="text"
											id="signupPassword" value="${userLoginInfo.signupPassword}"
											data-vali="2"></td>
									</tr>
									<tr>
										<td colspan="2"><div class="form-group">
												<div>
													관심사:
													<div id="myform">
														<input type="checkbox" id="beauty">미용 <input
															type="checkbox" id="machine">전자기기 <input
															type="checkbox" id="life">생활<br>
													</div>
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
											id="signupNickName" value="${userLoginInfo.signupNickName}"
											data-vali="2"></td>

									</tr>

									<tr>
										<td>이메일</td>
										<td><input class="form-control" type="text"
											id="signupEmail" value="${userLoginInfo.signupEmail}"
											data-vali="2"></td>

									</tr>

									<tr>
										<td>폰번호</td>
										<td><input class="form-control" type="text"
											id="signupPhone" value="${userLoginInfo.signupPhone}"
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
						오늘 bong에서 <a href="#">판매를 시작</a>하십시오.
					</p>
					<hr>


					<div id="my-page_setting-button">
						<img src="/img/icon_setup.png">설정
					</div>

					<div>
						<h2>팔로윙</h2>
						<p>
							다른 회원, 소장품 및 관심사를 따라 가면 <a href="#">bong 피드</a>에서 더 많은 검색 결과를 얻을
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
							<div id="session-less" style="margin:auto;">
								<img src="/img/icon_login.png">
								<h3>
									<a href="/url/SignUp:login"><b>로그인</b></a> 부탁드립니다. <small><a
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

	var signupName = document.querySelector('#signupName').value;
	var signupId = document.querySelector('#signupId').value;
	var signupPassword = document.querySelector('#signupPassword').value;
	var signupNickName = document.querySelector('#signupNickName').value;
	var signupEmail = document.querySelector('#signupEmail').value;
	var signupPhone = document.querySelector('#signupPhone').value;
    var setChk = "";
    if(document.querySelector('#beauty').checked) {
     setChk += "미용,";
    }
    if(document.querySelector('#machine').checked) {
     setChk += "전자기기,";
    }
    if(document.querySelector('#life').checked) {
     setChk += "생활,";
    }
    setChk = setChk.substr(0, setChk.length-1);
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '는 ' + length + '이상입니다.');
			return false;
		}
	});
		
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupEmail:signupEmail,
			signupNickName:signupNickName,signupPhone:signupPhone,signupConcern:setChk};
	 params = JSON.stringify(params); 
	
		var conf = {
				url : '/update/'+${userLoginInfo.signupNum},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원수정이 완료 되셨습니다.');
						location.href="//SignUp:MyPage";
					};  
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
	
}

</script>
</body>
</html>




