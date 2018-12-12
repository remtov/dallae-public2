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
div {
	border: 1px solid red;
}

h4 {
	margin-bottom: 20px;
}
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}
/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>
</head>
<body>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<%@ include file="/WEB-INF/views/common/head.jspf"%>
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
				<h3>
					<a href="/url/product:category:${product.productCategory}">${product.productCategory}</a>><b>${product.productName}</b><small>
						No.${product.productNumber}</small>
				</h3>
				<font color="#e53a6f" style="margin-bottom: 10px;">마감시까지 남은시간
					: <b id="days-output"></b>일<b id="hours-output"></b>시간 <b
					id="minutes-output"></b>분<b id="seconds-output"></b>초
				</font>

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
							
							html ='';
							$.ajax({
								url : '/bidding/'+${product.productNumber},
								type : 'GET',
								dataType:"json",
								success : function(res){
									alert(biddingId.length);    
									var biddsDate = res.biddsDate
									var biddingId = res.biddingId
									var max =biddingId.length;
									if(max>0){
										for(var i=0;i<max;i++){
											html+='<div><div style="width:100px;float:left;">'+biddingDate[i]+'</div><div style="width:100px;float:left;">'+res.biddingId[i]+'</div><br></div><br>';
										}
									}
									
									html+='<div class="bidCount">'+res.bidCount+'번 비딩함<div>';
									html+=${product.productLowestPrice}+(biddingId.length*200);
									document.querySelector('.bidding').insertAdjacentHTML('afterbegin', html);
								}
							}); 
					});
				</script>
				<div class='view'></div>
				<div style="float: left; width: 49%; border: 1px solid red;">
					<h4>
						<b>경매자</b> 정보
					</h4>

					<p>
						ID :
						<button class="btn btn-default" style="font-size: 1.2em;"
							onclick="location.href='/userinfo_my-page/${product.userNumber}'">
							${product.userId}</button>
						<br> 신용LV : <span style="font-size: 1.2em; color: #f4969b;">${product.userCreditLevel}/10
							<img src="/resources/img/icon-level-1.png"
							style="width: 30px; height: auto;">
						</span>
					</p>
				</div>

				<div style="float: right; width: 49%; border: 1px solid red;">
					<h4>
						<b>입찰</b> 정보
					</h4>
					<div style="overflow: auto; margin-top: 10px;">
						(parent)<br> 입찰가 : <b>${product.productLowestPrice}</b> 원

						<div style="float: left;">left</div>
						<div style="margin-left: 10px; float: left;">middle</div>
						<div style="float: right;">right</div>
					</div>
					<!-- Trigger/Open The Modal -->
					<button style="float: left;" class="btn btn-primary btn-lg"
						type="button">입찰 하기</button>
					<c:set var="endTime" value="${product.productEndDate}" />
					<!-- The Modal -->
					<div id="myModal" class="modal">
						(#myModal)
						<!-- Modal content -->
						<div class="modal-content">
							(#modal-content) <span class="close">&times;</span>
							<p>아아아</p>
							<!-- <div class="bidding">
							<button style="float: right;" class="btn btn-primary btn-lg"
								type="button" data-update>입찰 하기</button>
						</div> -->
						</div>

					</div>
				</div>
				<!-- Trigger/Open The Modal -->
				<button style="float: right;" class="btn btn-primary btn-lg"
					type="button" id="myBtn">입찰 하기</button>


					<!-- Modal content -->
					<div class="modal-content">
						<span class="close">&times;</span>
						<p>아아아</p>
						<div class="bidding">
							<button style="float: right;" class="btn btn-primary btn-lg"
								type="button" data-update>입찰 하기</button>
						</div>
					</div>

				<hr style="clear: both;">
				<h3>
					<span class="label label-info">판매중</span>
				</h3>
				<br> 등록일 : ${product.productDate}
				<h3>${product.productName}</h3>
				<p>상태 : ${product.productCondition}</p>

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
	<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
	<script>
		function updateBtn(productNumber) {
			location.href = '/productupdate/' + productNumber;
		}
		var bc = $('.bidCount').val();
		$('[data-update]').click(function(){
			$.ajax({
				url : '/biddingudt/'+${product.productNumber}+'/'+bc+'/'+'${product.productName}',
				type : 'PUT',
				success : function(res){
					if(res==0){
						alert("이 가격에 입찰한 사람이 있습니다");
						
					}else{
						alert("입찰에 성공하셨습니다");
					}
				}
			});
		});
		// Get the modal
        var modal = document.getElementById('myModal');
 
        // Get the button that opens the modal
        var btn = document.getElementById("myBtn");
 
        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close")[0];                                          
 
        // When the user clicks on the button, open the modal 
        $('#myBtn').click(function(){
            modal.style.display = "block";
        });
 
        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
            modal.style.display = "none";
        }
 
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

	</script>
</body>
</html>