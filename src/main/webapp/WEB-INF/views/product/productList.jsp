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

<form action="productInsert" method="get" id="infrm">
  거래처명 : <input list="outsourcings" name="outsourcing" id="outname">
  <datalist id="outsourcings">
  
  </datalist>
  
  제품명 : <input list="items" name="item" id="itemname">
  <datalist id="items">
  
  </datalist>
  
단가 : <input type="number" name="price" id="price">
  
수량 : <input type="number" name="count" id="count">
    
총액 : <input type="number" readonly="readonly" id="total_price" name="total_price">

입고일 : <input type="date" name="r_date" id="r_date">

  
  
  <input type="button" id="insertbtn" value="입력">
</form>
<br>
<div>
<form action="productList" id="searchfrm">

 거래처명 : <input list="searchout" name="outsourcing" id="searchoutname" value="${productDTO.outsourcing}">
  <datalist id="searchout">
  
  </datalist>
  
  제품명 : <input list="searchitems" name="item" id="searchitemname"  value="${productDTO.item}">
  <datalist id="searchitems">
 
  </datalist>

<button>검색</button>
<input type="button" id="datebtn" value="월별 검색">
<input type="hidden" name="y" id="y" value="${year }">
<input type="hidden" name="m" id="m" value="${month}"> 

<input type="button" value="전달" id="before"> </a><span>${year }/${month}</span><input type="button" value="다음달" id="after">

</form>

</div>

<div>

<table class="table">
<tr>
	<td>거래처</td><td>제품명</td><td>단가</td><td>수량</td><td>총액</td><td>재고량</td><td>등록일</td><td>입고일</td><td></td>
</tr>

<c:forEach items="${list}" var="dto">

<tr id="${dto.num}">
	
	<td>${dto.outsourcing }</td><td>${dto.item }</td><td>${dto.price }</td><td>${dto.count }</td><td>${dto.total_price}</td><td>${dto.total_count}</td><td>${dto.in_date }</td><td>${dto.r_date }</td><td><input type="button" class="updateform" value="수정" title="${dto.num}"></td>
	
</tr>     

</c:forEach>
</table>

</div>


</body>
<script type="text/javascript">

$(function(){
	
	
	//db의 outsourcing의 리스트를 보여줌
	$.ajax({
		url:"./outsourcingList",
		type:"get",
		dataType:"JSON",
		success:function(data){
			
			
			var option = "";
			for(var i =0; i<data.list.length; i++){
				option = option+'<option value="'+data.list[i].outsourcing+'">';
				
			}
			$("#outsourcings").html(option);
			$("#searchout").html(option);
			
		}
	});	
	$.ajax({
		//search기능에서  db의 item리스트를 보여줌
	
		url:"./sitemList",
		type:"get",
		dataType:"JSON",
		success:function(data){
			
			
			var option = "";
			for(var i =0; i<data.list.length; i++){
				option = option+'<option value="'+data.list[i].item+'">';
				
			}
			$("#searchitems").html(option);
			
		}
	});	
	
});
$("#insertbtn").click(function(){
	var outsourcing = $("#outname").val();
	var item = $("#itemname").val();
	var count = $("#count").val();
	var price = $("#price").val();
	var r_date = $("#r_date").val();
	if(outsourcing==""||item==""||count==""||price==""||r_date==""){
		
		alert("모든값을 입력하세요");
	}else{
		$("#infrm").submit();
	}
});

var i=0;

$(".table").on("click",".updateform",function(){		
		
		var num = $(this).attr("title");
		if(i==0){
			i=1;
		$.ajax({
			url:"./beforeData?num="+num,
			type:"get",
			dataType:"JSON",
			success:function(data){				
				
		
				
		$("#"+num).html('<td><input type="text" id="uoutsourcing" value="'+data.beforeData.outsourcing+'" ></td><td><input type="text" id="uitem" value="'+data.beforeData.item+'" ></td><td><input type="number" id="uprice" value="'+data.beforeData.price+'" ></td><td><input type="number" value="'+data.beforeData.count+'" id="ucount"></td><td><input type="number" readonly="readonly" id="utotal_price" value="'+data.beforeData.total_price+'"></td><td></td><td></td><td><input type="date" id="ur_date" value="'+data.beforeData.r_date+'" ></td><td><input type="button" value="수정하기" class="updatebtn" title="'+num+'"><input type="button" value="취소" class="rollback" title="'+num+'"></td>')
				
				
			}
		});	
		}else{
			alert("수정은 한개씩 ㄱㄱ");
		}
});

