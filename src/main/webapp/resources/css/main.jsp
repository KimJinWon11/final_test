<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
	#main_img{
		position: fixed;
		width: 100%;
		height: 100%;
		background-image: url("/resources/img/main/main_img.jpg");
		
		background-size: cover;
	}
	h1{
		margin-top: 10%;
	    text-align: center;
	    /* margin: 0 auto; */
	    /* margin-left: 40%; */
	    /* margin-top: 20%; */
	    color: white;
	    font-size: 80px;
	    /* display: inline-block; */
	    text-shadow: 4px 4px #333333;
	    z-index: 999;
	}
	#login_menu{
		position: relative;
	    width: 100%;
	    height: 30%;
	    border: soild, 2px, white;
	    /* margin-top: 30%; */
	    margin-top: 5%;
	    /* margin-bottom: 30%; */
	    /* margin-left: 55%; */
	    
	    /* border-radius: 5%; */
	    
	    background: linear-gradient(to bottom, rgba(0, 0, 26, .8) 50%, rgba(115, 115, 115, .8)) 60% fixed;
	    box-shadow: 5px 5px 5px 0px #333333;
	    display: inline-block;
	}
	#login_menu h1{
		position: inherit;
	    display: inline-block;
	    font-size: 60px;
	    float: left;
	    margin-top: 5%;
	    margin-left: 30%;
	    /* right: 10%; */
	    /* margin-bottom: 20%; */
	}
	#login_form{
	    position: absolute;
	    width: 40%;
	    /* height: 40%; */
	    /* background-color: white; */
	    float: left;
	    padding: 2%;
	    margin-top: 2.5%;
	    margin-left: 2%;
	    border-radius: 1rem;
	    border: soild, 2px, white;
	    border-radius: 5%;
	    box-shadow: 5px 5px 5px 0px #333333;
	    display: inline-block;
	}
	
	#login_menu p{
	    display: inline-block;
	    padding: 2%;
	    color: white;
	    text-shadow: 2px 2px #333333;
	}
	#login_menu input{
		color:black;
	}
	#btn{
		position: absolute;
	    margin-top: %;
	    /* left: 20%; */
	    padding: 2%;
	    margin-left: 3%;
	    border-radius: 10%;
	    box-shadow: 5px 5px 5px 0px #333333;
	}
		
	    
</style>
</head>
