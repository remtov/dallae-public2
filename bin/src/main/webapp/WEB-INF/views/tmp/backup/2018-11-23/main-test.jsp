<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<style>
h4 {
   margin-bottom: 20px;
}
</style>

</head>
<body>
   <div class="view-container">
      <div class="container">
         <div class="inner-box">

            <c:set var="now" value="<%=new java.util.Date()%>" />
            <c:set var="productEndDate" value="${product.productEndDate}" />


    			<fmt:formatDate value="${currentTime }" pattern="yyyyMMddHHmmss" var="currentTime" />
				<fmt:parseDate var="productEndTime" value="${product.productEndDate}" pattern="yyyyMMddHHmmss" />
				
				
				
            <fmt:formatDate var="today" value="${now}" pattern="yyyyMMddHHmmss" />
            <fmt:formatDate var="today" value="${now}"  />

     
            <h3>
               경매 보기 <small><a href="#" style="color: gray;"> </a></small>
            </h3>
            <h3>${product.productCategory}><b>${product.productName} </b><small><font
                  color="red"> 마감시까지 ${productEndDate-today} 남았습니다. </font></small>
            </h3>


            <div style="overflow: auto;">
               <div style="width: 100%; float: left;">
                  <div class="fileBox">
                     <img style="width: 100%"
                        src="/resources/img/product/${product.productImage}"
                        id="preview">
                  </div>

               </div>
            </div>




            <div style="overflow: auto; margin-top: 10px;">
               <div style="float: left;">
                  <img style="width: 50px; height: auto;"
                     src="/resources/img/icon_profile.png">
               </div>

               <div style="margin-left: 10px; float: left;">
                  <p>
                     <a style="font-size: 1.2em;"
                        href="/userinfo_my-page/${product.userNumber}">판매자 ID : <b>${product.userId}</b>
                        님의 페이지로 가기
                     </a> <br> 게시물 번호: ${product.productNumber} <br>





                  </p>
               </div>
               <div style="float: right;">
                  <span style="font-size: 0.8em;">판매자 신용등급 (최고LV 10) : </span><span
                     style="font-size: 1.5em; color: #f4969b;"> LV
                     ${product.userCreditLevel} </span> <img src="/resources/img/icon-level-1.png"
                     style="width: 50px; height: auto;">
               </div>

            </div>

            <hr style="clear: both;">

            <h3>
               <span class="label label-info">판매중</span>
            </h3>


            <h3>${product.productName}</h3>
            <p>상태 : ${product.productCondition} | 등록일 :
               ${product.productDate}</p>


            <p>시작가 : ${product.productLowestPrice} 원</p>

            <p>${product.productDesc}</p>



            <p>
               제품수량 : <b>${product.productQuantity}</b> 개<br> 브랜드명 :
               ${product.productBrand}
            </p>

            <c:set var="userId" value="${userlogininfo.userId}"></c:set>
            <c:set var="userLevel" value="${userlogininfo.userLevel}"></c:set>
            <c:choose>
               <c:when test="${userLevel>2.5||userId==product.userId}">
                  <!-- 관리자이거나 해당본인일경우 -->
                  <button class="btn btn-default btn-lg" type="button"
                     onclick="updateBtn(${product.productNumber})">수정</button>

               </c:when>
               <c:otherwise>
               </c:otherwise>
            </c:choose>
         </div>
         <%@ include file="/WEB-INF/views/common/content-final.jspf"%>
      </div>
   </div>


   <%@ include file="/WEB-INF/views/product/product-bottom.jspf"%>
   <script>
      function updateBtn(productNumber) {
         location.href = '/productupdate/' + productNumber;
      }
   </script>
</body>
</html>