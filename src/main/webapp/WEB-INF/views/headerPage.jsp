<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<c:import url="/resources/css/header_css.jsp"></c:import>
</head>
<body>
	<header>
		<div id="header_main">
			<div id="header_logo">
				<span id="header_intranet">INTRANET</span>
			</div>
			<div id="header_mail">
				<img class="header_mail_img" alt="" src="${pageContext.request.contextPath}/resources/img/header/mail_img.png">
				<div id="mail_num">1</div>
			</div>
			<div id="header_login">
				<img class="header_user_img" alt="" src="${pageContext.request.contextPath}/resources/img/header/userProfile.png">
				<a href="loginPage">로그인 한 사람</a>
				<a id="header_logout" href="logOutPage">LOGOUT</a>
			</div>
		</div>
	</header>

</body>
</html>