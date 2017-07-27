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
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="../resources/SE2/js/HuskyEZCreator.js" charset="utf-8"></script>
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
			
			<form action="photoInsert" method="post" id="frm" enctype="multipart/form-data">
			<p>작성자 : <input type="text" name="writer" value="${member.emp_name }"> </p>
			<p>제목 : <input type="text" name="title"> </p>
			<p>contents: <textarea id="smarteditor" rows="" cols="" name="contents">${dto.contents }</textarea></p>
			<input type="file" name="file">
			<input type="file" name="file">
	
			<input type="button" id="savebutton" value="쓰기">
			
			
			
			</form>
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

<script type="text/javascript">
$(function(){
    //전역변수선언
    var editor_object = [];
     
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: editor_object,
        elPlaceHolder: "smarteditor",
        sSkinURI: "../resources/SE2/SmartEditor2Skin.html", 
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,             
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,     
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true, 
        }
    });
     
    //전송버튼 클릭이벤트
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        editor_object.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []);
         
        // 이부분에 에디터 validation 검증
         
        //폼 submit
        $("#frm").submit();
    })
})
</script>

</html>