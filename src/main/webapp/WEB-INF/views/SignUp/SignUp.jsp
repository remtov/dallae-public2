<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<script type="text/javascript">
function agreeCheck(frm)
{
   if (frm.checkButton.disabled==true){
	   frm.checkButton.disabled=false
   } 
   else{
	   frm.checkButton.disabled=true
	    
   }
  
}

</script>


<style>
#sign-up_btn {
	height: 100px;
	/* background-color:red; */
}
</style>

</head>
<body>
	<div class="my-page_container">
		<div class="container" id="find_container--800">
			<div style="text-align: center; margin-bottom: 50px;">
				<h1>회원가입</h1>
				<p>
					이미 회원입니까? <a href="/url/SignUp:login">로그인</a>
				</p>

			</div>







			<form class="form-horizontal" name="form">




				<div class="form-group">
					<label for="signupName" class="col-sm-2 control-label">이름</label>

					<div class="col-sm-10">
						<input type="text" id="signupName" data-vali="2"
							class="form-control" placeholder="이름">
					</div>
				</div>


				<div class="form-group">
					<label for="signupId" class="col-sm-2 control-label">아이디</label>

					<div class="col-sm-10">
						<input type="text" id="signupId" data-vali="2"
							class="form-control" placeholder="아이디">
					</div>
				</div>



				<div class="form-group">
					<label for="signupPassword" class="col-sm-2 control-label">비밀번호</label>

					<div class="col-sm-10">
						<input class="form-control" type="password" id="signupPassword"
							data-vali="2" placeholder="비밀번호">
					</div>
				</div>



				<div class="form-group">
					<label for="conpassword" class="col-sm-2 control-label">비밀번호
						확인</label>

					<div class="col-sm-10">
						<input class="form-control" type="password" id="conpassword"
							data-vali="2" placeholder="비밀번호 확인">
					</div>
				</div>




				<div class="form-group">
					<label for="signupEmail" class="col-sm-2 control-label">Email</label>

					<div class="col-sm-10">
						<input type="email" id="signupEmail" class="form-control"
							placeholder="이메일 주소를 입력하세요 예)abc@defg.com">
					</div>
				</div>




				<div class="form-group">
					<label for="signupNickName" class="col-sm-2 control-label">별명</label>

					<div class="col-sm-10">
						<input type="text" class="form-control" id="signupNickName"
							placeholder="별명" data-vali="2">
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">주민등록번호</label>

					<div class="col-sm-5">
						<input type="number" class="form-control" id="front"
							placeholder="주민등록번호 앞자리" data-vali="2">
					</div>

					<div class="col-sm-5">
						<input type="number" class="form-control" id="end"
							placeholder="주민등록번호 뒷자리" data-vali="2">
					</div>

				</div>


				<div class="form-group">
					<label for="signupPhone" class="col-sm-2 control-label">전화번호</label>

					<div class="col-sm-10">
						<input type="text" class="form-control" id="signupPhone"
							placeholder="전화번호를 입력해주세요 예)01012345678" data-vali="2">
					</div>
				</div>

				<div class="form-group">
					<label for="myform" class="col-sm-2 control-label">관심사</label>

					<div class="col-sm-10" style="margin-top: 7px;">
						<div id="myform">
							<input type="checkbox" id="beauty">미용 <input
								type="checkbox" id="machine">전자기기 <input type="checkbox"
								id="life">생활<br>

						</div>
						<!-- 	<div class="checkbox" id="myform">

						<label class="checkbox-inline"> <input type="checkbox">
							미용
						</label> <label class="checkbox-inline"> <input type="checkbox">
							전자기기
						</label> <label class="checkbox-inline"> <input type="checkbox">
							생활
						</label>




					</div> -->
					</div>
				</div>


				<!-- ------------------------------------ -->






				<!-- 체크 -->

				<!-- 체크 -->

				<!-- 버튼 -->
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">

						<textarea class="form-control" cols="40" rows="5"
							style="width: 100%; height: 300px;">1. 소개

2. Dallae 정보
3. Dallae 사용
4. 정책 집행
5. 비용
6. 조건 나열
7. 구매 조건
8. 국제 매매 및 매각; 번역
9. 내용
10. 지적 재산권 위반 및 저작권 침해에 대한 고지 사항 미국 법전 Title 17의 512 (c) 항에 의거하여
11. 보류
12. 귀하에게 연락 할 수있는 권한 전화 녹음
13. 추가 약관
반품 및 취소
글로벌 배송 프로그램
이베이 머니 백 보증
14. 보증 면책. 책임의 한계
15. 출시
16. 손해 배상
17. 법적 분쟁
18. 일반

1. 소개
이 사용자 계약서는 모바일 장치의 측면 , 모든 정책과 추가 약관에 우리 사이트, 응용 프로그램, 도구 및 서비스 (이하 "서비스") 이베이는 당신이 액세스하고 우리의 서비스의 사용을 제공하는 조건을 설정에 게시. Google 정책에 대한 개요는 여기에서 확인할 수 있습니다 . 모바일 장치 약관, 사이트 및 응용 프로그램, 도구 및 서비스에 게시 된 모든 정책 및 추가 조건은 본 사용자 계약에 통합됩니다. 귀하는 서비스에 액세스하거나 사용할 때 본 사용자 계약서의 모든 조항을 준수 할 것에 동의합니다.

귀하가 계약하는 사업체는 다음과 같습니다 : 미국에 거주하는 경우, Dallae Inc., 2025 Hamilton Ave., San Jose, CA 95125; 영국에 거주하는 경우 Dallae (UK) Limited, 5 New Street Square, London, EC4A 3TW, 영국; Dallae GmbH, Albert-Einstein-Ring 2-6, 14532 Kleinmachnow, Germany, 귀하가 영국 이외의 지역에 있지만 유럽 연합 내에 거주하는 경우; 캐나다에 거주하는 경우, 캐나다 이베이 (IBay Canada) Limited, 500 King Street West, Suite 200, Toronto, ON M5V 1L9, 캐나다; 인도에 거주하는 경우 2018 년 9 월 21 일 이베이 싱가포르 서비스 Pte Ltd., 10 Collyer Quay, 10-01 Ocean Financial Center, Singapore 049315; 다른 국가에 거주하는 경우 스위스 베른, Helvetiastrasse 15/17, 3005, Dallae Marketplaces GmbH. 이 사용자 계약서에서,이 엔티티는 개별적으로 그리고 집합 적으로 "이베이 "," 우리 "또는" 우리 ".

이 사용자 계약서에는 귀하와 우리가 서로에 대해 제기 한 클레임이 어떻게 해결되는지 규정하는 조항이 포함되어 있음을 알려드립니다 (아래 책임 제한 및 법적 분쟁 조항의 보증 부인 참조). 또한 중재 합의서도 포함되어 있습니다. 예외적 인 경우를 제외하고는 귀하가 중재 합의를 거부하지 않는 한 귀하가 당사 또는 당사의 대리인을 구속력 있고 최종적인 중재에 회부하도록 요구합니다 ( 법적 분쟁, 섹션 B 참조).( "중재 합의")). 귀하가 옵트 아웃하지 않는 한 : (1) 귀하는 당사 또는 당사의 대리인에 대한 클레임을 개인적으로 만 제기 할 수 있으며, 어떤 종류의 대표자 또는 대표자 행동이나 소송 절차로 제기 된 것이 아니며 (2) 개별적으로 구제 (금전, 간접 및 선언적 구제를 포함)를 추구해야합니다.

2. Dallae 정보
이베이 (Dallae)는 사용자가 다양한 가격 책정 형식 및 위치에서 무엇이든을 제공, 판매 및 구매할 수있게 해주는 시장입니다. 실제 판매 계약은 판매자와 구매자간에 직접 체결됩니다. Dallae는 전통적인 경매가 아닙니다.

