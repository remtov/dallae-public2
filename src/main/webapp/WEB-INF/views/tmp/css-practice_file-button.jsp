<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>HTML5AROUND.COM</title>





<style>
#orgFile {
	display: none;
}

#newFile {
	background-color: black;
	color: white;
	cursor: pointer;
}
</style>
<script>
	/**이벤트 발생 (크롬,파이어폭스,사파이어 OK!) **/
	function eventOccur(evEle, evType) {
		if (evEle.fireEvent) {
			evEle.fireEvent('on' + evType);
		} else {
			//MouseEvents가 포인트 그냥 Events는 안됨~ ??
			var mouseEvent = document.createEvent('MouseEvents');
			/* API문서 initEvent(type,bubbles,cancelable) */
			mouseEvent.initEvent(evType, true, false);
			var transCheck = evEle.dispatchEvent(mouseEvent);
			if (!transCheck) {
				//만약 이벤트에 실패했다면
				console.log("클릭 이벤트 발생 실패!");
			}
		}
	}
	/** 대체버튼 클릭시 강제 이벤트 발생**/
	function check() {
		eventOccur(document.getElementById('orgFile'), 'click');
		/* alert(orgFile.value); 이벤트 처리가 끝나지 않은 타이밍이라 값 확인 안됨! 시간차 문제 */
	}
</script>
</head>
<body>
	
	
	<form action="" method="post" enctype="multipart/form-data">
		<input type="file" multiple id="orgFile" name="userfile">
	
		<button id="newFile" onclick="check()">
			마음대로 스타일링 할수 있는 나만의 <br>input type file 대체버튼
		</button>
	
		<br> <br> <input type="submit" value="summit버튼">
	</form>
</body>
</html>
