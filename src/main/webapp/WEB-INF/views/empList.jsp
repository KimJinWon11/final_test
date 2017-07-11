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
			var emp_num = [];
			$("input[name='ch']:checked").parent().siblings(".c1").each(function () {
				emp_num.push($(this).attr("title"));
			});
			var emp_name = [];
			$("input[name='ch']:checked").parent().siblings(".c2").each(function () {
				emp_name.push($(this).attr("title"));
			});
			var emp_grade = [];
			$("input[name='ch']:checked").parent().siblings(".c3").each(function () {
				emp_grade.push($(this).attr("title"));
			});
			var dept_name = [];
			$("input[name='ch']:checked").parent().siblings(".c4").each(function () {
				dept_name.push($(this).attr("title"));
			});
			
			/* for (var i = 0; i < checkArray.length; i++) {
				alert(checkArray[i].emp_num);
			} */
			for (var i = 0; i < emp_num.length; i++) {
				$(opener.document).find("#emp_num").append(emp_num[i]); 
				$(opener.document).find("#emp_name").append(emp_name[i]); 
				$(opener.document).find("#emp_grade").append(emp_grade[i]); 
				$(opener.document).find("#dept_name").append(dept_name[i]); 
			}
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
					<td class="c1" title="${dto.emp_num }">${dto.emp_num }</td>
					<td class="c2" title="${dto.emp_name }">${dto.emp_name}</td>
					<td>${dto.emp_age }</td>
					<td class="c3" title="${dto.emp_grade }">${dto.emp_grade }</td>
					<c:if test="${dto.dept_name==null }"><td></td></c:if>
					<c:if test="${dto.dept_name=='n' }"><td class="c4" title="프로젝트">프로젝트</td></c:if>
					<c:if test="${dto.dept_name=='h' }"><td class="c4" title="인사과">인사과</td></c:if>
					<c:if test="${dto.dept_name=='m' }"><td class="c4" title="총무과">총무과</td></c:if>
					<td>${dto.emp_hiredate }</td>
					<td title="haha"><input type="checkbox" name="ch"> </td>
				</tr>
			</c:forEach>
			</table>
			<input type="button" value="입력" id="btn2">
		</form>
	</div>
</body>
</html>