Google 서비스에서 가격, 배송, 상장, 소싱 및 기타 안내를 제공 할 수 있지만 이러한 안내는 전적으로 정보 제공 용이므로 사용자는이를 따를 지 여부를 결정할 수 있습니다. 또한 다양한 프로그램을 통해 분쟁을 해결하는 데 도움을 줄 수 있지만 Dallae는 광고 된 품목의 존재, 품질, 안전 또는 적법성을 보장하지 않으며 보장하지 않습니다. 사용자의 콘텐츠 또는 목록의 진실성 또는 정확성 판매자가 상품을 판매 할 수있는 능력; 구매자가 물품을 지불 할 수있는 능력; 또는 구매자 또는 판매자가 실제로 거래를 완료하거나 상품을 반품하는 경우.

3. Dallae 사용
서비스 사용 또는 접속과 관련하여 귀하는 다음을 수행하지 않습니다 :

사이트의 부적절한 카테고리 또는 영역에있는 콘텐츠 또는 항목을 게시, 나열 또는 업로드 할 수 없습니다.
제 3 자의 권리 또는 시스템 상태, 정책 또는 계정 상태의 결정을 위반하거나 우회하는 행위;
법적 구속력이있는 계약 (예 : 18 세 미만인 경우)을하거나 당사 사이트, 서비스, 응용 프로그램 또는 도구를 사용하여 일시적으로 또는 무기한 중단되는 경우 서비스를 이용하십시오.
Dallae 정책에 명시된 바와 같이 유효한 이유가없는 경우, 예를 들어, 판매자가 입찰 후에 항목 설명을 현저하게 변경했거나 명확한 인쇄상의 오류가 있거나 판매자에게 연락 할 수없는 경우 판매자 (미 지불 상품 정책 참조 ).
구매자가 귀하의 목록에 게시 된 조건을 준수하지 못하거나 구매자에게 연락 할 수없는 경우와 같이, 귀하가 판매 한 품목을 제공하지 못한 경우.
어떤 품목의 가격을 조작하거나 다른 사용자의 명부 작성을 방해하십시오.
허위, 부정확, 오도, 허위, 명예 훼손 또는 불법적 인 내용 게시;
의견이나 등급 시스템을 훼손 할 수있는 행동을 취하십시오 ( 우리의 의견 정책에 관한 모든 내용 참조 ).
동의없이 Dallae 계정 (피드백 포함) 및 사용자 ID를 다른 사람에게 양도 할 수 있습니다.
스팸, 자발적 또는 대량 전자 통신, 연쇄 편지 또는 피라미드 계획을 배포 또는 게시 할 수 있습니다.
Dallae 또는 사용자의 이익이나 재산에 해를 끼칠 수있는 바이러스 또는 기타 기술을 배포하는 행위
사전에 Dallae의 명시적인 허가없이 어떤 목적 으로든 우리의 서비스에 액세스하기 위해 로봇, 스파이더, 스크레이퍼, 데이터 마이닝 도구, 데이터 수집 및 추출 도구 또는 기타 자동화 된 수단을 사용하십시오.
당사 서비스의 작동을 방해하거나 인프라에 불합리하거나 과도하게 많은 부하를 가하지 마십시오.
관련 관할권의 수출 통제 법규를 준수하고 게시 된 규칙 및 제한 사항을 준수하는 경우를 제외하고 모든 Dallae 응용 프로그램 또는 도구를 수출하거나 재수출 할 수 있습니다.
Dallae에 속하거나 라이센스가 부여 된 저작권, 상표, 특허, 홍보, 도덕적, 데이터베이스 및 / 또는 기타 지적 재산권 (통칭 "지적 재산권")을 침해하는 행위. 침해에 해당하는 일부 행위는 Dallae 또는 다른 사람의 컨텐츠에 대한 복제, 실행, 표시, 배포, 복사, 역 설계, 디 컴파일 링, 해체 또는 파생물 제작입니다.
귀하의 서비스 사용으로 인해 영향을받는 제 3 자의 지적 재산권을 침해하거나 귀하의 소유가 아닌 콘텐츠를 게시 할 수 없습니다.
Dallae의 사전 허가 없이는 모든 Dallae 응용 프로그램 또는 해당 응용 프로그램과 관련된 정보 또는 소프트웨어를 상업화 할 수 없습니다.
동의없이 사용자에 관한 정보를 수집하거나 수집하는 행위 또는
우리가 서비스를 제공하기 위해 사용하는 기술적 조치를 우회합니다.
판매자는 Dallae의 최소 성능 기준을 충족해야합니다 . 이러한 기준을 충족시키지 않으면 Dallae가 귀하에게 추가 요금을 청구하거나 판매자 계정을 제한, 제한, 정지 또는 등급을 낮추게 될 수 있습니다.

귀하가 임의로 Dallae 및 / 또는 당사의 서비스를 남용하고 있다고 판단되는 경우, 당사는 단독 재량으로 귀하의 사용자 계정을 제한, 중지 또는 해지하거나 서비스에 액세스하거나 지연 또는 제거 할 수 있습니다 귀하의 계정과 관련된 특별한 상태를 제거하고, 목록을 제거, 표시 및 / 또는 순위를 낮추거나, 할인을 줄이거 나 제거하고, 귀하가 당사 서비스를 사용하지 못하도록 기술적 및 / 또는 법적 조치를 취할 수 있습니다.

귀하가 Dallae 외부에서 사고 팔거나 제공 하는 정책에 위배된다고 판단되면 귀하의 매매 특혜 제한, 목록 및 계정 기능 제한, 계정 정지, 응용 프로그램 제한 수수료의 징수 및 정책 모니터링 및 집행 비용의 회수. 귀하가 판매자이고 귀하 가 Dallae 외부에서 구매 또는 판매하는 것과 관련하여 귀하의 연락처 정보를 제공하거나 참조하거나 구매자에게 연락 정보를 요청하는 경우 , 귀하는 해당 품목에 적용 가능한 최종 금액을 지불해야 할 수 있습니다. 항목이 판매되지 않습니다.

당사는 미확인 계정이나 오랫동안 비활성 상태 인 계정을 취소하거나 서비스를 수정 또는 중단 할 수 있습니다. 또한, 우리는 재량에 따라 어떤 이유로 든 우리 서비스의 전부 또는 일부를 거부하거나 종료 할 수있는 권리를 보유합니다.

4. 정책 집행
구매자 또는 판매자 문제가 발생하면 사용자의 실적 내역과 Google 정책 적용의 특정 상황을 고려할 수 있습니다. 우리는 구매자와 판매자 모두에게 올바른 일을하기 위해 정책 집행에보다 관대해질 수 있습니다.

5. 비용
서비스 사용료는 표준 판매 수수료 페이지에 기재되어 있습니다. 당사는 14 일 전에 Dallae 사이트에 변경 사항을 게시함으로써 판매자 수수료를 수시로 변경할 수 있지만 일시적인 프로모션이나 수수료를 줄이기위한 변경에 대해서는 사전 통지가 필요하지 않습니다.

귀하가 판매자 인 경우, 판매 조건이 완료되거나 Dallae 외부로 지불 되었더라도 일부 또는 모든 Dallae 서비스를 사용하여 발생한 모든 판매에서 발생하는 거래 수수료에 대한 책임이 있습니다. 특히, 귀하가 Dallae 외부에서 구매 또는 판매하는 것과 관련하여 연락 정보를 제공하거나 참조하거나 구매자에게 연락 정보를 요청한 경우, 해당 품목에 적용되는 최종 가치 요금 을 지불해야 할 수 있습니다 구매자에게 소개를 위해 Dallae 서비스 사용을 감안할 때 판매하지 마십시오.

