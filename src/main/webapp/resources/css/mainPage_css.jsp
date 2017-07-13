<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/reset.css" />" rel='stylesheet'>

<style type="text/css">
	#mainPage_base{
		position: fixed;
		width: 100%;
		height: 100%;
		background: rgb(38, 38, 38) fixed;
	}
	
	#mainPage_menu_front{
		width: 90%;
	    height: 88%;
	    background-color: white;
	    position: fixed;
	    right: 0;
	    bottom: 5%;
	    float: left;
	    /* border-radius: 3%; */
	}
	#mainPage_menu_front hr{
		width: 50%;
   	 	margin-left: 0;
	}
	#mainPage_menu_front li{
		padding: 2% 2% 2% 0;
	}
	#mainPage_front_1{
		position: absolute;
		width: 40%;
	    height: 40%;
	    margin-top: 5%;
	    margin-left: 5%;
	   /*  background: gray; */
	    display: inline-block;
	}
	#mainPage_front_1_notice{
		width: 100%;
		height: 15%;
		background: rgb(0, 82, 204);
		box-shadow: 2px 2px 2px black;
	}
	#mainPage_front_1 a{
		color: white;
		display: inline-block;
    	padding: 3% 4% 3%;
    	text-shadow: 2px 2px 2px black;
	}
	#mainPage_front_2{
		position: absolute;
	    width: 40%;
	    height: 40%;
	    margin-top: 5%;
	    margin-left: 56%;
	    /* background: gray; */
	    display: inline-block;
	}
	#mainPage_front_2_notice{
		width: 100%;
		height: 15%;
		background: rgb(0, 82, 204);
		box-shadow: 2px 2px 2px black;
	}
	#mainPage_front_2 a{
		color: white;
		display: inline-block;
    	padding: 3% 4% 3%;
    	text-shadow: 2px 2px 2px black;
	}
	#mainPage_front_3{
		width: 35%;
		height: 40%;
		margin-top:3%;
		margin-left:5%;
		/* background: gray; */
		display: inline-block;
	}
	#mainPage_front_3_notice{
		width: 100%;
		height: 15%;
		background: rgb(0, 82, 204);
		box-shadow: 2px 2px 2px black;
	}
	#mainPage_front_3 a{
		color: white;
		display: inline-block;
    	padding: 3% 4% 3%;
    	text-shadow: 2px 2px 2px black;
	}
	#mainPage_front_4{
		width: 40%;
	    height: 40%;
	    margin-top: 35%;
	    margin-left: 15.5%;
	    /* background: gray; */
	    display: inline-block
	}
	#mainPage_front_4_notice{
		width: 100%;
		height: 15%;
		background: rgb(0, 82, 204);
		box-shadow: 2px 2px 2px black;
	}
	#mainPage_front_4 a{
		color: white;
		display: inline-block;
    	padding: 3% 4% 3%;
    	text-shadow: 2px 2px 2px black;
	}
	#main_menu_select{
		margin-top: 10%;
	    width: inherit;
	    display: inline-block;
	}
	#main_menu_select a{
		color: white;
		padding: 1%;
	}
	hr{
		background: rgb(51, 51, 51);
	}
</style>
