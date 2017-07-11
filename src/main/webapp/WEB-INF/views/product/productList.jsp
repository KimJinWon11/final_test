<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form action="productInsert" method="get">
  <input list="outsourcings" name="outsourcing" id="test">
  <datalist id="outsourcings">
  <c:forEach items="${list}" var="dto">
    <option value="${dto.outsourcing }">
  </c:forEach>
  </datalist>
  <input type="button" value="gogo">
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
<script type="text/javascript">

$("#test").keypress(function(){
	
});

</script>

</html>