<!--마이페이지 배경깔았는데 css불안정하여 밑에 보톰이 안보이는 상황 나중에수정해보기로
 

디비실제이미지 수정 배경이미지 수정
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

<style>
div {
	/* border: 1px solid red; */
	
}
</style>
</head>



<body>
	<div class="view-container">


		<c:set value="${getUserInfo}" var="userinfo" />
		<!-- 프로필배경판넬 -->
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
					My Page>ID<b> ${userinfo.userId} </b><small>님의 페이지 입니다. 회원
						No.<b>${userinfo.userNumber}</b>
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
							<p>${userinfo.userName},${userinfo.userAddress}</p>

							<p style="clear: both;">
								신용점수 <b>${userinfo.userPoint}</b> | 신용등급 LV <b>${userinfo.userCreditLevel}</b>
								<br>회원 No.<b>${userinfo.userNumber}</b> | 권한등급 LV <b>${userinfo.userLevel}</b>
							</p>




						</div>
						ID : ${userinfo.userId}


						<p style="margin-top: 5px;">별명 : ${userinfo.userNickName}</p>
					</div>

					<div class="col-md-6"
						style="padding: 10px; border: 1px solid #f6f6f6;">



						이메일 : ${userinfo.userEmail}
						<p style="margin-top: 5px;">폰번호 : ${userinfo.userPhoneNum} |
							주소 : ${userinfo.userAddress}${userinfo.userAddress2}" |</p>
						<p style="margin-top: 30px;" class="my-page_follow-line">
							팔로윙 0명 | 팔로워 0명 | <img src="/img/kakao.png"> <img
								src="/img/facebook.png"> <img src="/img/instagram.png">
						</p>



					</div>


					<hr style="clear: both;">
					<h2>판매 품목</h2>

					<div id="product-div"></div>

					<%@ include file="/WEB-INF/views/common/footer.jspf"%>
					<%@ include file="/WEB-INF/views/common/bottom.jspf"%>

				</div>


			</div>

			<!-- 프로필판넬 -->



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
			                     html += '<p style="margin-top:10px;"><a href="#" class="btn btn-primary" role="button">입찰하기</a>';
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
	


function goPage(productNumber) {
	location.href = '/product/' + productNumber;
}


</script>
</body>
</html>




