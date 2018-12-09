<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>휴대폰 SMS 본인 인증 | Dallae옥션</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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
	$(document).ready(function() {
		window.resizeTo(600, 930);
		$('#terms5').change(function() {
			var chk = $(this).is(':checked');
			if (chk) {
				$(':input:radio[name=chk]').each(function() {
					$(this).attr('checked', true);
				});
			} else {
				$(':input:radio[name=chk]').each(function() {
					$(this).attr('checked', false);
				});
			}
		});
	});

	function fn_valid() {
		// 특수문자 입력불가
		var chk_etc = (/[_\`\~\!\@#$\%\^\&\*\-\=\+\\\{\}\[\]\;\:\,\>\.\?\/\<\"\']/ig);

		if (!isNullAndTrim($("#name"), "고객명을 입력해주세요.")) {
			return false;
		}
		if (chk_etc.test($('#name').val())) {
			alert('특수문자는 사용할 수 없습니다.');
			$('#name').focus();
			return false;
		}
		if ($(":input:radio[name=gender]:checked").val() == undefined) {
			alert("성별을 선택해주세요.");
			$(":input:radio[name=gender]").eq(0).focus();
			return false;
		}

		if (!isNullAndTrim($("#birthDay"), "생년월일을 입력해주세요.")) {
			return false;
		}
		if (!fn_length_chk($("#birthDay"), 6, "생년월일")) {
			return false;
		}
		if (!validationDate($("#birthDay"), "생년월일")) {
			return false;
		}
		if (!isNullAndTrim($("#phoneCorp"), "이동통신사를 입력해주세요.")) {
			return false;
		}
		var PhoneNum = $("#tel2").val();
		var hpLen = PhoneNum.length;
		$("#cell_phone2").val(PhoneNum.substring(0, hpLen - 4));
		$("#cell_phone3").val(PhoneNum.substring(hpLen - 4, hpLen));

		if (!isNullAndTrim($("#cell_phone1"), "휴대폰번호를 입력해주세요.")) {
			return false;
		}

		if (!isNullAndTrim($("#cell_phone2"), "휴대폰번호를 입력해주세요.")) {
			return false;
		}
		if (!fn_length_chk($("#cell_phone2"), 3, "휴대폰번호")) {
			return false;
		}
		if (!isNullAndTrim($("#cell_phone3"), "휴대폰번호를 입력해주세요.")) {
			return false;
		}
		if (!fn_length_chk($("#cell_phone3"), 4, "휴대폰번호")) {
			return false;
		}
		$('#phoneNo').val(
				$('#cell_phone1').val() + $('#cell_phone2').val()
						+ $('#cell_phone3').val());
		// 휴대폰 번호 유효성검사
		var reg_mobile = /(010|011|016|017|018|019)-(\d{3,4})-(\d{4})/gi;
		if (!reg_mobile.test($('#cell_phone1').val() + "-"
				+ $('#cell_phone2').val() + "-" + $('#cell_phone3').val())) {
			alert("잘못 입력된 형식입니다.\n정확한 휴대폰번호를 입력해 주세요.");
			document.reqForm.phoneNo1.focus();
			return false;
		}
		var captchaText = $("#captcha-text");
		if (!isNullAndTrim(captchaText, "보안문자를 입력해주세요.")) {
			return false;
		}
		return true;
	}

	function fn_cert_popup(retUrl, popName) {
		fn_popup('/popup/BusiessPage_Popup.do?retUrl=' + retUrl, popName,
				'550', '650', 'no', 'no');
	}

	/* submit */
	function fn_login_captcha_callback(data) {
		if (data) {
			doSubmit("BusinessModel", "/popup/IdentifyCertNum_Ajax.do",
					"fn_login_captcha_callback2");
		} else {
			alert("보안문자를 정확하게 입력하세요.");
			fn_captcha();

			$("#captcha-text").val('').focus();
		}
	}
	function fn_login_captcha_callback2(data) {
		$("input[id=certNum]").val(data.certNum);
		$("#cell_phone1").val(data.cell_phone1);
		$("#cell_phone2").val(data.cell_phone2);
		$("#cell_phone3").val(data.cell_phone3);
		$("#check_1").val(data.check_1);
		$("#check_2").val(data.check_2);
		$("#check_3").val(data.check_3);
		$("#name").val(data.name);
	}
	function enter(ent) {
		var code = ent.which ? ent.which : event.keyCode;
		if (code == 13) {
			fn_send_sms()
		}
	}
	// sms 본인인증
	function fn_send_sms() {
		if (fn_valid_sms()) {
			fn_callback_sms('Y');
			//API미적용 분기 생략
		}
	}

	function isNullAndTrim(number) {
		var number;
		return (number == null || number == "" || number == "undefined" || number == " ") ? true
				: false
	}

	function fn_valid_sms() {
		var thisform = document.allform;
		if ($(":input:checkbox[id=terms1]:checked").val() == undefined) {
			alert("개인정보 이용동의에 체크해 주세요.");
			$(":input:checkbox[id=terms1]").eq(0).focus();
			return false;
		}
		if ($(":input:checkbox[id=terms2]:checked").val() == undefined) {
			alert("통신사 이용약관 동의에 체크해 주세요.");
			$(":input:checkbox[id=terms2]").eq(0).focus();
			return false;
		}

		if (isNullAndTrim(thisform.smsNum.value)) {
			alert("인증번호를 입력해주세요.");
			thisform.smsNum.value = "";
			thisform.smsNum.focus();
			return false;
		}

		return true;
	}

	function fn_callback_sms(data) {
		$("#certificationYN", parent.document).val('N');

		if (data.result == "E") {
			alert("본인 인증처리 중 데이터 에러가 발생했습니다.\n잠시 후 다시 시도해주세요.");
		} else if (data.result == "N") {
			if (data.result_code == "KISH0001") {
				alert("분실 또는 일시정지 휴대폰 입니다.");
			} else if (data.result_code == "KISH0002") {
				alert("법인 명의의 휴대폰은 등록이 불가능 합니다.");
			} else if (data.result_code == "KISH0003") {
				alert("휴대폰 번호 또는 혹은 통신사의 정보가 맞지 않습니다.");
			} else if (data.result_code == "KISH0004") {
				alert("생년월일 또는 성별 정보가 맞지 않습니다.");
			} else if (data.result_code == "KISH0005") {
				alert("휴대폰 명의자가 맞지 않습니다.");
			} else if (data.result_code == "KISH0006") {
				alert("입력하신 정보가 맞지 않습니다.");
			} else if (data.result_code == "KISH0008") {
				alert("요금제에 제한이 있는 가입자 입니다.");
			} else if (data.result_code == "KISH0009") {
				alert("선불 휴대폰번호 입니다.");
			} else if (data.result_code == "KIST9998") {
				alert("인증번호 5회 실패시 인증이 불가능 합니다. \n나중에 다시 시도해 주세요.");
			} else if (data.result_code == "KIST9999") {
				alert("인증번호가 맞지 않습니다.");
			} else {
				alert("본인 인증처리 중 데이터 에러가 발생했습니다.\n통신사의 일시적인 서비스 에러");
			}
			history.go(-1);
		} else {
			alert("인증이 완료되었습니다.");
			$("#certificationYN", opener.document).val('Y');
			opener.$("#name").val($("#name").val());
			opener.$("#gender").val($('input[name="gender"]:checked').val());

			opener.$("#birthDay").val($("#birthDay").val());
			opener.$("#phoneCorp").val($("#phoneCorp").val());
			opener.$("#cell_phone1").val($("#cell_phone1").val());
			opener.$("#tel2").val($("#tel2").val());
			self.close();
		}
	}

	$('#myModal').on('shown.bs.modal', function() {
		$('#myInput').focus()
	})

	$('#myModal2').on('shown.bs.modal', function() {
		$('#myInput').focus()
	})
</script>
<style>
input[type=checkbox] {
	/* Double-sized Checkboxes */
	-ms-transform: scale(1.5); /* IE */
	-moz-transform: scale(1.5); /* FF */
	-webkit-transform: scale(1.5); /* Safari and Chrome */
	-o-transform: scale(1.5); /* Opera */
	padding: 10px;
}

hr {
	clear: both;
	margin-top: 10px;
}
</style>
</head>

<body class="popup">
	<%@ include file="/WEB-INF/views/common/head-popup.jspf"%>
	<div class="find-container">
		<div class="container">


			<div class="inner-box">
				<form method="post" name="allform">
					<h2 style="text-align: center;">
						<button style="float: left;" type="button" class="btn btn-default"
							onclick="self.close()">X</button>
						휴대폰 <b>인증</b> <span class="pull-right">
							<button type="button" class="btn btn-primary"
								onclick="javascript:fn_send_sms();">인증</button>
						</span>
					</h2>


					<!-- contents -->
					<div class="pop_contents">
						<div class="agree_box" id="uiPhoneAgree">
							<dl>
								<dt>
									<span> <input type="checkbox" name="chk" id="terms1"><label
										for="terms1" style="margin: 15px;">개인정보 이용동의</label>
									</span>
								</dt>
								<dd>
									<a href="#none" target="_blank" title="새 창" data-toggle="modal"
										data-target="#myModal">전문보기 &gt;</a>
								</dd>
							</dl>
							<dl>
								<dt>
									<span class="chk_wrap"> <input type="checkbox"
										name="chk" id="terms2"><label for="terms2"
										style="margin: 15px;">통신사 이용약관 동의</label>
									</span>
								</dt>
								<dd>
									<a href="#none" target="_blank" title="새 창" data-toggle="modal"
										data-target="#myModal2">전문보기 &gt;</a>
								</dd>
							</dl>
						</div>
						<!-- 모달창 -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">개인정보 동의</h4>
									</div>
									<div class="modal-body">
										<%@ include
											file="/WEB-INF/views/common/terms_seller-certification.jspf"%>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">닫기</button>
									</div>
								</div>
							</div>
						</div>

						<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">통신사 이용약관 동의</h4>
									</div>
									<div class="modal-body">
										<%@ include
											file="/WEB-INF/views/common/terms_seller-certification2.jspf"%>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-primary"
											data-dismiss="modal">닫기</button>
									</div>
								</div>
							</div>
						</div>

						<p>
							<b>본인 소유</b>의 휴대폰 정보를 입력하세요.
						</p>

					</div>
					<div class="input_form_conts">
						<dl>
							<dt>
								<label for="name">고객명</label>
							</dt>
							<dd>
								<span class="input_txt input_sec_num"> <input
									class="form-control" type="text" title="고객명 입력" id="name" onkeypress="enter(event)"
									name="name">
								</span>
							</dd>
						</dl>
						<dl>
							<dt>성별</dt>
							<dd>
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-default btn-lg active"> <input
										type="radio" name="gender" value="male" title="성별 - 남"
										autocomplete="off" checked> 남
									</label> <label class="btn btn-default btn-lg"> <input
										type="radio" name="gender" value="female" title="성별 - 여"
										autocomplete="off"> 여
									</label>
								</div>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="birthDay">생년월일</label>
							</dt>
							<dd>
								<span class="input_txt input_sec_num"> <input
									class="form-control" type="text" title="생년월일 입력" id="birthDay"
									name="birthDay" onkeyup="javascript:checkNum('birthDay')"
									maxlength="8" onkeyup="checkNum('birthDay')"
									onkeypress="enter(event)">
								</span> <span class="form_guide"> 예) 19900808</span>
							</dd>
						</dl>
						<dl>
							<dt>
								<label for="sel_tel_type">휴대폰 번호</label>
							</dt>
							<dd>
								<div class="input_tel">
									<div class="selects telecom">
										<select class="form-control" title="통신사 선택"
											class="ui_selectbox" data-class="select_custom"
											name="phoneCorp" id="phoneCorp">
											<option value="">통신사</option>
											<option value="SKT">SKT</option>
											<option value="KTF">KT</option>
											<option value="LGT">LG U+</option>
											<option value="SKM">SKT 알뜰폰</option>
											<option value="KTM">KT 알뜰폰</option>
											<option value="LGM">LG U+ 알뜰폰</option>
										</select>
									</div>
								</div>
								<div class="input_btn_container input_tel">
									<div class="selects"
										style="margin-top: 5px; margin-bottom: 5px;">
										<select class="form-control" id="cell_phone1"
											name="cell_phone1" title="휴대폰 번호 앞자리 선택" class="ui_selectbox"
											data-class="select_custom">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
										</select>
									</div>
									<span class="input_txt tel_num"> <input
										class="form-control" type="text" id="tel2" name="tel2"
										title="휴대폰 번호 뒷 8자리 입력" maxlength="8"
										onkeypress="enter(event)"/> <input type="hidden"
										name="cell_phone2" id="cell_phone2" /> <input type="hidden"
										name="cell_phone3" id="cell_phone3" />
									</span>
									<button
										style="margin-top: 5px; float: right; margin-bottom: 10px;"
										type="button" class="btn btn-default"
										onclick="fn_send(); return false;">
										<span>인증번호 발송</span>
									</button>
								</div>
							</dd>
						</dl>
						<hr>
						<dl>
							<dt>
								<label for="smsNum">인증번호 입력</label>
							</dt>
							<dd>
								<span class="input_txt input_sec_num"> <input
									class="form-control" type="text" title="인증번호 입력" id="smsNum"
									name="smsNum" maxlength="6" onkeypress="enter(event)">
									<button type="button" class="btn btn-default"
										onclick="javascript:fn_send_sms();"
										style="margin-top: 5px; float: right; margin-bottom: 10px;">
										<b style="font-size: 1.5em;">↵</b>
									</button>

								</span>
							</dd>
						</dl>

					</div>
					<hr>
					<div>
						<ul>
							<li>현제 페이지는 실제로 인증번호가 발송되지 않습니다.(API미설치한 상태)</li>
							<li>인증번호 입력란에 숫자를 무작위로 입력하십시오</li>
							<li>입력하신 정보는 암호화 되어 사용되며, 테스트용도로 사용됩니다.</li>
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script>
		function enter(ent) {
			var code = ent.which ? ent.which : event.keyCode;
			if (code == 13) {
				fn_send_sms()
			}
		}

		$(function() {
			$("select").change(function() {
				$(this).removeClass("no_empty")
				if ($(this).find("option:selected").index() != 0) {
					$(this).addClass("no_empty")
				}
			});

		});
	</script>


</body>
</html>
