<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>계좌 인증 | Dallae옥션</title>
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
</script>
<style>
hr {
	clear: both;
}
</style>


<!--<![endif]-->

<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/jquery-1.7.1.min.js?1363353990000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/jquery-ui-1.8.24.custom.min.js?1363353990000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/jquery.bgpos.min.js?1363353990000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/wbui.min-20130514-2.js?1512454639000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/calendar.js?1365500133000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/ui_frm_common.js?1364556535000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/common.js?1525668543000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/netfunnel/netfunnel.js?1523534201000"></script>
<script type="text/javascript">
	var IMG_SVR = "https://simg.wooribank.com/";
	var TOP_PAGE_ID = "cm";
	var ML_LCL = '';
	if (typeof wbUI !== 'undefined') {
		wbUI.printPopAddress = 'Dream?withyou=CMCOM0106'; //: /pib/Dream?withyou=print
		wbUI.lang = "ko";

		wbUI.isDebug = false;

	}
</script>
<script type="text/javascript">
	//<![CDATA[
	// 개인
	var top_installurl = "/spd/Dream?withyou=CMCOM0127";

	var xecure_plugin_info = {
		"OBJECT_VERSION" : "1,0,5,16",
		"INSTALL_URL" : top_installurl + "&P_name=XecureWeb&url="
				+ encodeURIComponent(window.location.href)
	};

	var touchenkey_plugin_info = {
		"OBJECT_VERSION" : "3.1.0.15",
		"INSTALL_URL" : top_installurl + "&P_name=TouchEnKey&url="
				+ encodeURIComponent(window.location.href)
	};

	var crownix_plugin_info = {
		"OBJECT_VERSION" : "6,2,0,43",
		"OS_TYPE" : "WIN6.1",
		"INSTALL_URL" : top_installurl + "&P_name=Crownix&url="
				+ encodeURIComponent(window.location.href)
	};
	var markany_plugin_info = {
		"OBJECT_VERSION" : "1,0,0,3",
		"INSTALL_URL" : top_installurl + "&P_name=Markany&url="
				+ encodeURIComponent(window.location.href)
	};
	var KSCertRelayW_plugin_info = {
		"OBJECT_VERSION" : "1,0,2,1",
		"OBJECT_CODE" : " KSCertRelayW",
		"INSTALL_URL" : top_installurl + "&P_name=KSCertRelayW&url="
				+ encodeURIComponent(window.location.href)
	};
	var KSCertRelay_plugin_info = {
		"OBJECT_VERSION" : "2,0,1,9",
		"OBJECT_CODE" : " KSCertRelay",
		"INSTALL_URL" : top_installurl + "&P_name=KSCertRelay&url="
				+ encodeURIComponent(window.location.href)
	};

	var ipinside_plugin_info = {
		"OBJECT_VERSION" : "1,0,1,23",
		"INSTALL_URL" : top_installurl + "&P_name=IPinside&url="
				+ encodeURIComponent(window.location.href)
	};

	var fwgrid_plugin_info = {
		"OBJECT_VERSION" : "1.0.1.0",
		"INSTALL_URL" : top_installurl + "&P_name=FWGrid&url="
				+ encodeURIComponent(window.location.href)
	};

	var veraport_plugin_info = {
		"OBJECT_VERSION" : "2,5,2,2",
		"INSTALL_URL" : top_installurl + "&P_name=Veraport&url="
				+ encodeURIComponent(window.location.href)
	};
	//]]>
</script>
</head>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/sec/AnySign/anySign4PCInterface.js?1539787806000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/sec/transkey/TranskeyLibPack_op.js?1362234790000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/sec/transkey/transkey_jstl.js?1512047472000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/sec/realip/ktb.js?1447589667000"></script>
<script type="text/javascript">
	var TNK_SR = '58e06c67bff307a06598281354897be6';

	var ripkey = 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAtr28JWV0jGn7AddbIeb4wVleDLXTW1P8V6e7F0OWtdGGxSEJIc74Q1GUU1kj8nV0pOf72TlpOWH0c1WGBCyV5O2kw2rImc+OAO62ZfEFo6Z27wj0/klDN0lMVqsLRdDvjyODCOuccmODh9CM5Ar/vQ/rGhNI0RUq0fc7RRixwSrrLLJ6FdtmhDX48x6RCNCVkXNBCpYxrFeMo0O1WkhhPx6CmYbYjB1E486XXmupdCDdCb9MuEXQ8AgemAO43PD4VgAkG1ilqNXgUOeUTCEq7ahi3l9/a/q11BCd4NZG6eOWqoXZH/2DDtTbkbOePHj8iJo/v4/yK1AB/WZnTqzd1QIDAQAB';