귀하는 Dallae 서비스를 통해 판매 할 때 파일에 지불 방법을 가지고 있어야하고 지불 마감 기한까지 당사 서비스와 관련된 모든 수수료 및 관련 세금을 지불해야합니다. 귀하의 지불 방법이 실패하거나 귀하의 계좌가 만료 된 경우, 우리는 다른 지불 방법을 청구하여 수령 한 금액을 수령하고, 수금 대행 기관 및 법률 고문을 보유 할 수 있으며, 만기가 지난 60 일을 초과하는 계정의 경우 PayPal이 금액 PayPal 계정 잔액이 남아 있습니다. 또한 연체료가 부과됩니다.. Dallae 또는 당사가 보유한 수금 대행사는 귀하의 계좌에 관한 정보를 신용 조사소에보고 할 수 있으며, 이로 인해 귀하의 계좌에 대한 연체료, 미수용금 또는 기타 채무 불이행이 귀하의 신용 보고서에 반영 될 수 있습니다. Dallae가 크레딧 뷰로 (Experian, Equifax 또는 TransUnion)에보고 한 정보에 이의를 제기하려면 Dallae Inc., C / O Global Collections, 7700 West Parmer Lane, Building D, Austin, TX 78729로 문의하십시오. 수금 대행사가 귀하의 이베이 (Dallae) 계좌와 관련된 신용 정보 기관에보고 한 정보에 이의를 제기하려면 수금 대행사에 직접 연락해야합니다.

판매자 요금은 웹 페이지, 모바일 앱 또는 다른 방법이든 상관없이 Dallae에서 상품 노출에 대한 배타적 권리를 구매하지 않습니다. 우리는 단독 재량으로 판매자의 요금 인하 또는 기타 신용에 대한 동의 또는 지불없이 제 3 자 광고 (링크 및 참조 포함) 또는 기타 서비스 내용을 Google 서비스의 일부에 게재 할 수 있습니다.

6. 조건 나열
항목을 나열 할 때 귀하는 Dallae의 리스팅 정책 및 판매 관행 정책 을 준수하고 다음을 준수하는 것에 동의 합니다.

제공하신 제품 및 품목의 정확성과 내용에 대한 책임은 귀하에게 있습니다
몇 시간 (또는 경우에 따라 최대 24 시간) 동안 귀하의 목록이 키워드 또는 카테고리별로 즉시 검색되지 않을 수 있습니다. Dallae는 정확한 리스팅 기간을 보장 할 수 없습니다.
소비자 판매자 목록 작성 도구를 사용하여 목록을 작성하면 고정 가격 목록은 30 일마다 자동으로 갱신 될 수 있습니다. 그 때의 목록 기간을 기준으로 수량이 매진되거나 목록을 취소 할 때까지
이베이의 정책을 위반하는 콘텐츠는 이베이의 재량에 따라 수정, 난독 화 또는 삭제 될 수 있습니다.
Google은 업체 정보와 관련된 제품 데이터를 수정하여 정보를 보완, 삭제 또는 수정할 수 있습니다.
우리는 구매자가 원하는 것을 찾을 수있는 마켓 플레이스를 만들기 위해 노력합니다. 따라서 검색 및 검색 결과에 나타나는 목록의 모양 또는 배치는 다음을 비롯한 다양한 요인에 따라 달라질 수 있습니다.
구매자의 위치, 검색 질의, 브라우징 사이트 및 히스토리;
항목의 위치, 목록 형식, 가격 및 운송 비용, 서비스 조건, 종료 시간, 기록 및 사용자 쿼리에 대한 관련성;
리스팅 관행, 상세 판매자 등급, Dallae 정책 준수, 피드백 및 결함 비율을 포함한 판매자의 기록; 과
구매자의 검색어와 일치하는 업체 수
긍정적 인 사용자 환경을 조성하려면 구매자가 선택한 정렬 순서에 관계없이 일부 검색 및 검색 결과에 목록이 표시되지 않을 수 있습니다
일부 고급 리스팅 업그레이드는 특정 서비스에서만 볼 수 있습니다.
Dallae의 중복 목록 정책 은 목록이 검색 결과에 표시되는지 여부에도 영향을 미칠 수 있습니다.
목록에 포함 된 메타 태그 및 URL 링크는 제 3 자 검색 엔진 결과에 영향을주지 않도록 제거되거나 변경 될 수 있습니다.
Google은 업체 정보를 작성할 때 고려할 선택적 권장 사항을 제공 할 수 있습니다. 이러한 권장 사항은 유사한 판매 및 현재 리스팅의 판매 및 실적 내역을 기반으로 할 수 있습니다. 결과는 개별 목록에 따라 다릅니다. 추천 환경을 제공하기 위해 귀하는 개별 판매자의 판매 및 실적 내역을 다른 판매자의 판매 및 실적 내역에 표시 할 수 있다는 데 동의합니다.
7. 구매 조건
물품을 구입할 때 구매자를위한 규칙 및 정책에 동의하며 다음 사항을 준수 해야합니다.

입찰 또는 구매 약정을하기 전에 전체 품목 목록을 읽어야합니다
아이템 구매를 약속하거나 아이템에 대한 제안이 수락되거나 낙찰가를 받거나 (그렇지 않으면 입찰가가 수락되는 경우) 법적으로 구속력이있는 계약을 체결하여 아이템을 구매합니다.
자동차 및 부동산의 경우, 입찰 또는 제안은 매도인의 물품을 매수하는 것에 대한 매수인의 진지한 표현을 나타내는 구속력이없는 거래를 개시하고 매수인과 매도인간에 공식 계약을 체결하지는 않습니다
Google은 판매자의 항목에 대한 법적 소유권을 구매자에게 이전하지 않습니다.
유타 코드 구매자와 판매자가 별도로 동의하지 않는 한, 구매자와 판매자 간의 소유권 양도에는 § 70A-2-401 (2) 및 통일 상법 (§2-401 (2))이 적용됩니다
8. 국제 매매 및 매각; 번역
당사의 많은 서비스는 국제적인 판매자와 구매자가 이용할 수 있습니다. 우리는 예상되는 현지 통화 변환 및 국제 배송 계산 도구와 같은 국제 판매자 및 구매자에게 특정 프로그램, 도구 및 특별 관심 대상 사이트 경험을 제공 할 수 있습니다. 판매자와 구매자는 품목의 국제 판매, 구매 및 선적에 적용 가능한 모든 법률과 규정을 준수 할 책임이 있습니다. Dallae.com 이외의 Dallae 사이트에서 상품을 구매하는 경우 해당 구매와 관련하여 해당 다른 Dallae 사이트의 이용 약관이 적용됩니다.

귀하는 귀하의 물품을 Dallae의 국제 사이트 중 하나 이상에 직접 기재 할 수 있습니다. 또한 해외 배송 옵션 (예 : 전세계 배송 또는 글로벌 배송 프로그램)이있는 항목을 포함하여 원래 Dallae 목록 사이트가 아닌 다른 사이트의 목록을 표시하도록 지시 할 수 있습니다. 이 사이트에 귀하의 업체 정보가 표시되는 것은 보장되지 않습니다. 국제적으로 상품을 판매 할 때 귀하는 다른 사이트의 사용자 계약, 정책 및 Dallae Money Back Guarantee 의 적용을받는 것에 동의합니다 . My Dallae 내의 계정 설정을 조정하여 해외 배송을 제외하고 해당 국가에 제외 목록을 적용하여 국제 배송에 대한 선호도를 나타낼 수 있습니다.

