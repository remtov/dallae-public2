<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>Insert title here</title>
</head>
<body>
<form>
<div class="bidding">
<button style="float: right;" class="btn btn-primary btn-lg"
type="button" data-update>입찰 하기</button>
</div>
</form>
<script>
setInterval(function(){
	var html ='';
	$.ajax({
		url : '/bidding'+${product.productNumber},
		type : 'GET',
		success : function(res){
			var biddingDate = res.biddingDate.split('|');
			var biddingId = res.biddingId.split('|');
			var max =biddingId.length;
			for(var i=0;i<max;i++){
				html='<div><div style="width:100px;float:left;">'biddingDate[i]'</div><div style="width:100px;float:left;">'res.biddingId[i]'</div><br></div>';
			}
			
			document.querySelector('.bidding').insertAdjacentHTML('afterbegin', html);
		}
	});
},500);
$('[data-update]').click(function()){
	$.ajax({
		url : '/biddingudt'+${product.productNumber},
		type : 'PUT',
		success : function(){
			alert('입찰에 성공하셨습니다');
		}
	});
}

</script>
</body>
</html>