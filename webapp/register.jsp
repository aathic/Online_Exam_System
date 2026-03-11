<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	*{
	margin:0;
	padding:0;
	box-sizing: border-box;
	}
	.outer{
	height:100vh;
	background:linear-gradient(to right,blue,red);
	display:flex;
	align-items: center;
	justify-content: center;
	}
	.inner{
	border: 1px solid black;
	border-radius:20px; 
	padding: 20px;
	text-transform: uppercase;
	color:white;
	background-color: black;
	}
	.inner>form>input{
	outline: none;
	 padding:3px;
	}
	.outer>.inner>form>input:focus{
            border: 2px solid skyblue;
        }
        .outer>.inner>form>input:hover{
            border: 1px solid skyblue;
            cursor: pointer;
        }
        .inner>form>input[type="submit"]:hover{
        	background-color: blue;
        }
</style>
</head>
<body>
	<div class="outer">
	<div class="inner">
	<form action="RegisterServlet" method="post">
	<label>NAME </label>
	<input type="text" name="name"><br><br>
	<label>EMAIL </label>
	<input type="email" name="email"><br><br>
	<label>password </label>
	<input type="password" name="password"><br><br>
	<input type="submit">
	
	<a href="login.jsp">Login</a>
	</form>
	
	</div>
	</div>
</body>
</html>