
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>본인 인증</title>
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
		newWindow = window.open("/url/tmp:popup:child-window_opener",
				"newWindow", "height=200, width=400, resizable=yes");
	}

	function recieve() {
		var txt = "<font color='red'>자식창에서 받아온 값</font>";
		document.getElementById("process").innerHTML = txt;
		document.myform.receiver.value = newWindow.document.myform.sender.value;
	}
</script>

</head>
<body>
	<div class="find-container">
		<div class="container">
			<c:set var="userLevel" value="${userlogininfo}"></c:set>
			<c:choose>
				<c:when test="${userlogininfo.userLevel>1.5}">
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
					<form name="myform">
						<input type="button" value="자식창 열기" onclick="openNewWindow()"><br>
						부모창 Sender : <input type="text" name="sender" size="10"><br>
						부모창 Receiver : <input type="text" name="receiver" size="10"><span
							id="process"></span><br /> <input type="button" value="받아오기"
							onclick="recieve()">
					</form>
					
					<form id="certification">
						<div class="inner-box3">

							<h2>
								<button style="float: left;" type="button"
									class="btn btn-default" onclick="history.back()">X</button>
								<b style="float: center;">본인 인증</b>
								<button style="float: right;" type="button"
									class="btn btn-primary" onclick="summit()">제출</button>
							</h2>
							<p>

								<input class="btn btn-default" value="휴대본 본인인증" type="button"
									onclick="window.open('https://www.skbroadband.com/popup/Identify_Popup.do','seller-certification','width=430,height=500,location=no,status=no,scrollbars=yes');" />
								본인인증을 위한 절차 1번
							</p>
							<p>


								<input class="btn btn-default" value="인증2" type="button"
									onclick="window.open('https://www.skbroadband.com/popup/Identify_Popup.do','seller-certification','width=430,height=500,location=no,status=no,scrollbars=yes');" />
								본인인증을 위한 절차 2번
							</p>
						</div>
					</form>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
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