</script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/sec/nos/nppfs-1.5.0.js?1452610881000"></script>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/encAjaxCheck.js?1363193909000"></script>
<div class="pop-outer">
	<div class="error-wrap"></div>
</div>
<script type="text/javascript"
	src="https://simg.wooribank.com/js/com/wbCheck.js?1453103781000"></script>
<script language='javascript'>
	onKeyDown = 'if (window.event.keyCode == 13) {javascript:doSubmit(); }';
	function doSubmit() {
		var f = document.parentFrm;
		var currValue = document.parentFrm.CURCD_3.value;
		if (!wfcb_onsubmit(f)) {
			reset_submit();
			return;
		}
		alert("인증이 완료되었습니다.");
		$("#certificationYN2", opener.document).val('Y');
		opener.$("#sellerBank").val($("#pup00").val());
		opener.$("#sellerAccountNumber").val($("#pup01").val());
		opener.$("#accountPass").val($("#pup02").val());

		self.close();

	}

	function uf_tab() {
		unFrmAcct(document.parentFrm.AccNO);
		var f = document.parentFrm;
		f.action = "";
		f.submit();
	}

	function shotData() {
		unFrmAcct(document.parentFrm.AccNO);
		var f = document.parentFrm;
		if (f.DIV.value == 'A') {
			f.ACTNO_15.value = f.AccNO.value;
			f.INQ_ACNO_15.value = f.AccNO.value;
		} else {
			f.ACTNO_14.value = f.AccNO.value;
			f.INQ_ACNO_15.value = f.AccNO.value;
			f.CUR_CD_3.value = f.CURCD_3.value;
		}
	}

	function CurrencyAcctCheck() {
		unFrmAcct(document.parentFrm.AccNO);

		len = document.parentFrm.AccNO.value.length;
		var f = document.parentFrm;
		code = '';
		if (len == 14) {
			code = f.AccNO.value.substr(9, 2);
		} else if (len == 13) {
			code = f.AccNO.value.substr(1, 3);
		} else if (len == 12) {
			code = f.AccNO.value.substr(0, 1);
		} else if (len == 11) {
			code = f.AccNO.value.substr(3, 2);
		}

		if ((len == 14) && (code == '41' || code == '42')) {
			f.CURCD_3.disabled = false;
			f.DIV.value = "B";
		} else if ((len == 13)
				&& (code == '080' || code == '081' || code == '083'
						|| code == '182' || code == '120')) {
			f.CURCD_3.disabled = false;
			f.DIV.value = "B";
		} else if ((len == 12)
				&& (code == '06' || code == '07' || code == '08'
						|| code == '26' || code == '27')) {
			f.CURCD_3.disabled = false;
			f.DIV.value = "B";
		} else if ((len == 11) && (code == 'F' || code == 'D' || code == 'A')) {
			f.CURCD_3.disabled = false;
			f.DIV.value = "B";
		} else {
			document.parentFrm.CURCD_3.disabled = true;
			document.parentFrm.CURCD_3.options[0].selected = true;
			f.DIV.value = "A";
		}

	}
	function moveFocus(max) {
		var elem = document.all;
		var select_idx = 0;
		for (i = 0; i < document.all.length; i++) {
			var obj = elem[i];
			switch (obj.type) {
			case "image":
				select_idx = i;
				break;
			}
		}
		if (max == "") {
			//elem[select_idx].focus();
		} else {
			if (max == document.parentFrm.PSNBIZPENO_7.value.length) {
				if (document.parentFrm.CURCD_3.disabled) {
					elem[select_idx].focus();
				} else {
					document.parentFrm.CURCD_3.focus();
				}
			}
		}
	}
