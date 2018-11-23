<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
#insert_myform-btn {
	margin-bottom: 50px;
}

h4 {
	margin-bottom: 20px;
}

#myform .row {
	margin-top: 20px;
	width: 100%;
	padding: 5px;
}

/* 파일버튼> */
.fileBox {
	padding: 5px;
	width: 100%;
}

.fileBox>label {
	margin-bottom: 10px;
}

.fileBox>label>span {
	color: red;
}

.fileBox input[type="file"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: re
}

.row>.col-md-3>span {
	color: red;
}

small>a {
	color: gray;
}

file-box-container {
	overflow: auto;
}

#file-box-container>div {
	width: 33%;
	float: left;
}

.fileBox label {
	width: 100%;
}

.fileBox img {
	width: 100%;
}
</style>
<script>
	/* 항목클릭팝업 */
	$(function() {
		$('[data-toggle="popover"]').popover()
	})
	$('#example').popover(options)
</script>
</head>
<body>
	<div class="view-container">
		<div class="container">
			<c:set var="userLevel" value="${userlogininfo}"></c:set>
			<c:choose>
				<c:when test="${userlogininfo.userLevel>1.5}">
					<form id="myform" enctype="multipart/form-data" method="POST">
						<div class="container">
							<div class="inner-box">
								<div class="common_title-line">
									<h3>
										나의 달래 : 경매 등록 <small><a href="#"><b>${sessionScope.userlogininfo.userName}</b>(${sessionScope.userlogininfo.userId})
												<span class="badge">No.${sessionScope.userlogininfo.userNumber}</span>
										</a></small>
									</h3>
								</div>
								<h4>경매 물품정보 작성</h4>
								<div class="row">
									<div class="col-md-3">
										<span>*</span> <a tabindex="0" role="button" type="button"
											data-container="body" data-toggle="popover"
											data-placement="right" data-trigger="focus"
											data-content="제목은 구매자가 귀하의 상품을 찾는 데 도움이 됩니다. 정확히 진술하십시오. 검색하는 데 사용될 단어를 포함 하십시오.">제품
											명</a>
									</div>
									<div class="col-md-9">
										<input required type="text" class="form-control"
											id="productName" name="productName"
											placeholder="제품명을 입력해 주세요" data-vc="2,50">
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span>제품 분류
									</div>
									<div class="col-md-3">
										<select id="productCategory" class="form-control"
											name="productCategory">
											<option value="none">대분류</option>
											<option value="fashion">패션</option>
											<option value="digital">디지털</option>
											<option value="rareCollection">희귀수집품</option>
											<option value="healthBeauty">건강 및 미용</option>
											<option value="motorPartz">모터츠파츠</option>
											<option value="toyHobby">완구,취미</option>
											<option value="sports">스포츠</option>
											<option value="homeGarden">홈,가든</option>
											<option value="life">생활</option>
										</select>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span> <a tabindex="0" role="button" type="button"
											data-container="body" data-toggle="popover"
											data-placement="right" data-trigger="focus"
											data-content="새 것 인지 패키지 포장도 포함 되는지, 생활 기스가 존재 하는지, 누락 되거나 손상된 부분, 주름이나 찢김, 마모, 불완전성에 대한 내용을 한글 50글자내로 작성하여 주십시오.">제품
											상태</a>
									</div>
									<div class="col-md-9">
										<textarea class="form-control" rows="2" id="productCondition"
											name="productCondition" placeholder="제품의 상태(자세히)"
											data-vc="1,50"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span>사진
									</div>
									<div class="col-md-9" id="file-box-container" data-img>
										<div>
											<div class="fileBox">
												<label for="productImage" class="btn btn-default"><span>+</span>1번
													사진</label> <input name="productImage" required type="file"
													id="productImage" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage2" class="btn btn-default"><span>+</span>2번
													사진</label> <input name="productImage2" required type="file"
													id="productImage2" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview2" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage3" class="btn btn-default"><span>+</span>3번
													사진</label> <input name="productImage3" required type="file"
													id="productImage3" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview3" name="preview">
											</div>
										</div>
										<div>
											<div class="fileBox">
												<label for="productImage4" class="btn btn-default"><span>+</span>4번
													사진</label> <input name="productImage4" required type="file"
													id="productImage4" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview4" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage5" class="btn btn-default">+
													5번 사진</label> <input name="productImage5" required type="file"
													id="productImage5" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview5" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage6" class="btn btn-default">+
													6번 사진</label> <input name="productImage6" required type="file"
													id="productImage6" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview6" name="preview">
											</div>
										</div>
										<div>
											<div class="fileBox">
												<label for="productImage7" class="btn btn-default">+
													7번 사진</label> <input name="productImage7" required type="file"
													id="productImage7" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview7" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage8" class="btn btn-default">+
													8번 사진</label> <input name="productImage8" required type="file"
													id="productImage8" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview8" name="preview">
											</div>
											<div class="fileBox">
												<label for="productImage9" class="btn btn-default">+
													9번 사진</label> <input name="productImage9" required type="file"
													id="productImage9" class="uploadBtn"> <img
													src="/img/icon-img.png" id="preview9" name="preview">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span> <a tabindex="0" role="button" type="button"
											data-container="body" data-toggle="popover"
											data-placement="right" data-trigger="focus"
											data-content="판매하는 물건에 대한 설명을 완전하게 기재 하십시오. 
											모바일 환경에서 잘 보이도록 간결한 형식을 유지 부탁 드립니다. (300글자 이내)">제품
											설명</a>
									</div>
									<div class="col-md-9">
										<textarea class="form-control" rows="10" id="productDesc"
											name="productDesc" placeholder="제품의 설명" data-vc="1,2000"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span>제품 수량
									</div>
									<div class="col-md-3">
										<input required type="number" class="form-control"
											id="productQuantity" name="productQuantity"
											placeholder="판매 수량 (숫자)" data-vc="1,3" required>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span>시작가격설정
									</div>
									<div class="col-md-4">
										<input required type="number" class="form-control"
											id="productLowestPrice" name="productLowestPrice"
											placeholder="제품의 최저가" data-vc="1,10">
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<span>*</span>제품 브랜드
									</div>
									<div class="col-md-6">
										<input required class="form-control" type="text"
											id="productBrand" name="productBrand" placeholder="제품명의 브랜드"
											data-vc="1,20">
									</div>
								</div>
								<div style="display: none">
									<input class="form-control" type="text" id="userId"
										name="userId" value="${userlogininfo.userId}"> <input
										class="form-control" type="text" id="userCreditLevel"
										name="userCreditLevel"
										value="${userlogininfo.userCreditLevel}"> <input
										class="form-control" type="text" id="userNumber"
										name="userNumber" value="${userlogininfo.userNumber}">
								</div>
								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-9">
										<button class="btn btn-info btn-lg btn-block" type="button"
											id="insert_myform-btn" name="Product" onclick="insert()">업로드하기</button>
									</div>
								</div>
							</div>
						</div>
					</form>
					<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>
				</c:when>
				<c:otherwise>
					<!-- 세션없는 사람-->
					<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	<script>
	window.addEventListener('load', function() {
		var fileInputs = document.querySelectorAll('.uploadBtn');
		var previews = document.querySelectorAll('*[name=preview]');
		
		fileInputs.forEach((e, i) => {
			e.onchange = function(event) {
				let url = URL.createObjectURL(event.target.files[0]);   
				console.log(url);
				previews[i].src = url;
			};
		});
	});

	function imgsVali() {
		var imgs = document.querySelectorAll('input[type="file"]');
		for(img of imgs){
			img = img.value.substring(img.value.lastIndexOf('.') + 1);
			if (img.toUpperCase() != 'JPG'
					&& img.toUpperCase() != 'PNG') {
				alert("jpg 나 png파일을 넣어주세요");
				return false;
			}
		}
		return true;
	}

	function insert() {
			var form = document.querySelector('#myform');
			var formData = new FormData(form);

			if (valiCheck()) {
				//if (imgVali()) {
					$.ajax({
						url : '/product',
						contentType : false,//헤더 지우기
						processData : false,//쿼리스트링 형식으로 바꾸지 않기
						data : formData,
						type : 'POST',
						success : function() {
							location.href = '/url/product:list';
							alert('성공');
						}
					});
				//}
			}
		}
	</script>
</body>
</html>