귀하는 자동화 도구를 사용하여 귀하의 이베이 (Dallae) 컨텐츠 및 회원 간 통신 내용의 전부 또는 일부를 그러한 번역 솔루션을 사용할 수있는 현지 언어로 번역 할 수 있도록 허가합니다. 귀하의 요청에 따라 콘텐츠를 번역 할 수있는 도구를 제공 할 수 있습니다. 번역의 정확성과 가용성은 보장되지 않습니다.

9. 내용
서비스를 사용하여 (직접 또는 간접적으로) 서비스를 제공 할 때, 귀하는 (위에 정의 된) 모든 지적 재산권을 행사할 수있는 비 독점적이며 전세계적이고 영구적이며 취소 불가능한 로열티가없고 재 라이센스가 부여되는 (여러 계층을 통해) 귀하는 현재 알려져 있거나 향후 개발 될 매체에서 서비스의 제공, 확장 및 홍보와 관련하여 해당 컨텐츠를 보유하고 있습니다. 관련법에 따라 허용되는 최대한의 범위에서 귀하는 Dallae, 양수인, 재판매 인 및 양수인을 상대로 당사의 양도인 및 그 재 실시권자의 사용과 관련하여 귀하의 지적 재산권을 행사할 수있는 권리를 포기합니다 서비스의 제공, 확장 및 홍보와 관련된

귀하는 귀하가 제공하는 모든 컨텐츠에 대해 귀하가 그렇게하는 데 필요한 모든 권리를 소유하거나 통제하고 본 사용자 계약에 따른 귀하의 의무를 이행 할 것을 진술하고 보증합니다. 귀하는 그러한 내용이 정확함을 진술하고 보증합니다. 귀하는 우리, 사용자 또는 당사와 계약을 맺고 계약 당사자가이 사용자 계약서를 준수하여 그러한 컨텐트 (파생 제품 포함)를 사용하는 것이 제 3 자의 지적 재산권을 침해하지 않으며 위반하지 않을 것이라고 진술하고 보증합니다 . 이베이 (Dallae)는 귀하 또는 제 3자가 제공 한 컨텐츠에 대해 책임을지지 않으며 어떠한 책임도지지 않습니다.

우리는 제 3 자 (Dallae 사용자 포함)가 제공하는 제품 데이터 (이미지, 설명 및 사양 포함)를 제공합니다. 귀하는 귀하의 Dallae 목록에서만 그 내용을 사용할 수 있습니다. Dallae는 단독 재량으로 언제든지 해당 허가를 수정하거나 취소 할 수 있습니다. 제품 데이터에는 저작권, 상표 및 기타 독점 자료가 포함됩니다. 귀하는 제품 데이터의 저작권, 독점권 또는 식별 표시를 제거하지 않고 해당 데이터를 기반으로 한 파생 제품을 생성하지 않을 것에 동의합니다 (목록에 데이터를 포함하는 것을 제외하고).

우리는 신뢰할 수있는 제품 데이터를 제공하려고 노력하지만 서비스를 통해 제공되는 콘텐츠는 항상 정확하고 완전하며 최신 상태로 제공 될 것이라고 약속 할 수 없습니다. 귀하는 Dallae가 서비스를 통해 제 3자가 제공 한 목록 또는 컨텐츠를 검사하거나 보증 할 책임이 없으며 귀하 또는 당사의 데이터 제공자에게 부정확성에 대해 책임을지지 않기 위해 시도하지 않을 것에 동의합니다. 판매자는 업체 정보와 직접 관련된 콘텐츠가 정확한지 확인하는 데 동의합니다.

당사의 서비스와 관련하여 사용하는 "Dallae"라는 이름 및 기타 Dallae 마크, 로고, 디자인 및 구문은 미국 및 기타 국가에서 Dallae의 상표, 서비스 마크 또는 상표입니다. 그들은 Dallae의 사전 서면 허가없이 서면으로 사용할 수 없습니다.

10. 지적 재산권 위반 및 저작권 침해에 대한 고지 사항 미국 법전 Title 17의 512 (c) 항에 의거하여
Google은 미국 디지털 밀레니엄 저작권법 (Digital Millennium Copyright Act)에 따라 저작권 침해 혐의에 대한 통지에 응답합니다. 이베이의 Verified Rights Owner (VER) 프로그램은 사이트 나 앱의 목록에있는 항목과 콘텐츠가 제 3 자의 저작권, 상표 또는 기타 지적 재산권을 침해하지 않도록 보장합니다. 귀하의 지적 재산권이 침해되었다고 생각되면 VeRO 팀에 알려주십시오. 조사를 진행할 것입니다. Dallae에 통지서 제출 방법을 배우십시오 .

11. 보류
Dallae는 판매자로서 귀하의 행동에 책임을지는 위험으로부터 Dallae를 보호하기 위해 때때로 PayPal이 판매자의 PayPal 계정에있는 자금에 대한 액세스를 판매를 제한하는 등의 특정 요소에 따라 제한하도록 권장하고 계속 권장 할 수 있습니다 기록, 판매자 성과, 반품, 리스팅 범주의 위험, 거래 가격 또는 Dallae Money Back Guarantee 케이스의 제출. 이로 인해 PayPal에서 PayPal 계정의 금액을 제한 할 수 있습니다.

12. 귀하에게 연락 할 수있는 권한 녹음 전화; 메시지 내용 분석
Dallae는 귀하에게 당사에 제공 한 전화 번호로 자동 전화 또는 사전 녹음 된 전화 및 문자 메시지를 사용하여 귀하에게 연락 할 수 있습니다. (i) 귀하의 계정과 관련하여 귀하에게 알립니다. (ii) 귀하의 계정 문제를 해결하십시오. (iii) 분쟁 해결; (iv) 채무를 징수한다. (v) 조사 또는 설문 조사를 통해 귀하의 의견을 조사하십시오; (vi) 귀하의 계정을 서비스하거나 본 사용자 계약, 정책, 관련 법률 또는 기타 귀하와 체결 한 계약을 이행하는 데 필요한 다른 방법. Dallae는 귀하가 그러한 통신에 동의하는 경우 마케팅 목적 (예 : 쿠폰 및 프로모션)을 위해 자동 전화 또는 사전 녹음 된 통화 및 문자 메시지를 사용하여 귀하에게 연락 할 수도 있습니다. 당사의 개인 정보 수집, 사용, 공개, 보유 및 보호는 사용자 개인 정보 보호 정책의 적용을받습니다 . 우리사용자 개인 정보 고지 사항 , 이베이 (Dallae)는 귀하를 위해 다른 전화 번호를 수집 할 수 있으며 해당 번호 중 임의의 번호에 수동 비 마케팅 전화를 걸거나 모든 유선 전화로 전화를 거는 비 마케팅 전화를 걸 수 있습니다. 표준 전화 분과 텍스트 요금이 적용될 수 있으며 계획 한도를 초과 한 경우 초과 요금이 포함될 수 있습니다. 당신은 그런 통신을받지 않으려면, 당신은 등을 통해 언제든지 통신 환경 설정을 변경할 수 있습니다 통신 환경 설정 내 이베이의 섹션을 참조하십시오.

Dallae는 사용자 개인 정보 보호 정책에 명시된대로 공인 서비스 제공 업체와 전화 번호를 공유 할 수 있습니다. 이러한 서비스 제공 업체는 위에 명시된 목적을 수행하기 위해 Dallae가 승인 한 경우에만 자동 다이얼 또는 사전 녹음 된 전화 및 문자 메시지를 사용하여 사용자에게 연락 할 수 있습니다.

Dallae는 별도의 통지 또는 경고없이 그리고 재량에 따라 귀하 또는 귀하를 대신하여 행동하는 사람이 품질 관리 및 교육 목적으로 또는 자신의 보호를 위해 Dallae 또는 그 대리인과 전화 대화를 모니터링하거나 기록 할 수 있습니다.

