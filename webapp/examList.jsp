<%@page import="db.DBConnection"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
display:flex;
align-items: center;
justify-content: center;
background: linear-gradient(to top right,white,skyblue,red,green);
height: 100vh;
}
a{
	display: block;
	width:200px;
	margin: 10px auto;
	padding:12px;
	background: #2ecc71;
	color:white;
	border-radius:5px;
	text-decoration: none;
}
a:hover{
	background: #27ae60;
	color: red;
	}
</style>
</head>
<body>
<div class="list">
	<h2>Select Exam</h2>
	<%
	Connection con=DBConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("select * from exams");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
	%>
	<a href="exam.jsp?exam_id=<%=rs.getInt("exam_id")%>">Start <%=rs.getString("exam_name") %></a><br><br>
	<%} %>
	</div>
</body>
</html>