<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="productInsert">

거래처 : <input type="text" name="outsourcing"> 
제품명 : <input type="text" name="item">
가격 : <input type="number" name="price">
수량 : <input type="number" name="count">
날짜 : <input type="date" name="in_date">

<button>입력</button>


</form>

<div>
<table>
<tr>
	<td>거래처</td><td>제품명</td><td>가격</td><td>수량</td><td>발주등록일</td>
</tr>
<c:forEach items="${list}" var="dto">

<tr>
	<td>${dto.outsourcing }</td><td>${dto.item }</td><td>${dto.price }</td><td>${dto.count }</td><td>${dto.in_date }</td>
</tr>     

</c:forEach>
</table>

</div>


</body>
</html>