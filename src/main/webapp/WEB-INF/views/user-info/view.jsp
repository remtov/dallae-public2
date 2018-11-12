



<!-- 백엔드
-올린사람, 올린장소, 신용도(매너점수) 출력될수있도록한다
-입찰중인지 입찰종료되었는지 배송중인지 결제중이라던지 상태볼수있는 데이터베이스 컬럼필요한듯?

프론트엔드
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>정보 수정 페이지</title>
<style>
h1 {
	margin-top: 70px;
}

th {
	text-align: right;
}

tr {
	/* border: 1px solid black; */
	height: 50px;
}

td {
	
}

table {
	margin-bottom: 50px;
}

.view-container .container {
	max-width: 800px;
}

.view-container .container>div {
	margin-bottom: 50px;
}

#view_btn-tr {
	height: 100px;
}
</style>
<script>

</script>
</head>
<body>
	<div class="view-container">
		<div class="container">
			<div>
				<h1>회원정보 수정</h1>
				<p>
					이전페이지로 돌아 가시겠습니까? <a onclick="backBtn()">돌아가기</a>
				</p>

			</div>



			<c:set value="${getUserInfo}" var="userinfo" />


			<div style="padding: 20px; background-color: white;">
				<h2>
					My Page>ID<b> ${userinfo.userId} </b><small>님의 페이지 입니다.
						${userinfo.userSignUpDate} <b> No.${userinfo.userNumber}</b>
					</small>
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
									type="text" id="userName" value="${userinfo.userName}"
									data-vali="2"> <span
									class="my-page_cut-text--inline-100">|
									${userinfo.userAddress}</span>
							</p>

							<p style="clear: both;">
								신용점수 <input style="width: 50px;" type="number" data-vali="2"
									id="userPoint" value="${userinfo.userPoint}">점 | 신용등급
								LV <input style="width: 50px;" type="number" data-vali="2"
									id="userCreditLevel" value="${userinfo.userCreditLevel}">
								| 권한등급 LV <input style="width: 50px;" type="text" data-vali="2"
									id="userLevel" value="${userinfo.userLevel}">


							</p>
						</div>

						ID<input style="width: 80px;" class="form-control" type="text"
							id="userId" value="${userinfo.userId}" data-vali="2">
						<p style="margin-top: 5px;">
							비밀번호 <input style="width: 200px;" class="form-control"
								type="password" id="userPassword"
								value="${userinfo.userPassword}" data-vali="2"> 비밀번호 확인
							<input style="width: 200px;" class="form-control" type="password"
								id="confirmPassword" value="${userinfo.userPassword}"
								data-vali="2">
						<p style="margin-top: 5px;">
							별명 <input style="width: 200px;" class="form-control" type="text"
								id="userNickName" value="${userinfo.userNickName}" data-vali="2">
						</p>
					</div>

					<div class="col-md-6"
						style="padding: 10px; border: 1px solid #f6f6f6;">



						이메일<input type="email" id="userEmail"
							value="${userinfo.userEmail}" data-vali="2" required>
						<p style="margin-top: 5px;">
							폰번호 <input style="width: 200px;" class="form-control" type="text"
								id="userPhoneNum" value="${userinfo.userPhoneNum}" data-vali="2">
							<input style="margin: 5px 0px 5px 0px" class="form-control"
								type="text" value="${userinfo.userAddress}" id="userAddress">
							<input class="form-control" type="text"
								value="${userinfo.userAddress2}" id="userAddress2">
						</p>
						<p style="margin-top: 30px;" class="my-page_follow-line">
							팔로윙 0명 | 팔로워 0명 | <img src="/img/kakao.png"> <img
								src="/img/facebook.png"> <img src="/img/instagram.png">
						</p>
						<input class="btn btn-primary btn-lg btn-block" type="button"
							name="checkButton" value="수정 " onclick="updateBtn()"> <input
							type="button" class="btn btn-danger btn-lg btn-block"
							value="주의! 데이터가 삭제됩니다." onclick="deleteBtn()">

					</div>
					<hr style="clear: both;">
					<h2>판매 품목</h2>

					<div id="product-div"></div>
					<%@ include file="/WEB-INF/views/common/footer.jspf"%>


				</div>
			</div>

		</div>
	</div>
	<script>

	window.addEventListener('load',
			   function() {
				
					var params={userId:'${userinfo.userId}'};
				
				 params = JSON.stringify(params); 
				      var ajaxUtil = new AjaxUtil({

			            url: '/product_id',
			            method:'post',
			       		 param : params,
			            success: function(res) {
			               res = JSON.parse(res);
			               var plus = 0;
			               var html = '';
			               if (res.length % 4 != 0) {
			                  plus = 1;
			               }

			               for (var i = 0; i < (res.length / 4) + plus;

			                  i++) {
			                  html = '<div class="row">';
			                  for (var j = 0; j < 4;

			                     j++) {
			                     if (j + (i * 4) == res.length) {
			                        break;
			                     }

			                  	       		       
			                     
			                     html += '<div class="col-sm-6 col-md-3">';
			                     html += '<div class="thumbnail">';
			                     html += '<img style="width:100%;" alt="매물-메인이미지" src="/resources/img/product/' +
			                        res[j + (i * 4)].productImage + '" onclick="goPage(' +
			                        res[j + (i * 4)].productNumber + ')">';
			                     html += '<div class="caption">';
			                     html += '<h3>' +
			                        res[j + (i * 4)].productName + '</h3>';
			                     html += '<h4>시작가격 : ' +
			                        res[j + (i * 4)].productLowestPrice + ' 원</h4>';
			                     html += '<h4>현재가격 : ' +
			                        res[j + (i * 4)].productLowestPrice*3/2 + ' 원</h4>';
			                     html += '<p>제품브랜드 : ' +res[j + (i * 4)].productBrand + 
			                     ' | 판매자 : ' +res[j + (i * 4)].userId +
			                     
			                     
			                     ' | 제품수량 : ' +res[j + (i * 4)].productQuantity + 
			                     ' | 분류 : ' +
			                        res[j + (i * 4)].productCategory + ' | 신용등급 : ' +
			                        res[j + (i * 4)].userCreditLevel + 
			                        ' | 등록일 : ' + res[j + (i * 4)].productDate + 
			                        ' | 마감일 : ' + res[j + (i * 4)].productEndDate + '</p>';
			                     html += '<div style="height:50px;overflow:hidden;">'
			                     html += '<p>' +
			                        res[j + (i * 4)].productCondition + '</p>';
			                     html += '</div>'
			                     html += '<div style="height:50px;overflow:hidden;">'
			                     html += '<p>' +
			                        res[j + (i * 4)].productDesc + '</p>';
			                     html += '</div>'
			                     html += '<a style="margin-left:10px;" href="#" class="btn btn-default" role="button" onclick="goPage(' +
			                        res[j + (i * 4)].productNumber + ')">더보기</a></p>';
			                     html += '</div></div></div>';
			                  }

			                  html += '</div>';
			                  document.querySelector('#product-div').insertAdjacentHTML('beforeend', html);
			               }
			            }
			         }

			      );
			      ajaxUtil.send();
			   }

			);
	
