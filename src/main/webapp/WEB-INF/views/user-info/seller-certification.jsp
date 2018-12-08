<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>본인 인증</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://www.google.com/recaptcha/api.js?render=6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m" async defer></script>
<script type="text/javascript">
var onloadCallback=function(){
	greCAPTCHA.render('html_element',{
		'sitekey':'6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
		'theme':'light'
	});
};
</script>
<style>
.inner-box3 {
	border: 1px solid #d6d6d6;
	margin: auto;
	margin-top: 30px;
	margin-bottom: 100px;
	max-width: 500px;
	padding: 20px;
}

.inner-box3>h2 {
	text-align: center;
}
</style>
<script
	src="https://www.google.com/recaptcha/api.js?render=6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m"
	async defer></script>
<script type="text/javascript">
	var onloadCallback = function() {
		greCAPTCHA.render('html_element', {
			'sitekey' : '6LcP_H0UAAAAADv-pGEDjJQdbkF80KgS8xSXiQ0m',
			'theme' : 'light'
		});
	};
</script>
<script type="text/javascript">
	var newWindow;
	var newWindow2;

	function openNewWindow() {
		newWindow = window.open(
				"/url/user-info:seller-certification_popup",
				"popup1", "width=360, height=640, resizable=yes");
	}
	function openNewWindow2() {
		newWindow2 = window.open(
				"/url/user-info:seller-certification_popup2",
				"popup2", "width=360, height=640, resizable=yes");
	}
</script>

</head>
<body>
<%@ include file="/WEB-INF/views/common/head.jspf"%>
	<c:set var="userid" value="${userlogininfo.userId}"></c:set>
	<c:choose>
		<c:when test="${not empty sessionScope.userlogininfo}">
			<!-- 로그인 된사람 -->
			<div class="find-container">
				<div class="container">
					<c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
					<c:choose>
						<c:when test="${userLevel>1.5}">
							<!-- 인증받은사람 -->
							<div class="no-session_container">
								<h2>
									<button type="button" class="btn btn-default"
										onclick="history.back()">X</button>
									이미<b>인증</b>하셨습니다.
									<button type="button" class="btn btn-primary"
										onclick="location.href='/url/product:insert'">경매 등록으로</button>
								</h2>
								<p>
									<b>잘못 된 방법</b>으로 접근 하셨습니다.<br> <b>경매 등록페이지로 가시면</b> 등록이 가능
									하십니다.<br>
									<button class="btn btn-default btn-xs" type="button"
										onclick="location.href='/url/user-info:my-page'">마이페이지로
										가기</button>
								</p>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 인증못받은사람 -->
							<form id="certification" name="myform">
								<div class="inner-box3">

									<h2>
										<button style="float: left;" type="button"
											class="btn btn-default" onclick="history.back()">X</button>
										<b style="float: center;">본인 인증</b>
										<button style="float: right;" type="button"
											class="btn btn-primary" onclick="summit()">제출</button>
									</h2>
									<p>
										<input class="btn btn-default" value="휴대폰 인증" type="button"
											onclick="openNewWindow()" />
									</p>
									<p>
										<input class="btn btn-default" value="계좌 인증" type="button"
											onclick="openNewWindow2()" />
									</p>
									<p>
										<input class="form-control" type="text" disabled id="name" />
									</p>
									<p>
										<input id="name" class="form-control" type="text" disabled
											id="cell_phone1" />
									</p>
									<p>
										<input class="form-control" type="text" disabled
											id="cell_phone2" />
									</p>
									<p>
										<input class="form-control" type="text" disabled
											id="cell_phone3" />
									</p>
									<p>
										<input class="form-control" type="text" disabled
											id="certificationYN" />
									</p>

								</div>
							</form>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<!-- 세션 없는 사람-->
			<%@ include file="/WEB-INF/views/common/no-session.jspf"%>
		</c:otherwise>
	</c:choose>


	<script>
		function enter(ent) {
			var code = ent.which ? ent.which : event.keyCode;
			if (code == 13) {
				findId()
			}
		}

		function summit() {
			var test1 = document.querySelector('#test2').value
			var test2 = document.querySelector('#test2').value
			var params = '';
			params = 'test1=' + test1 + '&test2=' + test2;
			var conf = {
				url : '/test',
				param : params,
				success : function(res) {

					if (res != '') {
						res = JSON.parse(res);
						alert('본인 인증 테스트에 성공 하셨습니다.');
						location.href = "/url/user-info:login";
					} else {
						alert('본인 인증에 실패 하셨습니다.');
					}
				}
			}
			var ajaxUtil = new AjaxUtil(conf);
			ajaxUtil.send();
		}
		function alert1() {
			alert('인증1 테스트');
		}

		function alert2() {
			alert('인증2 테스트');
		}
	</script>
	<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
</body>
</html>




