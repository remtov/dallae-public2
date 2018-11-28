
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>본인 인증</title>
</head>
<body>
	<div class="find-container">
		<div class="container">
			<c:choose>
				<c:when test="${not empty sessionScope.userlogininfo}">
					<!-- 인증 됐을 경우로 변경 예정 -->
							<form id="certification">
						<div
							style="border: 1px solid #d6d6d6; margin: auto; margin-top: 30px; margin-bottom: 100px; max-width: 500px; padding: 20px;">

							<h2 style="text-align: center;">
								<button style="float: left;" type="button"
									class="btn btn-default" onclick="history.back()">X</button>
								<b style="float: center;">본인 인증</b>
								<button style="float: right;" type="button"
									class="btn btn-primary" onclick="summit()">제출</button>
							</h2>
							<p>
								
								<input class="btn btn-default" value="인증절차1" type="button" onclick="alert1()"/>alert-test1 test 설명 설명alert-test1 test 설명 설명alert-test1 test 설명 설명
							</p>
							<p>
								
								<input class="btn btn-default" value="인증절차2" type="button" onclick="alert2()"/>alert-test2alert-test1 test 설명 설명alert-test1 test 설명 설명
							</p>
						</div>
					</form>
				</c:when>
				<c:otherwise>
			
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