Dallae의 자동화 된 시스템은 사용자 사이의 메시지를 포함하여 메시지 플랫폼을 통해 전송되는 모든 메시지의 내용을 검사 및 분석하여 통합 약관, 통지, 규칙 및 정책을 포함하여 Dallae의 사용자 계약 위반 또는 사기 행위를 탐지하고 방지합니다. 이 스캐닝 및 분석은 메시지가 전송되기 전이나 도중에 또는 저장 중에 발생할 수 있으며 메시지가 지연되거나 보류 될 수 있습니다. Dallae는이 스캐닝 및 분석을 수행하는 것을 포함하여 메시지 내용을 저장할 수 있습니다.

다른 사람들의 사생활; 마케팅
Dallae가 귀하에게 다른 사용자에 관한 정보를 제공하는 경우 귀하는 정보가 귀하에게 제공되는 목적으로 만 사용할 것에 동의합니다. 귀하는 서비스와 무관 한 목적으로 사용자의 정보를 제 3 자에게 공개, 판매, 임대 또는 배포 할 수 없습니다. 또한 특정 사용자의 동의를 얻지 않는 한 전자 목적 또는 기타 수단을 통해 마케팅 목적으로 정보를 사용할 수 없습니다.

13. 추가 약관
반품 및 취소
판매자는 특정 상황에서 교체, 반품 및 환불을 자동화하는 규칙을 작성할 수 있습니다. 모든 신규 판매자에 대해 반품이 수락되는 제품 목록에서 Dallae는 반품 프로세스를 자동화하는 기본 규칙을 설정합니다. 판매자는 My Dallae 내의 계정 설정에서 반품 선호 사항을 제거하거나 사용자 정의 할 수 있습니다. 반품 또는 교체 요청을 자동으로 수락하도록 설정이되어있는 경우, 구매자에게 Dallae 생성 반품 레이블이 제공됩니다. 귀하는 반품 정책 을 준수 할 것에 동의합니다 .

상품이 반품되면 구매자에게 환불하기 위해 Dallae가 PayPal에 PayPal 계정에서 환불 금액 (동일하거나 다른 통화로)을 제거하도록 요청하고, 금액을 청구서에 기록하고 / 또는 청구합니다 파일에 지불 방법.

설명되지 않은 품목에 대한 반품 비용은 판매자의 책임입니다.

귀하는 (판매자로서) Dallae가 귀하의 송장에 반송 선적 라벨 비용을 넣을 수있는 권한을 부여합니다.

Dallae에서 생성 한 반품 배송 라벨이 사용되며 판매자가 비용을 부담합니다.
반품은 자동화되었습니다.
구매자에게 반송 라벨을 보내지 않고 대신 Dallae에서 생성 한 운송 라벨이 사용됩니다. 및 / 또는
거래가 취소되고 구매자에게 환불을 받으려면 Dallae가 PayPal에 PayPal 계정의 환불 금액 (동일하거나 다른 통화로)을 제거하도록 Dallae에 요청합니다. 자세한 내용 은 거래 취소 를 참조하십시오.
글로벌 배송 프로그램
우리가 Dallae.com과 Dallae의 국제 사이트에서 국제 구매자가 사용할 수있는 Dallae.com 목록을 만들 수있는 방법 중 하나는 Global Shipping Program. 미국에 소재하고 있으며 국제 배송 프로그램을 통해 국제 구매자가 구매 한 적격 품목의 경우 귀하 (구매자)는 구매자로부터 지불 통지를받은 후 미국에 위치한 소포 처리 시설로 품목을 발송합니다. 제 3 자 글로벌 운송 업체 인 Pitney Bowes Inc.는 국제 바이어를 대신하여 물품의 처리, 통관 및 국제 발송을 감독합니다. 구매자가 귀하의 글로벌 운송 프로그램 목록에 관한 질문이있는 경우,이 문제가 Pitney Bowes Inc. (예 : 관습 또는 국제 배송)가 감독하는 서비스와 관련된 경우 구매자에게 Dallae가 직접 응답 할 수 있습니다. Global Shipping Program을 통해 판매하는 경우 추가 비용을 지불하지 않아도됩니다.

미국 수출 관리 규정 및 대외 무역 규정에 따라 라우팅 된 수출 거래에 따라, 귀하의 구매자는 해외 주임 당원으로서 수출 선적에 대한 책임을지는 것에 동의하며, Pitney Bowes Inc.는 구매자의 전달 에이전트 역할을합니다. 귀하는 귀하가 품목에 대해 제공 한 정보의 정확성에 대해 책임을지며 귀하는 추가 정보 요청에 대해 적시에 응답 할 것에 동의합니다.

귀하는 Dallae에서 Pitney Bowes Inc.로, Pitney Bowes Inc.에서 계열사, 서비스 제공 업체 및 기타 제 3 자 (관세 및 수입 등)에 대한 특정 개인 식별 정보 공개 및 목록 작성 및 주문 정보 공개에 동의합니다 당국 및 기타 정부 기관)에 의해 처리되며, 모든 품목의 가공, 수출 및 통관 및 국제 운송과 관련됩니다. Dallae는 Pitney Bowes Inc., 그 계열사 또는 서비스 제공 업체의 개인 정보 보호 정책을 통제하지 않으며 귀하는 해당 당사자의 개인 정보 보호 정책의 적용을받습니다.

피드백을 관리하는 정책, 프로그램을 통해 판매 한 품목에 대한 구매자 보호 요구 사항의 분실, 손상 및 배달 할 수없는 품목의 처리, 반환 및 해결 방법을 포함한 프로그램에 대한 추가 정보는 당사의 Global Shipping Program 에서 찾을 수 있습니다 및 글로벌 출하 FAQ 페이지 .

이베이 머니 백 보증
대부분의 Dallae 판매가 순조롭게 진행되지만 구매에 문제가있는 경우 Dallae Money Back Guarantee는 구매자와 판매자가 의사 소통하고 문제를 해결하는 데 도움이됩니다. 귀하는 정책을 준수하고 Dallae Money Back Guarantee 사례에 대한 최종 결정을 내리는 것에 동의합니다.

귀하가 (판매자로서) 구매자에게 상환하기로 선택했거나 Dallae Money Back Guarantee 하에서 구매자 또는 Dallae에 상환해야하는 경우, 귀하는 PayPal이 귀하의 PayPal로부터 환급 금액을 (동일하거나 다른 통화로) 송장에 금액을 넣거나 지불 방법을 파일로 청구하십시오. 우리가 환급받을 수없는 경우, 우리는 수집 기관을 보유하는 것을 포함하여 다른 수집 메커니즘을 사용하여 미납 ​​액을 징수 할 수 있습니다.

우리는 정책의 적절한 작동에 대한 남용이나 간섭을 의심 할 경우 예고없이 이베이 환불 보증 의 전부 또는 일부를 중지 할 수 있습니다 .

14. 보증 면책. 책임의 한계
우리는 서비스를 안전하고 안전하며 올바르게 작동하도록 유지하려고 노력하지만 서비스의 지속적인 운영이나 서비스에 대한 보장은 할 수 없습니다. Dallae 응용 프로그램의 입찰 업데이트 및 기타 알림 기능은 실시간으로 제공되지 않을 수 있습니다. 이러한 기능은 이베이 (Dallae)가 통제 할 수 없을 정도로 지연 될 수 있습니다.

