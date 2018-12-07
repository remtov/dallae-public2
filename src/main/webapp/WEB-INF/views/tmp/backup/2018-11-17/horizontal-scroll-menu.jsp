<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#navBar {
	white-space: nowrap;
	height: 500px;
	width: 100%;
	position: relative;
}
</style>
</head>
<body>
	<div id="navBar">
		<div
			style="left: 0%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav1" /> <br /> <span
				style="font-size: 80%">Nav1</span>
		</div>
		<div
			style="left: 40%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav2" /> <br /> <span
				style="font-size: 80%">Nav2</span>
		</div>
		<div
			style="left: 80%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav3" /> <br /> <span
				style="font-size: 80%">Nav3</span>
		</div>
		<div
			style="left: 120%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav4" /> <br /> <span
				style="font-size: 80%">Nav4</span>
		</div>
		<div
			style="left: 160%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav5" /> <br /> <span
				style="font-size: 80%">Nav5</span>
		</div>
		<div
			style="left: 200%; width: 40%; float: left; display: inline-block; position: absolute; text-align: center;">
			<img src="/resources/img/favi.png" alt="Nav6" /> <br /> <span
				style="font-size: 80%">Nav6</span>
		</div>
	</div>

	<script type="text/javascript" language="javascript">
		var bMouseDown = false;
		var bMouseUp = true;
		var iStartPixelsX = 0;
		var iCurrentNavbarPixelsX = 0;
		var changePixels = 0;
		var leftMostOffsetPixels = 0;

		function funcMoveNavBar(pixels) {
			$("#navBar").attr("style", "left: " + pixels + "px;");
		}

		var onOrientationChange = function() {
			setTimeout(function() {
				funcMoveNavBar(0);
				iStartPixelsX = 0;
				iCurrentNavbarPixelsX = 0;
				changePixels = 0;
				leftMostOffsetPixels = $("#navBar div").last().offset().left
						+ $("#navBar div").last().width();
			}, 500);
		}

		$(document)
				.ready(
						function() {
							leftMostOffsetPixels = $("#navBar div").last()
									.offset().left
									+ $("#navBar div").last().width();

							if (window.addEventListener) {
								window.addEventListener("orientationchange",
										onOrientationChange, false);
							} else if (window.attachEvent) {
								window.attachEvent("onorientationchange",
										onOrientationChange);
							}

							$("#navBar").bind("vmousedown", function(e) {
								bMouseDown = true;
								bMouseUp = false;

								iStartPixelsX = e.pageX;
							});

							$("#navBar")
									.bind(
											"vmousemove",
											function(e) {
												if (bMouseDown && !bMouseUp) {
													e.preventDefault();
													changePixels = (e.pageX - iStartPixelsX)
															+ iCurrentNavbarPixelsX;

													funcMoveNavBar(changePixels);
												}
											});

							$("#navBar")
									.bind(
											"vmouseup",
											function(e) {
												bMouseUp = true;
												bMouseDown = false;

												if (changePixels > 0) {
													funcMoveNavBar(0);
													changePixels = 0;
													iCurrentNavbarPixelsX = 0;
												} else if (($("#navBar div")
														.last().offset().left + $(
														"#navBar div").last()
														.width()) < $("#navBar")
														.width()) {
													funcMoveNavBar($("#navBar")
															.width()
															- leftMostOffsetPixels);
													iCurrentNavbarPixelsX = $(
															"#navBar").width()
															- leftMostOffsetPixels;
													changePixels = $("#navBar")
															.width()
															- leftMostOffsetPixels;
												} else {
													iCurrentNavbarPixelsX = changePixels;
												}
											});
						});
	</script>
</body>
</html>