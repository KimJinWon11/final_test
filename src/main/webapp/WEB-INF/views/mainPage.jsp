<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<c:import url="/resources/css/mainPage_css.jsp"></c:import>
<script type="text/javascript">
	setInterval("gettime(), 1000");
	function gettime() {
		var now = new Date();
		hours = now.getHours();
		minutes = now.getMinutes();
		seconds = now.getSeconds();
		
		if(hours > 12){
			hours -= 12;
			ampm = "오후";
		}else{
			ampm = "오전";
		}
		if(hours < 10){
			hours = "0" + hours;
		}
		if(minutes < 10){
			minutes = "0" + minutes;
		}
		if(seconds < 10){
			seconds = "0" + seconds;
		}
		document.getElementById("gettime").innerHTML = ampm+hours + ":" + minutes + ":" + seconds;
	}
	
</script>
</head>
<body>
	<c:import url="headerPage.jsp"></c:import>
	<section id="mainPage_base">
		<div id="mainPage_menu_front">
			<div id="mainPage_front_time">
				<span id="gettime">00:00:00</span>
			</div>
			<div id="mainPage_front_0">
				<div id="mainPage_front_0_notice">	
					<a href="#">차후의 지정</a>
				</div>
				
				<ul>
					<li>1</li>
					<li>2</li>
					<li>3</li>
				</ul>
			</div>
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