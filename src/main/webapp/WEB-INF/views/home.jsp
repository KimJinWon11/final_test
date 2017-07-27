<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>

<html>
<head>

	<c:import url="/resources/css/main.jsp"></c:import>
	
	<script type="text/javascript">
var m = '${message}';
if(m != ''){
	alert(m);
}
</script>
</head>
<body>
	
	<section id="main_img">
		<h1>INTRANET</h1>
		
		<div ID="login_menu">
		<h1>LOGIN</h1>
			<div id="login_form">
				<form action="empLogin">
					<p>ID:&nbsp;&nbsp;&nbsp;<input type="text" id="id" name="emp_id"></p>
					<p>PW: <input type="text" id="pw" name="emp_pw"></p>
					<input type="submit" id="btn" class="btn-default" value="LOGIN"></input>
				</form>
			</div>
		</div>
		<div id="main_title">
			
		</div>
	</section>




</body>
</html>
