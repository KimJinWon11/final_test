<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>

<html>
<head>

	<c:import url="/resources/css/main.jsp"></c:import>
</head>
<body>
	
	<section id="main_img">
		<h1>INTRANET</h1>
		
		<div ID="login_menu">
		<h1>LOGIN</h1>
			<div id="login_form">
				<p>ID:&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="id"></p>
				<p>PW: <input type="text" id="pw" name="pw"></p>
				<a type="button" id="btn" class="btn-default" value="LOGIN" href="mainPage">LOGIN</a>
			</div>
		</div>
		<div id="main_title">
			
		</div>
	</section>


</body>
</html>
