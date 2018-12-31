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
	/* border: 1px solid red; */
	
}

h4 {
	margin-bottom: 20px;
}

.dd {
	border: 1px solid red;
	overflow: scroll;
	width: 300px;
	height: 150px;
	padding: 10px;
}

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

.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}

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
	
	<div class="view-container">
		<div class="container">
			<div class="inner-box">
				<!-- 데이터베이스 날짜 형 변환 -->
			
				<ol class="breadcrumb2">
					<li><button onclick="location.href='/'"
							class="btn btn-default">홈으로</button></li>
					<li><button onclick="location.href='/url/product:list'"
							class="btn btn-default">경매보기</button></li>
					<li class="active"><select id="category-select-id"
						name="categorySelect"
						style="margin-top: 4px; width: 100px; height: 33px; display: inline !important;'"
						class="form-control" onchange="selectCategoryAction()"
						onclick="selectOnClickEvent()">

							<option value="null">선택</option>
							<option
								<c:if test="${product.productCategory eq 'digital'}">selected </c:if>
								value="digital">디지털</option>
							<option
								<c:if test="${product.productCategory eq 'fashion'}">selected </c:if>
								value="fashion">패션</option>
							<option
								<c:if test="${product.productCategory eq 'healthBeauty'}">selected </c:if>
								value="healthBeauty">건강&#38;뷰티</option>
							<option
								<c:if test="${product.productCategory eq 'life'}">selected </c:if>
								value="life">생활</option>
							<option
								<c:if test="${product.productCategory eq 'motorPartz'}">selected </c:if>
								value="motorPartz">모터파츠</option>
							<option
								<c:if test="${product.productCategory eq 'rareCollection'}">selected </c:if>
								value="rareCollection">희귀품</option>
							<option
								<c:if test="${product.productCategory eq 'sports'}">selected </c:if>
								value="sports">스포츠</option>
							<option
								<c:if test="${product.productCategory eq 'toyHobby'}">selected </c:if>
								value="toyHobby">장난감&#38;취미</option>
					</select> <script type="text/javascript">
					function selectCategoryAction() {
					    var categorySelectId = document.getElementById("category-select-id");
					    var categorySelectValue = categorySelectId.options[categorySelectId.selectedIndex].value;
					    var categorySelectText = categorySelectId.options[categorySelectId.selectedIndex].text;
					    if (categorySelectValue != 'null') {
					        location.href = '/url/product:category:' + categorySelectValue;
					    }
					}

					function selectOnClickEvent() {
					    $('#category-select-id').val('null').change();
					}
						</script></li>
					<li><button class="btn btn-default active">자세히보기</button></li>
				</ol>



				<script type="text/javascript">
				function closingTimeCalculation() {
					var testTime = document.getElementById("testTime");
					var now = new Date();
				    var dday = new Date('${product.productEndDate}');
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
				    
					
					testTime.innerHTML += "<p><b><font color='red'>데이터베이스에서 받아온 데이터 : ${product.productEndDate} , 마감일자 값 : "+ dday + ' , 현재일자 값 : ' + now + ' , 남은일자 : '+days+' , 남은시간 : '+hours+' , 남은분 : '+minutes+' , 남은초 : '+seconds +"</font></b></p>";
				}
				setTimeout(closingTimeCalculation, 100);
				window.addEventListener('load', function() {
				    var imgs = '${product.productImage}';
				    var img = imgs.split('|');
				    var html = '';
				    html += '<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">';
				    html += '<ol class="carousel-indicators">';
					    for (var j = 0; j < img.length; j++) {
					        html += '<li data-target="#carousel-example-generic" data-slide-to="' + j + '"';
					        if (j == 0) {
					            html += ' class="active';
					        }
					        html += '"></li>';
					    }
				    html += '</ol>';
				    html += '<div class="carousel-inner" role="listbox">';
					    for (var i = 0; i < img.length; i++) {
					        html += '<div style="max-height:500px; overflow:hidden;" class="item';
					        if (i == 0) {
					            html += ' active';
					        }
					        html += '">';
					        html += '<img style="max-height:500px; width:auto; margin:auto;" onError="this.src=\'/resources/img/icon-img.png\'" src="/resources/img/product/' + img[i] + '">';
					        html += '<div class="carousel-caption"></div></div>';
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
test: ${product.productEndDate}
<div id ="testTime"></div>
				<div class='view'></div>
				<div id="seller-div">

					<h3>
						<small>No.${product.productNumber} </small><b>
							${product.productName}</b><small> <font color="#e53a6f">경매
								마감까지 남은시간 : <b id="days-output"></b>일<b id="hours-output"></b>시간
								<b id="minutes-output"></b>분<b id="seconds-output"></b>초
						</font>

						</small>
					</h3>

					<p style="font-size: 1.3em;">
						시작가격 : ${product.productLowestPrice} 원 | 경매자ID:<b>${product.userId}</b>
						| 경매자신용도<b>LV${product.userCreditLevel}</b>/10<br>
						<b class="ing"></b>
					</p>

					<p>

						<button class="btn btn-default"
							onclick="location.href='/userinfo_my-page/${product.userNumber}'">경매자페이지로</button>

						<button style="float: right;" class="btn btn-primary"
							type="button" id="myBtn">입찰 하기</button>
					</p>


					<hr style="clear: both;">
					<h4>
						상태 : ${product.productCondition} | 등록일 : ${product.productDate} |
						제품수량 : <b>${product.productQuantity}</b> 개 | 브랜드명 :
						${product.productBrand}
					</h4>

					<p>${product.productDesc}</p>

					<c:set var="userId" value="${userlogininfo.userId}"></c:set>
					<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
					<c:choose>
						<c:when test="${userLevel>2.5||userId==product.userId}">
							<!-- 관리자나 같은 아이디일 경우 버튼이 보여서 뷰 업데이트 페이지로 갈 수 있음 -->
							<button style="float: right;" class="btn btn-primary"
								type="button" onclick="updateBtn(${product.productNumber})">수정</button>
							<hr style="visibility: hidden;">
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>


				</div>

				<div id="bidding-div">
					<div style="overflow: auto; margin-top: 10px;">
						<div style="float: left;"></div>
						<div style="margin-left: 10px; float: left;"></div>
						<div style="float: right;"></div>
					</div>


				</div>

				<div id="myModal" class="modal">

					<div class="modal-content">
						<span class="close">&times;</span>
						<p>입찰 현황</p>
						<div class="bidding">
						<p>입찰시 200원 증가</p>
							<button style="float: right;" class="btn btn-primary btn-lg"
								type="button" data-update>입찰 하기</button>
						</div>
					</div>
					<!-- Modal content -->

				</div>

			</div>
			<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
		</div>
	</div>
	
	<script>
	var modal = document.querySelector('#myModal');
	var bc;
	
	function updateBtn(productNumber) {
	    location.href = '/productupdate/' + productNumber;
	}
		
	
	$('.close').click(function() {
	    modal.style.display = "none";
	});
	
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
	
	
	$('#myBtn').click(function() {
	    modal.style.display = "block";
	});
	
	setTimeout(function() {
	    var session = "${sessionScope.userlogininfo.userLevel}"
	    if (session > 0) {
			        html = '';
			        $.ajax({
			            url: '/bidding/' + ${product.productNumber},
			            type: 'GET',
			            dataType: "json",
			            success: function(res) {
			                var bidsDate = res.bidsDate.split(",");
			                var biddingId = res.biddingId.split(",");
			                var max = biddingId.length;
			                if (max > 0) {
			                    html += '<div class="dd">';
			                    for (var i = 0; i < max; i++) {
			                        html += '<div><div style="width:100px;float:left;">' + bidsDate[i] + '</div><div style="width:100px;float:left;">' + biddingId[i] + '</div><br></div><br>';
			                    }
			                    html += '</div>';
			                }
			                html += '<p>입찰 횟수</p>' + '<div class="bidCount">' + res.bidCount + '</div>';
			                html += '가격 : ';
			                html += ${product.productLowestPrice} + (biddingId.length * 200);
			                document.querySelector('.bidding').insertAdjacentHTML('afterbegin', html);
			                var ing = '현재가격 : ';
			                ing += ${product.productLowestPrice} + (biddingId.length * 200) + '원 ';
			                ing += '마지막 입찰시간 : ';
			                if (max == 1) {
			                    ing += '입찰자 없음';
			                } else {
			                    ing += bidsDate[max - 1];
			                }
			                document.querySelector('.ing').insertAdjacentHTML('afterbegin', ing);
			                bc = $(".bidCount").text();
			            }
			        });
	    } else {
			       /*  alert("로그인을 하셔야 합니다");
			        location.href = '/url/user-info:login'; */
	    }
	}, 500);
	
	$('[data-update]').click(function() {
	    $.ajax({
	        url: '/bidding/' + ${product.productNumber} + '/' + bc + '/' + '${product.productName}' + '/' + '${product.userId}' + '/' + '${userlogininfo.userId}',
	        type: 'POST',
	        success: function(res) {
	            if (res == 0) {
	                alert("이가격에 입찰한사람이 있습니다");
	                location.reload();
	            }
	            if (res == -1) {
	                alert("판매자는 입찰하실수 없습니다");
	                location.reload();
	            }
	            if (res == -2) {
	                alert("맨 마지막 입찰자 입니다");
	                location.reload();
	            } else {
	                alert("입찰에성공하셨습니다");
	                location.reload();
	            }
	        }
	    });
	});
	</script>
</body>
</html>