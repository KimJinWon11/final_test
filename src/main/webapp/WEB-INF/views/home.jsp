<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>

<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>Home</title>
	<script type="text/javascript">
		$(function () {
			$("#btn").click(function () {
				window.open("empList", "search", "width=400, heigth=500, scrollbars=yes");
			});
		});
		
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>
	<input type="button" value="search" id="btn">
	<div id="t1">
	
	</div>
	<c:if test="${dto!=null}">
		<c:forEach items="${dto}" var="dto">
			<p>${dto.emp_name}</p>
		</c:forEach>
	</c:if>
<P>  The time on the server is ${serverTime}.hahaha </P>

</body>
</html>