$(".table").on("click",".rollback",function(){		
	
	var num = $(this).attr("title");
	
	i=0;
	
	$.ajax({
		url:"./beforeData?num="+num,
		type:"get",
		dataType:"JSON",
		success:function(data){				
			
			
			$("#"+num).html('<td>'+data.beforeData.outsourcing+'</td><td>'+data.beforeData.item+'</td><td>'+data.beforeData.price+'</td><td>'+data.beforeData.count+'</td><td>'+data.beforeData.total_price+'</td><td>'+data.beforeData.total_count+'</td><td>'+data.beforeData.in_date+'</td><td>'+data.beforeData.r_date+'</td><td><input type="button" class="updateform" value="수정" title="'+data.beforeData.num+'"></td>')

			
		}
	});	
});

$(".table").on("click",".updatebtn",function(){
	var num = $(this).attr("title");	
	var outsourcing = $("#uoutsourcing").val();
	var item = $("#uitem").val();
	var price = $("#uprice").val();
	var count = $("#ucount").val();
	var total_price = $("#utotal_price").val();
	var r_date = $("#ur_date").val();
	if(confirm("정말 수정 하시겠습니까?")){
	i=0;
	 $.ajax({
		url:"./productUpdate",
		data:{
			num:num,
			outsourcing:outsourcing,
			item:item,
			price:price,
			count:count,
			total_price:total_price,
			r_date:r_date
		},
		type:"get",
		dataType:"JSON",
		success:function(data){				
			
			$("#searchfrm").submit();
			
		}
	});	 
	}
	
	
});


$(".table").on("change","#ucount",function() {
	umul();
});
$(".table").on("change","#uprice",function() {
	umul();
});




$("#datebtn").click(function() {
	var year = $("#y").val();
	var month = $("#m").val();
	
	
	if(year==""&&month==""){
		$("#y").val("2017");
		$("#m").val("07");
		
		$("#searchfrm").submit();
		
	}else{
		$("#y").val("");
		$("#m").val("");
		
		$("#searchfrm").submit();
	}
	
	
	
	
});


	$("#before").click(function() {
		if ($("#y").val() != "") {
			var year = $("#y").val()* 1;
			var month = $("#m").val() * 1 - 1;
			if (month == 0) {
				month = 12;
				year = year - 1;
			}
			$("#y").val(year);
			$("#m").val(month);
			$("#searchfrm").submit();
		}
	});

	$("#after").click(function() {
		if ($("#y").val() != "") {
			var year = $("#y").val()* 1;
			var month = $("#m").val() * 1 + 1;
			if (month == 13) {
				month = 1;
				year = year + 1;
			}
			$("#y").val(year);
			$("#m").val(month);
			$("#searchfrm").submit();
		}

	});

	$("#outname").change(function() {
		var outsourcing = $("#outname").val();

		$.ajax({
			url : "./itemList",
			type : "get",
			data : {
				outsourcing : outsourcing
			},
			dataType : "JSON",
			success : function(data) {

				var option = "";
				for (var i = 0; i < data.list.length; i++) {
					option = option + '<option value="'+data.list[i].item+'">';

				}
				$("#items").html(option);

			}
		});

	});
	
	$("#searchoutname").change(	function() {
			var outsourcing = $("#searchoutname").val();
			if (outsourcing == "") {
				$.ajax({
							url : "./sitemList",
							type : "get",
							dataType : "JSON",
							success : function(data) {

								var option = "";
								for (var i = 0; i < data.list.length; i++) {
									option = option	+ '<option value="'+data.list[i].item+'">';

									}
									$("#searchitems").html(option);

								}
							});

						}

						$.ajax({
									url : "./itemList",
									type : "get",
									data : {
										outsourcing : outsourcing
									},
									dataType : "JSON",
									success : function(data) {

										var option = "";
										for (var i = 0; i < data.list.length; i++) {
											option = option	+ '<option value="'+data.list[i].item+'">';

										}
										$("#searchitems").html(option);

									}
								});

					});

	$("#count").change(function() {
		mul();
	});
	$("#price").change(function() {
		mul();
	});

	function mul() {
		var count = $("#count").val() * 1;
		var price = $("#price").val() * 1;
		var mul = count * price;
		$("#total_price").val(mul);
	}
	function umul() {
		var count = $("#ucount").val() * 1;
		var price = $("#uprice").val() * 1;
		var mul = count * price;
		$("#utotal_price").val(mul);
	}
</script>

</html>