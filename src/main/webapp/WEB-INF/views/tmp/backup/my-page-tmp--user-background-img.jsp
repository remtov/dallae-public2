
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MY PAGE</title>
<script>
window.addEventListener('load', function() {
	   var params = {
	      userId: '${userlogininfo.userId}'
	   };
	   params = JSON.stringify(params);

	   var ajaxUtil = new AjaxUtil({
	      url: '/product_id',
	      method: 'post',
	      param: params,
	      success: function(res) {
	         res = JSON.parse(res);
	         var plus = 0;
	         var html = '';
	         if (res.length % 4 != 0) {
	            plus = 1;
	         }
	   
	         for (var i = 0; i < (res.length / 4) + plus; i++) {
	            html = '<div class="row">';
	            for (var j = 0; j < 4; j++) {
	               if (j + (i * 4) == res.length) {
	                  break;
	               }
	               html += '<div class="col-sm-6 col-md-3">';
	               html += '<div class="thumbnail">';
	               html += '<img style="width:100%;" alt="매물-메인이미지" src="/resources/img/product/' + res[j + (i * 4)].productImage + '" onclick="goPage(' + res[j + (i * 4)].productNumber + ')">';
	               html += '<div class="caption">';
	               html += '<h3>' + res[j + (i * 4)].productName + '</h3>';
	               html += '<h4>시작가격 : ' + res[j + (i * 4)].productLowestPrice + ' 원</h4>';
	               html += '<h4>현재가격 : ' + res[j + (i * 4)].productLowestPrice * 3 / 2 + ' 원</h4>';
	               html += '<p>제품브랜드 : ' + res[j + (i * 4)].productBrand + ' | 판매자 : ' + res[j + (i * 4)].userId + ' | 제품수량 : ' + res[j + (i * 4)].productQuantity + ' | 분류 : ' + res[j + (i * 4)].productCategory + ' | 신용등급 : ' + res[j + (i * 4)].userCreditLevel + ' | 등록일 : ' + res[j + (i * 4)].productDate + ' | 마감일 : ' + res[j + (i * 4)].productEndDate + '</p>';
	               html += '<div style="height:50px;overflow:hidden;">'
	               html += '<p>' + res[j + (i * 4)].productCondition + '</p>';
	               html += '</div>'
	               html += '<div style="height:50px;overflow:hidden;">'
	               html += '<p>' + res[j + (i * 4)].productDesc + '</p>';
	               html += '</div>'
	               html += '<a style="margin-top:10px;" href="#" class="btn btn-primary" role="button" onclick="goPage(' + res[j + (i * 4)].productNumber + ')">수정</a></p>';
	               html += '</div></div></div>';
	            }
	            html += '</div>';
	            document.querySelector('#product-div').insertAdjacentHTML('beforeend', html);
	         }
	         
	      }
	   });
	   ajaxUtil.send();
	});
</script>
</head>
<body>
	<div class="view-container">
		<c:choose>
			<c:when test="${not empty sessionScope.userlogininfo}">
				<!-- 세션을 가진 사람-->
				
				<div
					style="width: 100%; height: 500px; position: relative; z-index: 1;">
					<img src="/img/back-ground-1.jpg"
						style="width: auto; position: absolute; z-index: 1;">
					<div class="my-page_in-box" style="position: absolute;">
						<button
							style="position: absolute; top: -30px; right: 0px; z-index: 2;"
							class="btn btn-default btn-xs">
							편집 <img style="width: 13px;" src="/img/icon_edit.png">
						</button>
						<h2>
							My Page>ID<b> ${userlogininfo.userId} </b><small>님의 페이지
								입니다. ${userlogininfo.userSignUpDate}</small>
						</h2>
						<div class="row">
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								<div style="width: 30%; float: left;">
									<a href="#"><img src="/img/icon_profile.png"
										style="width: 70px;"></a>
								</div>
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
									비밀번호 <input style="width: 200px;" class="form-control"
										type="password" id="userPassword"
										value="${userlogininfo.userPassword}" data-vali="2">
									비밀번호 확인 <input style="width: 200px;" class="form-control"
										type="password" id="confirmPassword"
										value="${userlogininfo.userPassword}" data-vali="2">
								<p style="margin-top: 5px;">
									별명 <input style="width: 200px;" class="form-control"
										type="text" id="userNickName"
										value="${userlogininfo.userNickName}" data-vali="2">
								</p>
							</div>
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								이메일<input class="form-control" type="email" id="userEmail"
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
							<hr style="clear: both;">
							<h2>판매 품목</h2>
							<div id="product-div"></div>
							<%@ include file="/WEB-INF/views/common/footer.jspf"%>
							
						</div>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<!-- 세션없는 사람-->
				<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
			</c:otherwise>
		</c:choose>
	</div>
<script>
function save(){
	var userName = document.querySelector('#userName').value;
	var userId = document.querySelector('#userId').value;
	var userNickName = document.querySelector('#userNickName').value;
	var userPassword = document.querySelector('#userPassword').value;
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

function goPage(productNumber) {
	location.href = '/productupdate/' + productNumber;
}


</script>
</body>
</html>




