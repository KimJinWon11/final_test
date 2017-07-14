<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<input type="button" value="전달" id="before"> </a><span>${year }/${month}</span><input type="button" value="다음달" id="after">
<form action="productInsert" method="get">
  거래처명 : <input list="outsourcings" name="outsourcing" id="outname">
  <datalist id="outsourcings">
  
  </datalist>
  
  제품명 : <input list="items" name="item" id="itemname">
  <datalist id="items">
  <c:forEach items="${list}" var="dto">
    <option value="${dto.item }">
  </c:forEach>
  </datalist>
  
단가 : <input type="number" name="price" id="price">
  
수량 : <input type="number" name="count" id="count">
    
총액 : <input type="number" readonly="readonly" id="total_price" name="total_price">
  
  
  
  <input type="submit" value="입력">
</form>

<div>
<table class="table">
<tr>
	<td>거래처</td><td>제품명</td><td>단가</td><td>수량</td><td>총액</td><td>재고량</td><td>등록일</td>
</tr>
<c:forEach items="${list}" var="dto">

<tr>
	<td>${dto.outsourcing }</td><td>${dto.item }</td><td>${dto.price }</td><td>${dto.count }</td><td>${dto.total_price}</td><td>${dto.total_count}</td><td>${dto.in_date }</td>
</tr>     

</c:forEach>
</table>

</div>


</body>
<script type="text/javascript">

$(function(){
	$.ajax({
		url:"./outsourcingList",
		type:"get",
		dataType:"JSON",
		success:function(data){
			
			
			var option = "";
			for(var i =0; i<data.list.length; i++){
				option = option+'<option value="'+data.list[i].outsourcing+'">'
				
			}
			$("#outsourcings").html(option);
			
		}
	});	
	
});

$("#before").click(function(){
	var year = ${year};
	var month = ${month}-1;
	
	location.href="./productList?y="+year+"&m="+month;
});

$("#after").click(function(){
	var year = ${year};
	var month = ${month}+1;
	
	location.href="./productList?y="+year+"&m="+month;
});

$("#outname").change(function(){
	var outsourcing = $("#outname").val();
	
 	$.ajax({
		url:"./itemList",
		type:"get",
		data:{outsourcing:outsourcing},
		dataType:"JSON",
		success:function(data){
			
			
			var option = "";
			for(var i =0; i<data.list.length; i++){
				option = option+'<option value="'+data.list[i].item+'">'
				
			}
			$("#items").html(option);
			
		}
	}); 
	
});

$("#count").change(function(){
	mul();
});
$("#price").change(function(){
	mul();
});

function mul() {	
	var count = $("#count").val()*1;
	var price = $("#price").val()*1;
	var mul = count*price;
	$("#total_price").val(mul);
}

</script>

</html>