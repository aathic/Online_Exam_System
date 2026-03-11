<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dashboard</title>
<style>
	body{
		font-family:Arial;
		margin:40px;
		background: linear-gradient(to top right,black,white);
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
	background: #2ecc71;
	color:white;
	border-radius:5px;
	text-decoration: none;
	}
	.menu a:hover{
	background: #27ae60;
	color: red;
	}
</style>
</head>
<body>
	
	<div class="menu">
	<h2>STUDENT DASHBOARD</h2>
	<h2>----------------</h2>
	<a href="exam.jsp">Start exam</a><br><br>
	<a href="result.jsp">View Result</a><br><br>
	<a href="login.jsp">Logout</a>
	</div>
</body>
</html>