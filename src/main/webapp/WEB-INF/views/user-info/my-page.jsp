
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MY PAGE</title>
<style>
.my-page_in-box {
	margin-top: 20px;
	border: 1px solid #d6d6d6;
	padding: 30px;
}
</style>
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
	               html += '<a onclick="goPage(' + res[j + (i * 4)].productNumber + ')"><img style="width:100%;" alt="sell-img" src="/resources/img/product/';
	               var imgs = res[j + (i * 4)].productImage;
	               var img = imgs.split('|');
	               html += img[0]+'"></a>';
	               html += '<div class="caption">';
	               html += '<h3>' + res[j + (i * 4)].productName + '</h3>';
	               html += '<h4>시작가격 : ' + res[j + (i * 4)].productLowestPrice + ' 원</h4>';
	               html += '<h4>현재가격 : ' + res[j + (i * 4)].productLowestPrice * 3 / 2 + ' 원</h4>';
	               html += '<p>제품브랜드 : ' + res[j + (i * 4)].productBrand + ' | 판매자 : ' + res[j + (i * 4)].userId + ' | 제품수량 : ' + res[j + (i * 4)].productQuantity + ' | 분류 : ' + res[j + (i * 4)].productCategory + ' | 신용등급 : ' + res[j + (i * 4)].userCreditLevel + ' | 등록일 : ' + res[j + (i * 4)].productDate + ' | 마감일 : ' + res[j + (i * 4)].productEndDate + '</p>';
	               html += '<div style="height:50px;overflow:hidden;">'
	               html += '<p>' + res[j + (i * 4)].productCondition + '</p>';
	               html += '</div>'
	               html += '<div style="height:60px;overflow:hidden;">'
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
<%@ include file="/WEB-INF/views/common/head.jspf"%>
	<div class="view-container">
		<c:choose>
			<c:when test="${not empty sessionScope.userlogininfo}">
				<!-- 세션을 가진 사람-->
				<div class="container">
					<div class="my-page_in-box">
						<h3>
							My Page>ID<b> ${userlogininfo.userId} </b>님의 페이지 입니다. <span
								class="badge">No.${userlogininfo.userNumber}</span>

						</h3>

						<div class="row">
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								<div style="width: 30%; float: left;">
									<a href="#"><img src="/resources/img/icon_profile.png"
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
										<br>회원 No.<b>${userlogininfo.userNumber}</b> | 권한등급 LV <b>${userlogininfo.userLevel}</b><br>
										가입일 : ${userlogininfo.userSignUpDate}
									</p>
								</div>
								ID<input style="width: 80px;" class="form-control" type="text"
									id="userId" value="${userlogininfo.userId}" data-vali="2">
								<p style="margin-top: 5px;">
									기존 비밀번호<input style="width: 250px;" class="form-control"
										type="text" id="userPassword"
										placeholder="비밀번호 변경 하실 경우 입력하세요"> 새 비밀번호<input
										style="width: 250px;" class="form-control" type="text"
										id="userPasswordNew" placeholder="비밀번호 변경 하실 경우 입력하세요">
									새 비밀번호 확인<input style="width: 250px;" class="form-control"
										type="text" id="userPasswordNewConfirm"
										placeholder="비밀번호 변경 하실 경우 입력하세요">

								</p>
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
								<div class="pull-right">
									<input class="btn btn-primary btn-lg" type="button"
										name="checkButton" value=" 수 정 " onclick="save()">
								</div>
							</div>
						</div>
					</div>
					<hr style="clear: both;">

					<h3>
						<b> ${userlogininfo.userId}</b> 님의 경매품목입니다.
					</h3>
					<div id="product-div"></div>
					<%@ include file="/WEB-INF/views/common/footer.jspf"%>


				</div>
			</c:when>
			<c:otherwise>
				<!-- 세션없는 사람-->
				<div class="view-container">
					<div class="container">
						<div class="inner-box">
							<h3>전체 경매물품 목록입니다</h3>
							<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
						</div>
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
<script>
function save() {
	   var userPassword = document.querySelector('#userPassword').value;
	   var userPasswordNew = document.querySelector('#userPasswordNew').value;
	   var userPasswordNewConfirm = document.querySelector('#userPasswordNewConfirm').value;
	   var userName = document.querySelector('#userName').value;
	   var userId = document.querySelector('#userId').value;
	   var userNickName = document.querySelector('#userNickName').value;
	   var userEmail = document.querySelector('#userEmail').value;
	   var userPhoneNum = document.querySelector('#userPhoneNum').value;
	   var userAddress = document.querySelector('#userAddress').value;
	   var userAddress2 = document.querySelector('#userAddress2').value;
	   var valis = document.querySelectorAll('*[data-vali]');
	   valis.forEach((e) => {
	      var length = e.getAttribute('data-vali');
	      if (e.value.trim().length < length) {
	         e.focus();
	         alert(e.id + '은(는) ' + length + '이상의 글자로 채워 주셔야 합니다.');
	         return true;
	      }
	   });
	   if (userPassword.trim() != '') {
	      if (userPasswordNew.trim() == userPasswordNewConfirm.trim()) {
	         var params = {
	            userName: userName,
	            userId: userId,
	            userEmail: userEmail,
	            userNickName: userNickName,
	            userPhoneNum: userPhoneNum,
	            userAddress: userAddress,
	            userAddress2: userAddress2,
	            userPassword: userPasswordNew,
	            paww: userPassword
	         }
	      } else {
	         alert('새 비밀번호와 비밀번호 확인이 다릅니다.')
	      }
	   } else {
	      var params = {
	         userName: userName,
	         userId: userId,
	         userEmail: userEmail,
	         userNickName: userNickName,
	         userPhoneNum: userPhoneNum,
	         userAddress: userAddress,
	         userAddress2: userAddress2
	      }
	   }
	   params = JSON.stringify(params);
	   var conf = {
	      url:'/update/'+${userlogininfo.userNumber},
	      method: 'PUT',
	      param: params,
	      success: function(res) {
	         /* alert(res) */
	         if (res == 1) {
	            alert('회원수정이 완료 되셨습니다.');
	            location.href = "/url/user-info:my-page";
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
<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
</body>
</html>




