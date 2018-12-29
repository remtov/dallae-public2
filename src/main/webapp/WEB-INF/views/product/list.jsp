
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
#list-div {
	width: 100%;
}

.caption p {
	color: gray;
}
</style>
<script src="/resources/js/AjaxUtil.js"></script>

</head>
<body>
	
	<div class="view-container">
		<div class="container">
			<div class="inner-box">
				<ol class="breadcrumb2">
					<li><button onclick="location.href='/'"
							class="btn btn-default">홈으로</button></li>
					<li class="active"><button class="btn btn-default active">경매보기</button></li>
					<li><select id="category-select-id" name="categorySelect"
							style="width: 200px; display: inline !important"
							class="form-control" onchange="selectCategoryAction()">
							<option selected disabled>선택</option>
							<option value="digital">디지털</option>
							<option value="fashion">패션</option>
							<option value="healthBeauty">건강&#38;뷰티</option>
							<option value="life">생활</option>
							<option value="motorPartz">모터파츠</option>
							<option value="rareCollection">희귀품</option>
							<option value="sports">스포츠</option>
							<option value="toyHobby">장난감&#38;취미</option>
						</select> <script type="text/javascript">
							function selectCategoryAction() {
								var categorySelectId = document
										.getElementById("category-select-id");
								var categorySelectValue = categorySelectId.options[categorySelectId.selectedIndex].value;
								var categorySelectText = categorySelectId.options[categorySelectId.selectedIndex].text;
								if (categorySelectValue == '선택'
										|| categorySelectValue == '') {

								} else {

									location.href = '/url/product:category:'
											+ categorySelectValue;
								}
							}
						</script></li>
				</ol>

				<%@ include file="/WEB-INF/views/common/content-final.jspf"%>



			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	
</body>
</html>
