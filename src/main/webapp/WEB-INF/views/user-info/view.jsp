<!-- 백엔드
-올린사람, 올린장소, 신용도(매너점수) 출력될수있도록한다
-입찰중인지 입찰종료되었는지 배송중인지 결제중이라던지 상태볼수있는 데이터베이스 컬럼필요한듯?

프론트엔드
 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>정보 수정 페이지</title>
<style>
h1 {
	margin-top: 70px;
}

th {
	text-align: right;
}

tr {
	/* border: 1px solid black; */
	height: 50px;
}

td {
	
}

table {
	margin-bottom: 50px;
}

.view-container .container {
	max-width: 800px;
}

.view-container .container>div {
	text-align: center;
	margin-bottom: 50px;
}

#view_btn-tr{
height:100px;
}
</style>

</head>
<body>
	<div class="view-container">
		<div class="container">
			<div>
				<h1>회원정보 수정</h1>
				<p>
					이전페이지로 돌아 가시겠습니까? <a onclick="Back()">돌아가기</a>
				</p>

			</div>





			<table>
				<c:set value="${getOne}" var="li" />
				<tr>
					<th class="col-md-2">회원 번호</th>
					<td colspan="2" class="col-md-10" id="signupNum"><input
						class="form-control" type="text" id="signupNum"
						value="${li.signupNum}" disabled></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 이름</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupName" value="${li.signupName}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원id</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupId" value="${li.signupId}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 비밀번호</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupPassword" value="${li.signupPassword}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 별명</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupNickName" value="${li.signupNickName}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 email</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupEmail" value="${li.signupEmail}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원가입 일자</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupDate" value="${li.signupDate}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 관심사</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupConcern" value="${li.signupConcern}"></td>
				</tr>
				<tr>
					<th class="col-md-2">회원 주민등록번호</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupPersonallity"
						value="${li.signupPersonallity}"></td>
				</tr>

				<tr>
					<th class="col-md-2">회원폰번호</th>
					<td colspan="2" class="col-md-10"><input class="form-control"
						type="text" id="signupPhone" value="${li.signupPhone}"></td>
				</tr>


				<tr id="view_btn-tr">
					<th class="col-md-2"></th>
					<td class="col-md-5">

						<button class="btn btn-default btn-lg btn-block" type="button"
							onclick="Update()">수정</button>

					</td>
					<td class="col-md-5">

						<button class="btn btn-danger btn-lg btn-block" type="button"
							onclick="Delete()">주의! 데이터가 삭제됩니다.</button>

					</td>

				</tr>



			</table>
			<div></div>
		</div>
	</div>
	<script>
function Back(){
	location.href="/url/SignUp:Admin"
}


function Delete(){ 
			var conf = {
					url : '/Delete/' + ${li.signupNum},
					method : 'DELETE',
					success : function(res){
						if(res!==1){					  
							alert('성공');
							location.href='/url/SignUp:Admin';
					}
				}
		}
			
			var au = new AjaxUtil(conf);
			au.send();
}
function  Update(){
	var signupNum = document.querySelector('#signupNum').value;
	var signupName = document.querySelector('#signupName').value;
	var signupId = document.querySelector('#signupId').value;
	var signupPassword = document.querySelector('#signupPassword').value;
	var signupNickName = document.querySelector('#signupNickName').value;
	var signupEmail = document.querySelector('#signupEmail').value;
	var signupDate = document.querySelector('#signupDate').value;
	var signupConcern = document.querySelector('#signupConcern').value;
	var signupPersonallity = document.querySelector('#signupPersonallity').value;
	var signupPhone = document.querySelector('#signupPhone').value;
	
	var params={signupName:signupName,signupId:signupId,signupPassword:signupPassword,signupNickName:signupNickName,signupEmail:signupEmail,signupDate:signupDate,signupConcern:signupConcern,signupPersonallity:signupPersonallity,signupPhone:signupPhone};
	 params = JSON.stringify(params); 

		var conf = {
				
				url : '/updatevil/'+ ${li.signupNum},
				method :'PUT',
				param : params,
				success:function(res){
					if(res==1){
						alert("성공하였습니다.");
						location.href="/SignUpView/"+${li.signupNum};
					}
				}
		
		};
		var au = new AjaxUtil(conf);
		au.send();
		
}

</script>
</body>
</html>