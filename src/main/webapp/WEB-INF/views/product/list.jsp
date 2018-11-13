
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

			<h3>
				나의 달래 : 경매 보기 <small><a href="/url/user-info:my-page"><b>${sessionScope.userlogininfo.userName}</b>(${sessionScope.userlogininfo.userId})
						<span class="badge">No.${sessionScope.userlogininfo.userNumber}</span>
				</a></small>
			</h3>
			<div id="list-div">
				<hr>
				<h4>경매 물품정보 보기</h4>

				<%@ include file="/WEB-INF/views/common/content-final.jspf"%>

			</div>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	<%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>

</body>
</html>

















