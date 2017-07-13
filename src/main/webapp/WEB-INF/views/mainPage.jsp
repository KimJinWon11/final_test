<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<c:import url="/resources/css/mainPage_css.jsp"></c:import>
	
</head>
<body>
	<c:import url="headerPage.jsp"></c:import>
	<section id="mainPage_base">
		<div id="mainPage_menu_front">
			<div id="mainPage_front_1">
				<div id="mainPage_front_1_notice">	
					<a href="#">회의실 예약 관리</a>
				</div>
				
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
				</ul>
			</div>
			<div id="mainPage_front_2">
				<div id="mainPage_front_2_notice">
					<a href="#">프로젝트 스케줄</a>
				</div>
				
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
				</ul>
			</div>
			<div id="mainPage_front_3">
				<div id="mainPage_front_3_notice">
					<a href="#">공지사항</a>
				</div>
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					
				</ul>
			</div>
			<div id="mainPage_front_4">
				<div id="mainPage_front_4_notice">
					<a href="#">차후에 지정</a>
				</div>
				
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					
				</ul>
			</div>
		</div>
		<div id="main_menu_select">
			<hr>
			<a href="mainPage">홈</a>
			<hr>
			<a href="projectPage">프로젝트페이지</a>
			<hr>
			<a href="productPage">물량관리</a>
			<hr>
			<a href="salPage">월급관리</a>
			<hr>
			<a href="meetingRoomPage">회의실예약관리</a>
			<hr>
			<a href="humanPage">인사관리</a>
			<hr>
			<a href="notice">공지사항</a>
			<hr>
			
		</div>
	</section>
	

</body>
</html>