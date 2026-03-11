<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		font-family:Arial;
		margin:40px;
		background: linear-gradient(to top right,skyblue,white);
	}
	h2{
	color:#2c3e50;
	}
	.menu{
	text-align: center;
	margin-top: 40px;
	}
	.menu a{
	display: block;
	width:200px;
	margin: 10px auto;
	padding:12px;
	background: black;
	color:white;
	border-radius:5px;
	text-decoration: none;
	}
	.menu a:hover{
	
	color: red;
	}
</style>
</head>
<body>
	<div class="menu">
	<h1>ADMIN DASHBORD</h1>
	<h1>--------------</h1>
	<a href="addExam.jsp">Add Exam</a> <br> <br>
	
	<a href="addQuestion.jsp">Add Question</a> <br> <br>
	</div>
</body>
</html>