</script>
<body class="popup">
	
	<div class="find-container">
		<div class="container">
			<div class="inner-box">
				<h2 style="text-align: center;">
					<button style="float: left;" type="button" class="btn btn-default"
						onclick="self.close()">X</button>
					계좌<b>인증</b> <span class="pull-right">
						<button type="button" class="btn btn-primary"
							onclick="javascript: doSubmit() ;return false;;">인증</button>
					</span>
				</h2>

				<form name="parentFrm" id="parentFrm">
					<label for="pup00">은행명</label>
					<select name="bankCode" id="pup00" class="form-control">
						<option value="none">선택하세요</option>
						<option value="산업">산업</option>
						<option value="기업">기업</option>
						<option value="우리">우리</option>
						<option value="하나">하나</option>
						<option value="농협">농협</option>
						<option value="우체국">우체국</option>
						<option value="신한">신한</option>
						<option value="외환">외환</option>
						<option value="SC제일">SC제일</option>
						<option value="HSBC">HSBC</option>
						<option value="씨티">씨티</option>
						<option value="상호저축">상호저축</option>
						<option value="부산">부산</option>
						<option value="새마을금고">새마을금고</option>
						<option value="대구">대구</option>
						<option value="광주">광주</option>
						<option value="경남">경남</option>
					</select>
					<p>
						<input type=hidden name=CUR_CD_3 value='KRW' />
					</p>
					<p style="margin-top: 10px;">
						<label for="pup01">계좌번호</label> <input class="form-control"
							title="계좌번호 입력" id="pup01" name="AccNO" type="text" mask="-"
							paste="on" onBlur='return CurrencyAcctCheck()' datatype="N"
							maxlength=20 notnull="true" colname='계좌번호'
							onkeypress="enter(event)" />
					</p>
					<p>
						<label for="pup02">계좌비밀번호</label> <input class="form-control"
							type="password" id="pup02" name="passwordNo" autocomplete="off"
							maxlength="6" datatype=N enc='on' minlength=4 colname=계좌비밀번호
							notnull=true onkeypress="enter(event)" />
					</p>
					<p>
						<label for="pup03">생년월일/사업자번호</label> <input class="form-control"
							type="password" id="pup03" name="PSNBIZPENO_7" autocomplete="off"
							maxlength="6" datatype=N enc='on' minlength=5 colname=생년월일/사업자번호
							notnull=true onkeypress="enter(event)" />
					</p>
					<p>

						<script>
							transkey.Tk_pup03 = new TransKey("Tk_pup03", 0, 0,
									transkey_surl, "number", 6, "password",
									"pup03");
							transkey.Tk_pup03.useTransKey = false
							transkey.Tk_pup03.addEvent("focus", "onfocus");
							transkey.transkey_inputs = transkey.transkey_inputs
									+ "Tk_pup03:PSNBIZPENO_7,";
							transkey.transkey_i = transkey.transkey_i + 1;
						</script>

						<span class="i-dsc">(개인은 생년월일 6자리, 기업은 사업자번호 뒤 5자리 입력)</span> <label
							for="pup04" style="display: none;">통화</label>

						<select name="CURCD_3" disabled onchange="moveFocus('');"
							id="pup04" title="통화 선택" style="display: none;">
							<option value=''>선택하세요.</option>
							<option value='KRW'>KRW (한국)</option>
							<option value='USD'>USD (미국)</option>
							<option value='JPY'>JPY (일본)</option>
							<option value='EUR'>EUR (유럽연합)</option>
							<option value='GBP'>GBP (영국)</option>
							<option value='CAD'>CAD (캐나다)</option>
							<option value='CHF'>CHF (스위스)</option>
							<option value='HKD'>HKD (홍콩)</option>
							<option value='CNY'>CNY (중국)</option>
							<option value='THB'>THB (태국)</option>
							<option value='IDR'>IDR (인도네시아)</option>
							<option value='SEK'>SEK (스웨덴)</option>
							<option value='AUD'>AUD (호주)</option>
							<option value='DKK'>DKK (덴마크)</option>
							<option value='NOK'>NOK (노르웨이)</option>
							<option value='SAR'>SAR (사우디)</option>
							<option value='KWD'>KWD (쿠웨이트)</option>
							<option value='BHD'>BHD (바레인)</option>
							<option value='AED'>AED (U.A.E)</option>
							<option value='SGD'>SGD (싱가포르)</option>
							<option value='NZD'>NZD (뉴질랜드)</option>
							<option value='TWD'>TWD (대만)</option>
							<option value='PHP'>PHP (필리핀)</option>
						</select>
						<span class="i-dsc" style="display: none;">(외화예금 조회시에만 선택)</span>
					<div style="margin-bottom: 40px;">

						<button class="btn btn-default"
							onclick="javascript: doSubmit() ;return false;"
							style="float: right;">
							<b style="font-size: 1.5em;">↵</b>
						</button>
						<hr>
						<ul>
							<li>현제 페이지는 실제로 계좌가 조회되지는 않습니다.(API미설치한 상태)</li>
							<li>입력란에 숫자를 무작위로 입력하십시오</li>
							<li>입력하신 정보는 암호화 되어 사용되며, 테스트용도로 사용됩니다.</li>

						</ul>

					</div>

				</form>

			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="https://simg.wooribank.com/js/com/wbCheck.js?1453103781000"></script>

</body>
</html>

