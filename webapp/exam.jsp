<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="db.DBConnection" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body{
		font-family:Arial;
		margin:40px;
		background-color: aqua;
	}
	h2{
	color:#2c3e50;
	}
	h3{
	position: sticky;
	top:0; 
	}
</style>
</head>
<body onload="startTimer()">
	<h3 id="timer"></h3>
	<h2>Exam</h2>
	<form action="SubmitExamServlet" method="post" id="examForm">
		<%
		Connection con=DBConnection.getConnection();
		
		PreparedStatement ps=con.prepareStatement("select * from question where exam_id=1");
		ResultSet rs=ps.executeQuery();
		int x=0;
		while(rs.next()){
		%>
		<p><%=++x +"."+rs.getString("question") %></p>
		<input type="radio" name="q<%=rs.getInt("question_id")%>" value="<%=rs.getString("option1")%>">
		<%=rs.getString("option1") %><br>
		<input type="radio" name="q<%=rs.getInt("question_id")%>" value="<%=rs.getString("option2")%>">
		<%=rs.getString("option2") %><br>
		<input type="radio" name="q<%=rs.getInt("question_id")%>" value="<%=rs.getString("option3")%>">
		<%=rs.getString("option3") %><br>
		<input type="radio" name="q<%=rs.getInt("question_id")%>" value="<%=rs.getString("option4")%>">
		<%=rs.getString("option4") %><br>
		<hr>
		<%} %>
		<input type="submit" value="submit Exam">
	</form>
	
	<script>
	var timeLeft=300;
	function startTimer(){
		var timer=setInterval(function(){
			timeLeft--;
			let h3=document.querySelector("h3");
			h3.innerHTML="Time Left : "+timeLeft+" seconds";
			if(timeLeft<=0){
				clearInterval(timer);
				document.getElementById("examForm").submit();
			}
		},1000)
	}
	</script>

</body>
</html>