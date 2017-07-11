<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$(function () {
		$("#btn").click(function () {
			frm.submit();
		})
		$("#btn2").click(function () {
			var checkArray = [];
			$("input[name='ch']:checked").each(function () {
				checkArray.push($(this).val());
			});
			frm2.submit();
		})
	})
  
  </script>
<title>Insert title here</title>
</head>
<body>
	<div class="menu">
		<form action="empList" id="frm">
		부서 : 
			<select name="kind">
				<option value="">전체</option>
				<option  value="h">인사과</option>
				<option value="m">총무과</option>
				<option value="n">프로젝트</option>
			</select>
			이름 : <input type="text" name="search">
			<input type="button" value="검색" id="btn">
		</form>
	</div>

	<div class="container">
		<form action="./" id="frm2">
			<table class="table">
				<tr>
					<td>사원번호</td>
					<td>사원이름</td>
					<td>나이</td>
					<td>직급</td>
					<td>부서</td>
					<td>고용일</td>
				</tr>
			
			<c:forEach items="${list}" var="dto">
				<tr>
					<td>${dto.emp_num }</td>
					<td>${dto.emp_name}</td>
					<td>${dto.emp_age }</td>
					<td>${dto.emp_grade }</td>
					<c:if test="${dto.dept_name==null }"><td></td></c:if>
					<c:if test="${dto.dept_name=='n' }"><td>프로젝트</td></c:if>
					<c:if test="${dto.dept_name=='h' }"><td>인사과</td></c:if>
					<c:if test="${dto.dept_name=='m' }"><td>총무과</td></c:if>
					<td>${dto.emp_hiredate }</td>
					<td><input type="checkbox" name="ch" value="${dto.emp_num}"> </td>
				</tr>
			</c:forEach>
			</table>
			<input type="button" value="입력" id="btn2">
		</form>
	</div>
</body>
</html>