귀하는 본인의 책임하에 본 서비스를 사용하고 있으며 "있는 그대로"및 "사용 가능한 상태"로 귀하에게 제공되고 있음에 동의합니다. 따라서 적용 가능한 법률이 허용하는 한도 내에서 상품성, 특정 목적에의 적합성 및 비 침해에 대한 묵시적 보증을 포함하여 모든 명시 적 또는 묵시적 보증, 조건을 배제합니다.

또한 해당 법률에서 허용하는 한도 내에서 당사 (당사의 모회사, 자회사 및 계열사, 당사 및 임원, 이사, 대리인 및 직원 포함)는 책임을지지 않으며, 귀하가 손해에 대해 책임지지 않는 데 동의합니다 직접 또는 간접적으로 발생하는 손실 (금전적 손실, 영업권 또는 명성, 이익, 기타 무형의 손실 또는 특수, 간접 또는 파생적 손해를 포함하되 이에 국한되지 않음)

귀하가 서비스를 사용하여 (직접 또는 간접적으로) 제공 한 콘텐츠;
귀하의 서비스 사용 또는 귀하의 무능력;
Dallae에서 제공하는 가격 책정, 배송, 형식 또는 기타 안내
지연 또는 분열;
바이러스 또는 우리의 서비스에 접속하거나 접속하여 얻은 기타 악의적 인 소프트웨어;
결함, 오류 또는 모든 종류의 부정확성에 대해 책임지지 않습니다.
Dallae 서비스 사용으로 인한 하드웨어 장치 손상
당사의 서비스를 사용하여 열거 된 항목을 포함하여 제 3 자의 내용, 행동 또는 부작위 또는 허위 항목의 파괴;
귀하의 계정 또는 위의 불건전 한 Dallae 섹션 위반과 관련하여 취한 정지 또는 기타 조치;
위의 리스팅 조건 섹션에 명시된대로 귀하의 리스팅이 검색 결과에 나타나는 기간 또는 방식. 또는
본 사용자 계약 또는 정책의 변경으로 인해 관행, 내용 또는 행동을 수정해야하거나 비즈니스를 수행하지 못하거나 손실 할 수 있습니다.
일부 관할권에서는 보증 면책 또는 손해 배제를 허용하지 않으므로 그러한 면책 조항 및 예외 사항이 귀하에게 적용되지 않을 수도 있습니다.

이전 단락과 관계없이, 귀하가 책임을지는 것으로 판명 된 경우, 귀하 또는 제 3 자에 대한 귀하의 책임은 다음 중 큰 금액으로 제한됩니다 : (a) 이베이 머니 백퍼센트 보증 금액 Dallae (적용 가능한 판매 세 포함) 및 원래 운송 비용, (b) 분쟁중인 수수료 금액 (총액을 초과하지 않아야하며, 귀하가 청구를 제기하기 전에 조치 한 12 개월 이내에 지불 한 금액) 또는 (c) $ 100.

15. 출시
귀하가 한 명 이상의 사용자와 분쟁이있는 경우, 귀하는 당사 (및 계열사 및 자회사, 당사 및 해당 임원, 이사, 직원 및 대리인)를 모든 종류 및 본성의 청구, 요구 및 손해 (실제 및 결과)로부터 면제합니다 그러한 분쟁과 관련하여 어떤 방식 으로든 발생하거나 알려져 있거나 알려지지 않은 것으로 간주됩니다. 이 보도 자료를 입력함에있어 귀하는이 릴리스에 동의 할 때 귀하가 알고 있거나 존재할 것으로 의심되는 클레임 ​​만 포함하도록 본 릴리스의 적용 범위를 제한하는 (법적 또는 기타) 보호를 명시 적으로 포기합니다.

16. 손해 배상
귀하는 제 3 자에 의한 합당한 법적 수수료를 포함하여 귀하가 요구하거나 제기 한 모든 청구 (요구)로부터 당사의 계열사 및 자회사 및 당사의 임원, 이사, 직원, 대리인 등을 면책하고 보류하게됩니다 본 이용 약관 위반, 귀하의 부적절한 Dallae 서비스 이용 또는 법률 위반 또는 제 3 자의 권리 침해에 대한 책임을지지 않습니다.

17. 법적 분쟁
이 섹션을주의 깊게 읽으십시오. IT는 귀하의 권리에 영향을 미치며 귀하의 이의 제기에 대한 중대한 영향을 미치며 EB는 각각의 다른 문제를 해결할 것입니다.

귀하와 이베이는 귀하와 이베이 (귀하와 제 3 자 이베이의 대리인 사이의 청구 또는 분쟁 포함)간에 발생했거나 발생할 수있는 법률 또는 형평법상의 손해 또는 분쟁 이 사용자 계약서의 이전 버전 또는이 버전에서 서비스 사용 또는 액세스, Dallae 또는 그 대리인 또는 서비스를 통해 판매되거나 구매 된 제품 또는 서비스의 행위는 명시된 조항에 따라 해결됩니다 이 법적 분쟁 조항에

가. 적용 법률
귀하는 연방법에 위배되거나 연방법에 의거하여 배제 된 경우를 제외하고, 법률의 충돌 원칙에 관계없이 유타주의 법률이 본 사용자 계약 및 귀하 사이에서 발생하거나 제기 될 수있는 모든 주장 또는 분쟁을 규율한다는 데 동의합니다 귀하 및 이베이 (본 사용권 계약서에 달리 명시된 경우 제외).

B. 중재 합의
귀하와 이베이 (Dallae)는 각각 귀하와 이베이 (귀하와 제 3 자의 이베이 대리인 사이의 분쟁 또는 클레임 ​​포함)간에 발생하거나 발생할 수있는 모든 분쟁 또는 클레임이 서비스 이용 또는 액세스, Dallae 또는 그 대리인의 행동, 서비스를 통해 판매, 제공 또는 구매 한 제품 또는 서비스는 최종 및 구속력있는 중재를 통해 독점적으로 해결됩니다 법정보다는 오히려. 또는 청구가 자격이 있고 해당 법원에 남아 있고 개인 (비 계급, 비 대표) 기준으로 만 진행되는 경우 소액 청구 법원에서 청구를 주장 할 수 있습니다. 연방 중재법 (Federal Arbitration Act)은 중재에 관한 본 계약의 해석 및 집행을 규율합니다.

종류 및 대표 행동 금지 및 비 개별화 구제
귀하와 Dallae는 각각의 피고용인 또는 일반 대리인이 아닌 일반 개인이나 일반 종업원이 아닌 개별적인 기준에 따라 다른 사람에 대한 배상을 청구 할 수 있다는 것에 동의합니다. 귀하와 이베이가 달리 동의하지 않는 한, 중재자는 한 사람 또는 다른 당사자의 클레임을 통합하거나 조인하지 않을 수 있으며, 연결, 대표, 계급 또는 사법권 일반 행동 또는 진행 중 어떤 형태로든 다른 식으로 보지 않을 수 있습니다. 또한, 중재자는 개별 당사자의 개별적인 구제 조치에 찬성하여, 그리고 그 당사자의 개별 청구 (S)에 의해 요구되는 구제책을 제공하기 위해 필요한 경우에만 중재 판정 (금전상의 징계, 면책 특권 및 면책 특권 포함)을 수여 할 수 있습니다. 다른 사람에게 어떤 보상도 주어지지 않습니다.법원이 해당 법률이 구제를위한 특정 클레임에 대한 본 단락의 제한 사항의 시행을 배제한다고 결정하면 해당 청구 (및 해당 청구)만이 중재에서 분리되어야하며 귀하와 이베이의 법원의 결정에 항소 할 권리가 있습니다. 다른 모든 청구는 중재됩니다.

