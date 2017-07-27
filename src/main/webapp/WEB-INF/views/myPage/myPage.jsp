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
</head>
<body>
	<c:import url="../headerPage.jsp"></c:import>
	<section id="mainPage_base">
		<div id="mainPage_menu_front">
			<div id="mainPage_front_time">
				<span id="gettime">00:00:00</span>
			</div>
			
			<div>
			<p>사번 : ${member.emp_num }</p>
			<p>아이디 : ${member.emp_id }</p>
			<p>이름 : ${member.emp_name }</p>
			<p>나이 : ${member.emp_age }</p>
			<p>입사일 : ${member.emp_hiredate }</p>
			<p>월급 : ${member.emp_sal }</p>
			<p>직급 : ${member.emp_grade }</p>	
			
			<p>비밀번호 수정</p>
			<form action="empPwUpdate" method="post" id="pwfrm">
			<input type="hidden" name="emp_id" value="${member.emp_id }">
			<p>비밀번호 <input type="password" name="emp_pw" id="pw1"> </p>
			<p>비밀번호 확인<input type="password" id="pw2"> <input type="button" id="ubtn" value="수정하기"> </p>		
			</form>
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
<script type="text/javascript">

$(function(){
	var m = '${message}';
	if(m != ''){
		alert(m);
	}
});

$("#ubtn").click(function(){
	var pw1 = $("#pw1").val();
	var pw2 = $("#pw2").val();
	
	if(pw1==""||pw2==""){	
		
		alert("수정할 비밀번호를 입력하세요!")
		
	}else if(pw1!=pw2){
		
		alert("비밀번호가 일치하지 않습니다.")
	}else{
		
		$("#pwfrm").submit();
	}
	
});


</script>
</html>