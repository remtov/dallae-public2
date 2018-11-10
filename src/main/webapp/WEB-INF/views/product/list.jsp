<!-- 아직 현재가격이 구현되지않아 
시작가격의 3배에서 나누기 2해서 현재가격으로 띄우고있다. -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
div { /* border: 3px solid red; */
	
}

.caption p {
	color: gray;
}
</style>

<script src="/resources/js/AjaxUtil.js"></script>

<script>
	window
			.addEventListener(
					'load',
					function() {
						var au = new AjaxUtil(
								{

									url : '/productlist',
									success : function(res) {
										res = JSON.parse(res);
										var plus = 0;
										var html = '';

										if (res.length % 4 != 0) {
											plus = 1;
										}

										for (var i = 0; i < (res.length / 4)
												+ plus;

										i++) {
											html = '<div class="row">';
											for (var j = 0; j < 4;

											j++) {
												if (j + (i * 4) == res.length) {
													break;
												}

												html += '<div class="col-sm-6 col-md-3">';
												html += '<div class="thumbnail">';
												html += '<img style="width:100%;" alt="sell-img" src="/resources/img/product/'
														+ res[j + (i * 4)].productImage
														+ '" onclick="goPage('
														+ res[j + (i * 4)].productNumber
														+ ')">';
												html += '<div class="caption">';
												html += '<h3>'
														+ res[j + (i * 4)].productName
														+ '</h3>';
												html += '<h4>시작가격 : '
														+ res[j + (i * 4)].productLowestPrice
														+ ' 원</h4>';
												html += '<h4>현재가격 : '
														+ res[j + (i * 4)].productLowestPrice
														* 3 / 2 + ' 원</h4>';
												html += '<p>제품브랜드 : '
														+ res[j + (i * 4)].productBrand
														+ ' | 판매자 : '
														+ res[j + (i * 4)].userId
														+

														' | 제품수량 : '
														+ res[j + (i * 4)].productQuantity
														+ ' | 분류 : '
														+ res[j + (i * 4)].productCategory
														+ ' | 신용등급 : '
														+ res[j + (i * 4)].userCreditLevel
														+ ' | 등록일 : '
														+ res[j + (i * 4)].productDate
														+ ' | 마감일 : '
														+ res[j + (i * 4)].productEndDate
														+

														'</p>';
												html += '<div style="height:50px;overflow:hidden;">'
												html += '<p>'
														+ res[j + (i * 4)].productCondition
														+ '</p>';
												html += '</div>'
												html += '<div style="height:50px;overflow:hidden;">'
												html += '<p>'
														+ res[j + (i * 4)].productDesc
														+ '</p>';
												html += '</div>'
												html += '<p style="margin-top:10px;"><a href="#" class="btn btn-primary" role="button">입찰하기</a>';
												html += '<a style="margin-left:10px;" href="#" class="btn btn-default" role="button" onclick="goPage('
														+ res[j + (i * 4)].productNumber
														+ ')">더보기</a></p>';
												html += '</div></div></div>';
											}

											html += '</div>';
											document.querySelector(
													'#product-div')
													.insertAdjacentHTML(
															'beforeend', html);
										}
									}
								}

						);
						au.send();
					}

			);
	/* 테이블바디형 로직 
	 html += '<td>'+ product.productNumber+'</td>';
	 html += '<td>'+ product.productName + '</td>';
	 html += '<td>'+ product.productCategory + '</td>';
	 html += '<td>'+ product.productLowestPrice + '</td>';
	 html += '<td>'+ product.productHopefulPrice + '</td>';
	 html += '<td>'+ product.productBrand + '</td>';
	 html += '<td>'+ product.productCondition + '</td>';
	 html += '</tr>'; */
</script>
</head>


<body>






	
			<div class="view-container">

				<div class="container">



					<h3>
						나의 달래 : 경매 보기 <small><a href="/url/user-info:my-page"
							style="color: gray;"><b>${sessionScope.userlogininfo.userName}</b>(${sessionScope.userlogininfo.userId})
								<span class="badge">${sessionScope.userlogininfo.userNumber}</span>
						</a></small>
					</h3>




					<div style="width: 100%;">
						<hr>
						<h4>경매 물품정보 보기</h4>

						<div id="product-div"></div>
					</div>
				</div>


			</div>

			<%@ include file="/WEB-INF/views/common/footer.jspf"%>
			<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>






	


	<script>
		function goPage(productNumber) {
			location.href = '/product/' + productNumber;
		}
	</script>
</body>
</html>

