중재 절차
중재는 법정 소송보다 더 비공식적입니다. 중재는 판사 또는 배심원 대신 중립적 인 중재자를 사용하며, 중재 판정에 대한 법원의 검토는 매우 제한적입니다. 그러나 중재인은 법원이 개인에게 수여 할 수있는 개인별로 동일한 손해 및 구제책을 수여 할 수 있습니다. 중재인은 법원이 사용자 동의서의 조항을 적용해야합니다. 모든 문제는 중재 판정, 중재 판정에 대한이 협정의 범위 또는 집행 가능성 또는 중재 판정을위한이 협정 제 1 조의 해석과 관련한 문제를 제외하고는 중재인이 결정할 문제입니다 ( "집단 대표 및 대표 행동 금지 및 비 개별화 구제 ")는 관할권있는 법원이 결정할 것입니다.

중재는이 협정에 의해 중재를 위해 수정 된 AAA의 소비자 중재 규칙 (해당되는 경우)을 포함하여 미국 중재 협회 ( "AAA")의 규칙 및 절차에 따라 수행됩니다. AAA의 규정은 www.adr.org에서 확인 하거나 AAA (1-800-778-7879)로 전화하십시오. 이 조항에서 "중재자"라는 단어를 사용하는 것은 둘 이상의 중재인이 중재를 관장하는 것을 금지하는 것으로 해석되어서는 안됩니다. 오히려 AAA의 규칙은이 협정에 따라 중재에 대한 중재를 관할 할 중재자의 수를 결정합니다.

중재를 요청하려는 당사자는 먼저 공인 우편으로 분쟁 해결 통지서 ( "통지")를 다른 사람에게 발송해야합니다. 양식을 다운로드 할 수 있습니다. 알림 . 이베이에 대한 통지는 이베이 (Dallae Inc.)에 제출되어야합니다 : 이의 제기 : 소송 부, Re : 분쟁의 통지, 583 W. 이베이 웨이, 드레이퍼, UT 84020. 이베이는 귀하에게 관련된 파일 당신의 Dallae 계정으로; 귀하의 실제 주소를 최신으로 유지하는 것은 귀하의 책임입니다. 당사자가 주장하는 클레임의 성격과 근거에 대한 설명과 구제 조치를 포함하여 통지문에서 요구되는 모든 정보가 제공되어야합니다.

귀하와 이베이가 통지서를 보낸 후 30 일 이내에 통지서에 설명 된 클레임을 해결할 수없는 경우, 귀하 또는 이베이는 중재 절차를 시작할 수 있습니다. 중재 절차를 시작하기위한 양식은 www.adr.org의 AAA 사이트에서 이용 가능합니다. 이 양식을 규칙 및 절차에 따라 AAA에 제출하는 것 외에도 중재를 시작한 당사자는 완성 된 양식의 사본을 상대방에게 우송해야합니다. 다음 주소로 Dallae에 사본을 보낼 수 있습니다 : Dallae, Inc. c / o CT Corporation System, 1108 E South Union Ave., Midvale, UT 84047. Dallae가 귀하에 대한 중재를 개시하는 경우, 작성된 양식을 귀하의 Dallae 계정과 관련된 파일에있는 실제 주소로 보내주십시오. 귀하 또는 Dallae가 행한 합의 제안은 중재인에게 공개되지 않습니다.

중재 심리는 귀하가 거주하는 카운티 또는 상호 합의한 다른 장소에서 개최됩니다. 구제 금액이 $ 10,000 이하인 경우, 귀하 또는 이베이는 중재자가 전화로 또는 서면 제출에만 근거하여 중재를 선택하도록 선택할 수 있습니다. 선거는 중재자의 재량에 따라 인 - 상황이 보증하는 경우 사람의 청력. 직접적인 청문회가 개최되는 경우, 귀하 및 / 또는 Dallae는 중재자가 별도로 요구하지 않는 한 전화로 참석할 수 있습니다.

중재자는 공평한 원칙을 포함하여 관련법에 따라 모든 청구의 내용을 결정하고 법으로 인정되는 모든 특권 청구를 존중합니다. 중재자는 다른 사용자와 관련된 사전 중재 판결에 구속되어서는 안되며 관련 법에서 요구하는 범위 내에서 동일한 Dallae 사용자가 관련된 사전 중재 판결에 구속됩니다. 중재자의 판정은 최종적이며 구속력을 가지며 중재인이 내린 판정에 대한 판단은 해당 법원의 관할권이있는 법원에 제출 될 수 있습니다.

중재 비용
모든 중재, 행정 및 중재자 수수료 지불은 본 합의서에 달리 규정하지 않는 한 중재 판정 규칙에 따라 결정됩니다. 구제 금액이 $ 10,000 이하인 경우, 귀하의 요청에 따라 Dallae는 중재와 관련된 모든 서류, 행정 및 중재자 수수료를 지불하게됩니다. Dallae에 의한 수수료 납부 요청은 귀하의 중재 요구와 함께 AAA에 우편으로 제출해야하며 Dallae는 필요한 모든 비용을 AAA에 직접 지불 할 준비를합니다. (a) 위에서 논의한 분쟁의 통지 요건을 준수하지 않거나 (b) 중재인이 경솔하다고 주장하는 주장을 중재인이 결정한 경우,

분리 가능성
중재에 관한이 협정 제 1 조 ( "계급 및 대표 행동 및 비 개인화 된 구제의 금지") 조항을 제외하고 중재인 또는 법원이 중재 합의서의 일부가 무효이거나 이행 할 수 없다고 결정하는 경우 ,이 중재 합의서의 다른 부분은 여전히 ​​적용됩니다.

탈퇴 절차
귀하가 저희 서비스의 신규 사용자 인 경우, 귀하는 서면 약정 통지서 ( "탈퇴 통지서")를 발송함으로써이 계약을 거부 ( "탈퇴") 할 수 있습니다. 사전에 사용자 동의서에 동의 한 날로부터 30 일 이내에 미리 알림을 보내야합니다. Dallae INC., ATTN : 퇴각 소, RE : 퇴장 통지서, 583 WEST Dallae WAY, UT, 84020 항의 통지서를 발송해야합니다.

귀하의 편의를 위해, 우리는 Opt-Out Notice 양식을 제공하고 있습니다 . 귀하는 중재 합의서에 동의하지 않으려면이를 작성하여 우송해야합니다. 탈퇴 통지 양식은 귀하의 이름, 주소 (주소, 도시, 주 및 우편 번호 포함), 사용자 ID 및 이메일 주소 등 양식에 요구되는 정보를 제공해야합니다. 수신 거부가 적용되는 Dallae 서비스 계정과 연결됩니다. 효과적이기 위해서는 탈퇴 통지서에 서명해야합니다. 이 절차는 귀하가 중재 합의를 거부 할 수있는 유일한 방법입니다. 귀하가 중재 합의를 거부하는 경우, 본 사용자 계약서 및 법률 분쟁 담당 부서의 다른 모든 부분은 계속해서 귀하에게 적용됩니다. Arbitrate에 대한이 계약의 탈퇴는 귀하가 당사와 함께 할 이전, 다른 또는 향후의 중재 합의에 아무런 영향을 미치지 않습니다.

중재 합의에 대한 향후 개정안
사용자 계약서의 어떠한 조항에도 불구하고 귀하와 우리는 향후 본 계약서의 수정안 (본 계약에서 명시된 통지 주소 또는 사이트 링크의 개정안 제외)을 적용하지 않을 것에 동의합니다. 수정안의 발효 일 이전에 Dallae에 대한 법적 소송에서 제기 된 모든 청구 이 개정안은 귀하와 Dallae간에 발생했거나 발생할 수있는 중재 합의서가 적용되는 기타 모든 분쟁 또는 클레임에 적용됩니다. 당사는 귀하가 개정 된 효력 발생 일 최소 30 일 전에 www.Dallae.com에 개정 된 조항을 게시하고 Dallae 메시지 센터 및 / 또는 전자 메일을 통해 통지함으로써 중재에 대한 본 계약의 개정을 통보합니다. 이 개정 된 조항에 동의하지 않으면,

