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

<div>
<c:forEach items="${list}" var="dto">
${dto.outsourcing } ${dto.item } ${dto.price } ${dto.count } ${dto.in_date } <br>

</c:forEach>


</div>

<form action="productInsert">

외주업체 : <input type="text" name="outsourcing"> 
자제이름 : <input type="text" name="item">
가격 : <input type="number" name="price">
수량 : <input type="number" name="count">
날짜 : <input type="date" name="in_date">


</form>

</body>
</html>