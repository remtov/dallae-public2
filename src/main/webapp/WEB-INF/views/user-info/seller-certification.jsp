<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>본인 인증</title>
<!-- 제이쿼리 -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
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
<script type="text/javascript">
var newWindow;

function openNewWindow() {
   newWindow = window.open("https://www.skbroadband.com/popup/Identify_Popup.do", "newWindow", "height=200, width=400, resizable=yes");
}

function recieve() {
   var txt = "<font color='red'>인증창에서 받아온 값</font>";
   document.getElementById("process").innerHTML = txt;
   document.myform.receiver.value = $("#certificationYN", opener.document).val('Y');
   document.myform.receiver2.value = opener.$("#name").val($("#name").val());
   document.myform.receiver3.value = opener.$("#name").html($("#name").val());
   document.myform.receiver4.value = opener.$("#cell_phone1").val($("#cell_phone1").val());
   document.myform.receiver5.value = opener.$("#cell_phone2").val($("#cell_phone2").val());
   document.myform.receiver6.value = opener.$("#cell_phone3").val($("#cell_phone3").val());
   document.myform.receiver7.value = opener.nameCheck($("#name").val());
}
</script>

</head>
<body>
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
										<input class="btn btn-default" value="휴대폰 본인인증" type="button"
											onclick="openNewWindow()" />
									</p>
									<p>
										인증 후 받아온 값 :<br> <input type="text" name="receiver"
											size="10"><input type="text"
											name="receiver2" size="10"> <input
											type="text" name="receiver3" size="10"> <input
											type="text" name="receiver4" size="10"> <input
											type="text" name="receiver5" size="10"> <input
											type="text" name="receiver6" size="10"> <input
											type="text" name="receiver7" size="10"> <span
											id="process"></span> <input class="btn btn-default"
											type="button" value="인증창의 완료후 값 받아오기 테스트" onclick="recieve()">

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
</body>
</html>




