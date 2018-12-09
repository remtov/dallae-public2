<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
div { /* border: 3px solid red; */
	
}

hr {
	clear: both;
}
</style>
<script src="/resources/js/AjaxUtil.js"></script>

<script>
var kk=0;
window.addEventListener('load', loadba)

function loadba() {
	kk++;
	var params = {startNum:(kk-1)*8+1,endNum:kk*8}
	params = JSON.stringify(params);
	  var au = new AjaxUtil({
	    url: '/productcategorymotorpartzlist',
	    param : params,
	    method : 'POST',
	    success: function(res) {
	      res = JSON.parse(res); 

	      var html = '';
	      for (var i = 0; i < res.length; i++) {
	        if (i % 4 == 0) {
	          html += '<div class="row">';
	        };
	        html += '<div class="col-sm-6 col-md-3">';
	        html += '<div class="thumbnail">';
	        html += '<a onclick="goPage(' + res[i].productNumber + ')"><img style="width:100%;" alt="sell-img" src="/resources/img/product/';
	        
			var imgs = res[i].productImage;
			var img = imgs.split('|');
			 
			html += img[0];
			html += '" onError="this.src=\'/resources/img/icon-img.png\'"></a>';
	        html += '<div class="caption" style="overflow: hidden; text-overflow: ellipsis;">';
	        html += '<h3>' + res[i].productName + '</h3>';
	        html += '<h4>시작가격 : ' + res[i].productLowestPrice + ' 원</h4>';
	        html += '<h4>현재가격 : ' + res[i].productLowestPrice * 3 / 2 + ' 원</h4>';
	        html += '<p>제품브랜드 : ' + res[i].productBrand + ' | 판매자 : ' + res[i].userId + ' | 제품수량 : ' + res[i].productQuantity + ' | 분류 : ' + res[i].productCategory + ' | 신용등급 : ' + res[i].userCreditLevel + ' | 등록일 : ' + res[i].productDate + ' | 마감일 : ' + res[i].productEndDate + '</p>';
	        html += '<div style="height:50px;overflow:hidden;">'
	        html += '<p>' + res[i].productCondition + '</p>';
	        html += '</div>'
	        html += '<div style="height:60px;overflow:hidden;">'
	        html += '<p>' + res[i].productDesc + '</p>';
	        html += '</div>'
	        html += '<p style="margin-top:10px;"><a href="#" class="btn btn-primary" role="button">입찰하기</a>';
	        html += '<a style="margin-left:10px;" href="#" class="btn btn-default" role="button" onclick="goPage(' + res[i].productNumber + ')">더보기</a></p>';
	        html += '</div></div></div>';
	        if (i % 4 == 3) {
	          html += '</div>';
	        }
	      }
	   
	      document.querySelector('#product-div').insertAdjacentHTML('beforebegin', html);
	    }
	  });
	  au.send(); 
	};

	$(window).scroll(function(){  
	    if($(window).scrollTop() >= $(document).height() - $(window).height()){
	       loadba();
	    } 
	});
	</script> 
	</head>
<body>
<%@ include file="/WEB-INF/views/common/head.jspf"%>
	<div class="view-container">
		<div class="container">
			<div class="inner-box">

				<ol class="breadcrumb2">
					<li><a href="/">home</a></li>
					<li class="active">motor-partz</li>
				</ol>

				<div id="product-div"></div>
			</div>
		</div>
	</div>


	<%@ include file="/WEB-INF/views/common/footer.jspf"%>
	<script>
		function goPage(productNumber) {
			location.href = '/product/' + productNumber;
		}
	</script>
<%@ include file="/WEB-INF/views/common/bottom.jspf"%>
</body>
</html>