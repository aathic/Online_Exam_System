<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Exam</title>
<style>
	body{
		font-family:Arial;
		margin:40px;
	}
	h2{
	color:#2c3e50;
	}
	input{
	padding:8px;
	margin:5px;
	}
</style>
</head>
<body>
	<div></div>
	<h2>Create Exam</h2>
	<form action="AddExamServlet" method="post">
		<label>Exam Name</label>
		<input type="text" name="exam_name"><br><br>
		<label>Duration(minutes)</label>
		<input type="text" name="duration"> <br><br>
		<input type="submit" value="create exam">
	</form>
</body>
</html>