C. 법적 분쟁을위한 사법 포럼
귀하와 당사가 달리 합의하지 않는 한, 위의 중재 합의서가 귀하 또는 특정 권리 또는 분쟁에 적용되지 않는 것으로 판결 된 경우, 중재 판정에 대한 귀하의 결정 또는 그 결과로 중재인이나 법원 명령의 결정에 대해 귀하와 Dallae간에 발생했거나 발생할 수있는 모든 주장이나 분쟁은 유타 주 솔트 레이크 카운티에 위치한 주 법원이나 연방 법원에서만 해결해야한다는 데 동의합니다. 귀하와 이베이는 그러한 모든 주장이나 분쟁을 소송 할 목적으로 유타 주 솔트 레이크 카운티에 위치한 법원의 개인 관할권에 복종하는 것에 동의합니다.

18. 일반
본 사용자 계약서에 달리 규정 된 경우를 제외하고, 본 사용자 계약서의 어떤 조항이 무효이거나 효력이 발생하는 이유가있는 경우, 그러한 조항은 철회되며 나머지 조항의 유효성 및 집행 가능성에 영향을 미치지 않습니다. 우리의 단독 재량에 따라, 우리는 본 사용자 계약서를 양도 할 수 있으며, 그러한 경우에는 www.Dallae.com에 공지를 게시합니다 .

제목은 참고 목적으로 만 사용되며 해당 섹션의 범위 또는 범위를 제한하지 않습니다. 귀하 또는 타인에 의한 위반과 관련하여 행동하지 않은 것이 후속 또는 유사한 위반에 대해 행동 할 수있는 권리를 포기하는 것은 아닙니다. 우리는이 사용자 계약의 모든 위반에 대해 조치를 취할 것이라고 보장하지 않습니다.

당사는 www.Dallae.com에 개정 된 조건을 게시함으로써 언제든지 본 사용자 계약서를 수정할 수 있습니다. 사용자 계약을 수정할 수있는 우리의 권리에는 사용자 계약에서 조건을 수정, 추가 또는 제거 할 수있는 권리가 포함됩니다. 수정 된 조건을 게시하여 30 일 전에 통보 해드립니다. 또한, 우리는 Dallae 메시지 센터 및 / 또는 이메일을 통해 귀하에게 통보 할 것입니다. 귀하가 계속해서 서비스에 액세스하거나 사용하면 수정 된 조항을 수락하는 것으로 간주됩니다. 또한 전자 클릭 연결을 통해 사용자 계약에 동의 함을 인정할 수도 있습니다. 이 사용자 계약은 귀하와이 사용자 계약을 개정하고자하는 이베이 (Dallae) 대리인의 상호 합의를 거치지 않고 수정안에 동의 할 권한이있는 경우를 제외하고는 달리 개정 할 수 없습니다.

서비스에 게시 된 정책 및 조건은 수시로 변경 될 수 있습니다. 변경 사항은 당사가 Dallae 서비스에 게시 할 때 적용됩니다.

사업체를 대신하여 계정을 만들거나 사용하는 경우 귀하는 그러한 사업을 대신하여 행동하고이 사용자 계약서에 사업을 구속 할 수있는 권한이 있음을 나타냅니다. 그러한 계좌는 사업체가 소유하고 관리합니다. 본 에이전시 계약에는 에이전시, 파트너십, 합작 투자, 직원 - 고용주 또는 프랜차이즈 - 프랜차이즈 관계가 의도되거나 생성되지 않습니다.

당사의 서비스를 통해 게시 된 사용자 계약 및 모든 조건 및 정책은 귀하와 이베이 간의 완전한 이해 및 계약을 명시하고 당사자의 모든 이전 이해 및 계약을 대체합니다.

다음 조항은 본 사용자 계약의 해지 후에도 존속합니다 : 요금, 내용, 보증의 면책; 책임의 제한; 릴리스, 면책, 법적 분쟁 및 일반.

귀하가 Cal에 따라 캘리포니아 거주자 인 경우. Civ. 코드 §1789.3을 통해 불만 사항을 캘리포니아 주 소비자 서비스 부서의 소비자 서비스 부서의 고소 지원 부서에 서면으로 400 R Street, Sacramento, CA 95814 또는 전화 (800) 952- 5210.

일리노이 사건 티켓과 관련된 거래의 경우, 구매자와 판매자는 규칙과 절차에 따라 미국 중재 협회 ( "AAA")에 불만 사항을 제출할 수 있습니다. 815 ILCS 414 / 1.5 (c) AAA의 규칙은 www.adr.org 에서 확인할 수 있습니다 . 이러한 불만은이 사용자 계약에 따라 독립적 인 중재자가 결정합니다. 구매자와 판매자는 일리노이 주에서 열리는 티켓 행사와 관련된 불만을 제기하기 위해 일리노이 주 관할권에 더 동의합니다.
 </textarea>
						<!-- 약관내용 콜랍스축소 -->


					</div>
				</div>


				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">약관
						동의</label>

					<div class="col-sm-10" style="margin-top: -7px;">

						<div class="checkbox">
							<label class="checkbox-inline"> <input type="checkbox"
								name="agree" onClick="agreeCheck(this.form)"> 체크하심으로
								회원가입을 완료하실 수 있습니다.

							</label>
						</div>
					</div>
				</div>
				<!-- 버튼 -->

				<!-- ------------------------------------ -->




				<hr>
				<div id="sign-up_btn">
					<input class="btn btn-default btn-lg btn-block" type="button"
						name="checkButton" value=" 확 인 " disabled onclick="save()">
				</div>
			</form>

		</div>



	</div>




	<script>


function save(){

	var signupName = document.querySelector('#signupName').value;
	var signupId = document.querySelector('#signupId').value;
	var signupPassword = document.querySelector('#signupPassword').value;
	var signupNickName = document.querySelector('#signupNickName').value;
	var signupEmail = document.querySelector('#signupEmail').value;
	var signupPhone = document.querySelector('#signupPhone').value;
    var setChk = "";
    if(document.querySelector('#beauty').checked) {
     setChk += "미용,";
    }
    if(document.querySelector('#machine').checked) {
     setChk += "전자기기,";
    }
    if(document.querySelector('#life').checked) {
     setChk += "생활,";
    }
    setChk = setChk.substr(0, setChk.length-1);
	var valis = document.querySelectorAll('*[data-vali]');
	
	valis.forEach((e) => {
		var length = e.getAttribute('data-vali');
		
		if(e.value.trim().length < length){
			e.focus();
			alert(e.id + '는 ' + length + '이상입니다.');
			return false;
		}
	});


	
	var conpassword = document.querySelector("#conpassword").value;
	var front = document.querySelector("#front").value;
	var end = document.querySelector("#end").value;
	

	
	var identify =front+end;
	if(signupPassword.trim()!==conpassword.trim()){
		alert("비밀번호가 다릅니다.");
		var passfocus =document.querySelector('#password');
		passfocus.focus();
	}else{
	 
		  
		
		
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupEmail:signupEmail,signupNickName:signupNickName,signupPhone:signupPhone,
				  signupPersonallity:identify,signupConcern:setChk};
	 params = JSON.stringify(params); 
	
		var conf = {
				url : '/SignUp',
				method :'POST',
				param : params,
				success:function(res){
					if(res==1){
						alert('회원가입이 완료 되셨습니다.');
						location.href="/";
					};  
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
		 
	
		
}
	
}
</script>
</body>
</html>