function backBtn(){
	location.href="/url/user-info:admin"
}


function deleteBtn(){ 
			var conf = {
					url : '/delete/' + ${userinfo.userNumber},
					method : 'DELETE',
					success : function(res){
						if(res!==1){					  
							alert('성공');
							location.href='/url/user-info:admin';
					}
				}
		}
			
			var ajaxUtil = new AjaxUtil(conf);
			ajaxUtil.send();
}


function updateBtn(){
	
	var userName = document.querySelector('#userName').value;
	var userPoint = document.querySelector('#userPoint').value;
		var userCreditLevel = document.querySelector('#userCreditLevel').value;
	var userLevel = document.querySelector('#userLevel').value;
	
	var userId = document.querySelector('#userId').value;
	var userPassword = document.querySelector('#userPassword').value;
	var userNickName = document.querySelector('#userNickName').value;
	var userEmail = document.querySelector('#userEmail').value;
	var userPhoneNum = document.querySelector('#userPhoneNum').value;
	
	var userAddress = document.querySelector('#userAddress').value;
	var userAddress2 = document.querySelector('#userAddress2').value;
	
	
	var params={
			userName:userName,
			userPoint:userPoint,
			userCreditLevel:userCreditLevel,
			userLevel:userLevel,
			
			userId:userId,
			userPassword:userPassword,
			userNickName:userNickName,
			userEmail:userEmail,
			userPhoneNum:userPhoneNum,
			
			userAddress:userAddress,
			userAddress2:userAddress2
			};
	 params = JSON.stringify(params); 
	 
		var conf = {
				
				url : '/updatevil/'+ ${userinfo.userNumber},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert("성공하였습니다.");
						location.href="/userinfo/"+${userinfo.userNumber};
					}
				}
		
		};
		var ajaxUtil = new AjaxUtil(conf);
		ajaxUtil.send();
		
}

</script>
</body>
</html>