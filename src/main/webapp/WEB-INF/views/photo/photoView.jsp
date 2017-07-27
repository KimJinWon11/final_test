<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<style type="text/css">
.photo_main{
	margin: 3% 3%;
	width: 94%;
	height: 92%;
	overflow-y: scroll;
	position: absolute;
	
}
.photo_item{
	
	display: inline-block;
	margin-right: 2%;
}

</style>
</head>
<body>
	<c:import url="../headerPage.jsp"></c:import>
	<section id="mainPage_base">
		<div id="mainPage_menu_front">
			<div id="mainPage_front_time">
				<span id="gettime">00:00:00</span>
			</div>
			
			<div>
			
			<div class="photo_main">
			<p>${photoDTO.title }</p>
			<p>${photoDTO.writer }</p>
			<p>${photoDTO.reg_date }</p>
			<p>${photoDTO.hit }</p>
			<c:forEach items="${fileList}" var="dto">
			<img width="250px" height="250px" alt="" src="<%=application.getContextPath()%>/resources/photo/${dto.fname}"> 
			<h2>${dto.oname }</h2>		
			</c:forEach>
			
				<a href="photoUpdate?num=${photoDTO.num }">수정</a>
				<a href="photoDelete">삭제</a>
			</div>
			
			
			
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