
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>MY PAGE</title>
<script>

</script>
</head>
<body>
	<div class="view-container">
		<c:set value="${getUserInfo}" var="userinfo" />
		<c:choose>
			<c:when test="${not empty userinfo}">
				<!-- 관리자나 뷰페이지에서 찍고 들어온 사람 -->
				<div class="container">
					<div
						style="margin-top: 20px; border: 1px solid #d6d6d6; padding: 30px;">
						<h3>
							My Page>ID<b> '${userinfo.userId}' </b> 님의 페이지 입니다. <span
								class="badge">No.${userinfo.userNumber}</span>
						</h3>
						<div class="row">
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								<div style="width: 30%; float: left;">
									<a href="#"><img src="/img/icon_profile.png"
										style="width: 70px;"></a>
								</div>
								<div style="width: 70%; float: left;">
									<p>
										<b style="font-size: 1.3em">${userinfo.userName}</b>,${userinfo.userAddress}
									</p>
									<p style="clear: both;">
										신용점수 <b>${userinfo.userPoint}</b> | 신용등급 LV <b>${userinfo.userCreditLevel}</b>
										권한등급 LV <b>${userinfo.userLevel}</b> <br> 가입일 :
										${userinfo.userSignUpDate}
									</p>
								</div>
								ID : ${userinfo.userId}
								<p style="margin-top: 5px;">별명 : ${userinfo.userNickName}</p>
							</div>
							<div class="col-md-6"
								style="padding: 10px; border: 1px solid #f6f6f6;">
								이메일 : ${userinfo.userEmail}
								<p style="margin-top: 5px;">주소 :
									"${userinfo.userAddress}..." |</p>
								<hr style="clear:both;">
								<p class="pull-right">
									<button class="btn btn-primary btn-lg"
										onclick="alertContact();">판매자와 <b>연락하기</b></button>
								</p>
							</div>
						</div>
					</div>
					<hr style="clear: both;">
					<h3>
						<b>'${userinfo.userId}'</b> 님의 판매 품목입니다.
					</h3>
					<div id="product-div"></div>
					<%@ include file="/WEB-INF/views/common/footer.jspf"%>
				</div>
			</c:when>
			<c:otherwise>
				<!-- 메인뷰에서 오지 않은 사람-->
				<%@ include file="/WEB-INF/views/product/list.jsp"%>
			</c:otherwise>
		</c:choose>
	</div>
	<script>
	window.addEventListener('load', function() {
	    var params = {
	        userId: '${userinfo.userId}'
	        
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
	                    html += img[0];
	                    html += '"></a>';
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
	                    html += '<p style="margin-top:10px;"><a href="#" class="btn btn-primary" role="button">입찰하기</a>';
	                    html += '<a style="margin-left:10px;" href="#" class="btn btn-default" role="button" onclick="goPage(' + res[j + (i * 4)].productNumber + ')">더보기</a></p>';
	                    html += '</div></div></div>';
	                }
	                html += '</div>';
	                document.querySelector('#product-div').insertAdjacentHTML('beforeend', html);
	            }
	        }
	    });
	    ajaxUtil.send();
	});

	function goPage(productNumber) {
	    location.href = '/product/' + productNumber;
	}
	
	function alertContact() {
		alert('판매자와 연락하기 test-1 ${userinfo.userPhoneNum}');
	}
	</script>
</body>
</html>




