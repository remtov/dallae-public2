<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>


<!DOCTYPE html>
<html>
<head>
<style>
h4 {
	margin-bottom: 20px;
}
</style>l
</head>
<body>

	<div class="view-container">
		<div class="container">
			<div class="inner-box">
				<!-- 데이터베이스 날짜 형 변환 -->
				<c:set var="endTime" value="${product.productEndDate}" />
				<fmt:parseDate var="endTimeDate" value="${endTime}"
					pattern="yyyy-MM-dd HH:mm:ss" />
				<fmt:parseNumber var="endTimeNumber" value="${endTimeDate.time}"
					integerOnly="true" />
				<h3>경매 보기</h3>
				<h3><a href="/url/product:category:${product.productCategory}">${product.productCategory}</a>><b>${product.productName}</b><small><font
						color="#e53a6f"> | 마감시까지 <b id="days-output"></b>일<b
							id="hours-output"></b>시간 <b id="minutes-output"></b>분<b
							id="seconds-output"></b>초 남았습니다.
					</font></small>
				</h3>

				<script type="text/javascript">
				function closingTimeCalculation() {
					 var now = new Date();
					 var dday = new Date(${endTimeNumber}); 
				
					 if (now.getTime() > dday.getTime()) {
					    alert('마감된 상품입니다.')
					    location.href = '/url/product:list';				
					  }
					  days = (dday - now) / 1000 / 60 / 60 / 24;
					  daysRound = Math.floor(days);

					  hours = (dday - now) / 1000 / 60 / 60 - (24 * daysRound);
					  hoursRound = Math.floor(hours);
					  
					  minutes = (dday - now) / 1000 / 60 - (24 * 60 * daysRound) - (60 * hoursRound);
					  minutesRound = Math.floor(minutes);
					  
					  seconds = (dday - now) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) - (60 * minutesRound);
					  secondsRound = Math.round(seconds);
					  
					  document.getElementById("days-output").innerHTML = daysRound;
					  document.getElementById("hours-output").innerHTML = hoursRound;
					  document.getElementById("minutes-output").innerHTML = minutesRound;
					  document.getElementById("seconds-output").innerHTML = secondsRound;
					  newtime = window.setTimeout("closingTimeCalculation();", 1000);
					}
					setTimeout(closingTimeCalculation, 100);
					
					window.addEventListener('load', function() {
						var imgs = '${product.productImage}';
						var img = imgs.split('|');
						var html ='';
												
						html += '<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">';
						html += '<ol class="carousel-indicators">';
						
						for (var j = 0; j < img.length; j++) {
							html += '<li data-target="#carousel-example-generic" data-slide-to="'+j+'"';
							
							if (j == 0) {
								html +=	' class="active';
								}
							html +='"></li>';
	
							}
						
							html +='</ol>';
							html += '<div class="carousel-inner" role="listbox">';
							
						for (var i = 0; i < img.length; i++) {
							html += '<div style="max-height:500px; overflow:hidden;" class="item';

							if (i == 0) {
								html += ' active';
								}
								html += '">';
								html+='<img style="max-height:500px; width:auto; margin:auto;" onError="this.src=\'/resources/img/icon-img.png\'" src="/resources/img/product/'+img[i]+'">';
								html+='<div class="carousel-caption"></div></div>';
							}
			
							html += '</div>';
							html += '<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">';
							html += '<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>';
							html += '<span class="sr-only">Previous</span></a>';
							html += '<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">';
							html += '<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>';
							html += '<span class="sr-only">Next</span></a></div>';
						
							document.querySelector('.view').insertAdjacentHTML('beforeEnd', html);
					});
				</script>
				<div class='view'></div>
				<div style="overflow: auto; margin-top: 10px;">
					<div style="float: left;">
						<img style="width: 50px; height: auto;"
							src="/resources/img/icon_profile.png">
					</div>
					<div style="margin-left: 10px; float: left;">
						<p>
							<a style="font-size: 1.2em;"
								href="/userinfo_my-page/${product.userNumber}">판매자 ID : <b>${product.userId}</b>
								님의 페이지로 가기
							</a> <br> 게시물 번호: ${product.productNumber} <br>
						</p>
					</div>
					<div style="float: right;">
						<span style="font-size: 0.8em;">판매자 신용등급 (최고LV 10) : </span><span
							style="font-size: 1.5em; color: #f4969b;"> LV
							${product.userCreditLevel} </span> <img src="/resources/img/icon-level-1.png"
							style="width: 50px; height: auto;">
					</div>
				</div>
				<hr style="clear: both;">
				<h3>
					<span class="label label-info">판매중</span>
				</h3>
				<h3>${product.productName}</h3>
				<p>상태 : ${product.productCondition} | 등록일 :
					${product.productDate}</p>
				<p>시작가 : ${product.productLowestPrice} 원</p>
				<p>${product.productDesc}</p>
				<p>
					제품수량 : <b>${product.productQuantity}</b> 개<br> 브랜드명 :
					${product.productBrand}
				</p>
				<c:set var="userId" value="${userlogininfo.userId}"></c:set>
				<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
				<c:choose>
					<c:when test="${userLevel>2.5||userId==product.userId}">
						<!-- 관리자나 같은 아이디일 경우 버튼이 보여서 뷰 업데이트 페이지로 갈 수 있음 -->
						<button style="float: right;" class="btn btn-primary btn-lg"
							type="button" onclick="updateBtn(${product.productNumber})">수정</button>
						<hr style="visibility: hidden;">
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
			</div>
			<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
		</div>
	</div>
	
	<script>
		function updateBtn(productNumber) {
			location.href = '/productupdate/' + productNumber;
		}
	</script>
</body>
</html>