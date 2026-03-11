<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Question</title>
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

	<h2>Add Question</h2>
	
	<form action="AddQuestionServlet" method="post">
		Exam ID <br>
		<input type="text" name="exam_id"><br><br>
		Question <br>
		<input type="text" name="question"><br><br>
		Option 1 <br>
		<input type="text" name="option1"><br><br>
		Option 2 <br>
		<input type="text" name="option2"><br><br>
		Option 3 <br>
		<input type="text" name="option3"><br><br>
		Option 4 <br>
		<input type="text" name="option4"><br><br>
		Correct Answer <br>
		<input type="text" name="correct_answer">
		
		<input type="submit" value="Add question">
	</form>
	
</body>
</html>