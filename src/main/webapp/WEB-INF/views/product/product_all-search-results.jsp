
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<h3>검색 경매물품 목록입니다</h3>
				<%@ include file="/WEB-INF/views/common/all-search-results.jspf"%>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	
</body>
</html>
