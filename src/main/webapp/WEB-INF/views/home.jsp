<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style>
#home_container {
	width: 100%;
	background-color: #f6f6f6;
}

.home-content_img-big {
	width: 75%;
	float: left;
	height: auto;
}

.home-content_img-big>a>img {
	width: 100%;
}

.home-content_img-small {
	width: 23%;
	float: right;
	display: block;
}

.home-content_img-small>div {
	overflow: hidden;
	margin-bottom: 5px;
}

.home-content_img-small>div>a>img {
	width: 100%;
}

div {
	/* border: 1px solid red; */
	
}
</style>
<script src="//code.jquery.com/jquery.min.js"></script>
</head>
<body>
	<div id="home_container">
		<%@ include file="/WEB-INF/views/common/home_img-slide.jspf"%>
		<div class="container">
			<c:set value="${getProductCategoryFashion}" var="fashion" />
			<c:set value="${getProductCategoryDigital}" var="digital" />
			<c:set value="${getProductCategoryRareCollection}"
				var="rareCollection" />
			<c:set value="${getProductCategoryHealthBeauty}" var="healthBeauty" />
			<c:set value="${getProductCategoryMotorPartz}" var="motorPartz" />
			<c:set value="${getProductCategoryToyHobby}" var="toyHobby" />
			<c:set value="${getProductCategorySports}" var="sports" />
			<c:set value="${getProductCategoryLife}" var="life" />
			<c:set var="fashionSplitedImg"
				value="${fn:split(fashion.productImage,'|')}" />
			<c:set var="digitalSplitedImg"
				value="${fn:split(digital.productImage,'|')}" />
			<c:set var="rareCollectionSplitedImg"
				value="${fn:split(rareCollection.productImage,'|')}" />
			<c:set var="healthBeautySplitedImg"
				value="${fn:split(healthBeauty.productImage,'|')}" />
			<c:set var="motorPartzSplitedImg"
				value="${fn:split(motorPartz.productImage,'|')}" />
			<c:set var="toyHobbySplitedImg"
				value="${fn:split(toyHobby.productImage,'|')}" />
			<c:set var="sportsSplitedImg"
				value="${fn:split(sports.productImage,'|')}" />
			<c:set var="lifeSplitedImg"
				value="${fn:split(life.productImage,'|')}" />

			<h2 style="margin-left: 20px;">
				카테고리별 최고가격 매물<small>카테고리별 인기 매물로 바꿀 예정 (비딩 카운터나 조회수로 하면 될 듯)</small>
			</h2>
			<div class="row">
				<!-- 카테고리 1열 -->
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:fashion">${fashion.productCategory}</a></b></li>
						<li class="active">${fashion.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${fashion.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${fashionSplitedImg[0]}"></a>
							</div>

							<div class="home-content_img-small">
								<div>
									<a href="/product/${fashion.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${fashionSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${fashion.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${fashionSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${fashion.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${fashionSplitedImg[3]}"></a>
								</div>
							</div>
						</div>

						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${fashion.productName}</h3>
							<h5>
								현재가격 : ${fashion.productLowestPrice}원 | <a
									href="/userinfo/${fashion.userNumber}">판매자 : <b>${fashion.userId}</b></a>
								<span class="badge">신용<b>Lv${fashion.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${fashion.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;"
									href="/product/${fashion.productNumber}"
									class="btn btn-default" role="button"> 더보기 </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${digital.productCategory}">${digital.productCategory}</a></b></li>
						<li class="active">${digital.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">

							<div class="home-content_img-big">
								<a href="/product/${digital.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${digitalSplitedImg[0]}"></a>
							</div>

							<div class="home-content_img-small">
								<div>
									<a href="/product/${digital.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${digitalSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${digital.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${digitalSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${digital.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${digitalSplitedImg[3]}"></a>
								</div>
							</div>
						</div>

						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${digital.productName}</h3>
							<h5>
								현재가격 : ${digital.productLowestPrice}원 | <a
									href="/userinfo/${digital.userNumber}">판매자 : <b>${digital.userId}</b></a>
								<span class="badge">신용<b>Lv${digital.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${digital.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;" href="#" class="btn btn-default"
									role="button"
									onclick="location.href='/product/${digital.productNumber}'">
									더보기 </a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리2열 -->
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${rareCollection.productCategory}">${rareCollection.productCategory}</a></b></li>
						<li class="active">${rareCollection.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${rareCollection.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${rareCollectionSplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${rareCollection.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${rareCollectionSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${rareCollection.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${rareCollectionSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${rareCollection.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${rareCollectionSplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${rareCollection.productName}</h3>
							<h5>
								현재가격 : ${rareCollection.productLowestPrice}원 | <a
									href="/userinfo/${rareCollection.userNumber}">판매자 : <b>${rareCollection.userId}</b></a>
								<span class="badge">신용<b>Lv${rareCollection.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${rareCollection.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;"
									href="/product/${rareCollection.productNumber}"
									class="btn btn-default" role="button"> 더보기 </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${healthBeauty.productCategory}">${healthBeauty.productCategory}</a></b></li>
						<li class="active">${healthBeauty.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${healthBeauty.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${healthBeautySplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${healthBeauty.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${healthBeautySplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${healthBeauty.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${healthBeautySplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${healthBeauty.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${healthBeautySplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${healthBeauty.productName}</h3>
							<h5>
								현재가격 : ${healthBeauty.productLowestPrice}원 | <a
									href="/userinfo/${healthBeauty.userNumber}">판매자 : <b>${healthBeauty.userId}</b></a>
								<span class="badge">신용<b>Lv${healthBeauty.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${healthBeauty.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;" href="#" class="btn btn-default"
									role="button"
									onclick="location.href='/product/${healthBeauty.productNumber}'">
									더보기 </a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리3열 -->
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${motorPartz.productCategory}">${motorPartz.productCategory}</a></b></li>
						<li class="active">${motorPartz.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${motorPartz.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${motorPartzSplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${motorPartz.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${motorPartzSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${motorPartz.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${motorPartzSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${motorPartz.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${motorPartzSplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${motorPartz.productName}</h3>
							<h5>
								현재가격 : ${motorPartz.productLowestPrice}원 | <a
									href="/userinfo/${motorPartz.userNumber}">판매자 : <b>${motorPartz.userId}</b></a>
								<span class="badge">신용<b>Lv${motorPartz.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${motorPartz.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;"
									href="/product/${motorPartz.productNumber}"
									class="btn btn-default" role="button"> 더보기 </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${toyHobby.productCategory}">${toyHobby.productCategory}</a></b></li>
						<li class="active">${toyHobby.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${toyHobby.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${toyHobbySplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${toyHobby.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${toyHobbySplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${toyHobby.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${toyHobbySplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${toyHobby.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${toyHobbySplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${toyHobby.productName}</h3>
							<h5>
								현재가격 : ${toyHobby.productLowestPrice}원 | <a
									href="/userinfo/${toyHobby.userNumber}">판매자 : <b>${toyHobby.userId}</b></a>
								<span class="badge">신용<b>Lv${toyHobby.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${toyHobby.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;" href="#" class="btn btn-default"
									role="button"
									onclick="location.href='/product/${toyHobby.productNumber}'">
									더보기 </a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- 카테고리4열 -->
			<div class="row">
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${sports.productCategory}">${sports.productCategory}</a></b></li>
						<li class="active">${sports.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${sports.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${sportsSplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${sports.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${sportsSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${sports.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${sportsSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${sports.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${sportsSplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${sports.productName}</h3>
							<h5>
								현재가격 : ${sports.productLowestPrice}원 | <a
									href="/userinfo/${sports.userNumber}">판매자 : <b>${sports.userId}</b></a>
								<span class="badge">신용<b>Lv${sports.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${sports.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;"
									href="/product/${sports.productNumber}" class="btn btn-default"
									role="button"> 더보기 </a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<ol class="breadcrumb2">
						<li><b><a href="/url/product:category:${life.productCategory}">${life.productCategory}</a></b></li>
						<li class="active">${life.productName}</li>
					</ol>
					<div style="background-color: white;">
						<div style="padding: 20px; height: 100%; overflow: hidden;">
							<div class="home-content_img-big">
								<a href="/product/${life.productNumber}"><img
									onError="this.src='/img/icon-img.png'"
									src="/img/product/${lifeSplitedImg[0]}"></a>
							</div>
							<div class="home-content_img-small">
								<div>
									<a href="/product/${life.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${lifeSplitedImg[1]}"></a>
								</div>
								<div>
									<a href="/product/${life.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${lifeSplitedImg[2]}"></a>
								</div>
								<div>
									<a href="/product/${life.productNumber}"><img
										onError="this.src='/img/icon-img.png'"
										src="/img/product/${lifeSplitedImg[3]}"></a>
								</div>
							</div>
						</div>
						<div
							style="height: 130px; overflow: hidden; padding: 0px 20px 20px 20px">
							<h3 class="sentence-cut">${life.productName}</h3>
							<h5>
								현재가격 : ${life.productLowestPrice}원 | <a
									href="/userinfo/${life.userNumber}">판매자 : <b>${life.userId}</b></a>
								<span class="badge">신용<b>Lv${life.userCreditLevel}</b></span>
							</h5>
							<p class="sentence-cut">${life.productDesc}</p>
						</div>
						<div class="home-content_more-button">
							<p style="padding: 20px 0px 20px 20px;">
								<a href="#" class="btn btn-primary" role="button"> 입찰하기</a> <a
									style="margin-left: 10px;" href="#" class="btn btn-default"
									role="button"
									onclick="location.href='/product/${life.productNumber}'">
									더보기 </a>
							</p>
						</div>
					</div>
				</div>
			</div>

			<hr>
			<h2>
				전체 매물들<small>최신 매물 순</small>
			</h2>
			<%@ include file="/WEB-INF/views/common/content-final.jspf"%>
		</div>
		<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	</div>
</body>
</html>