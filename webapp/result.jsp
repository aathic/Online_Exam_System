<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="db.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>
	body{
		font-family:Arial;
		
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
		background: linear-gradient(to left,skyblue,white,black);
		
	}
	h2{
	color:#2c3e50;
	}
	a{
	display:block;
	width:200px;
	align-items:center;
	padding:12px;
	background-color:#2ecc71;
	text-decoration: none;
	color:red;
	border-radius: 5px;
	}
	
</style>
</head>
<body>
	<div>
	<h2>Your Result</h2>
	<%
	Connection con=DBConnection.getConnection();
	PreparedStatement ps=con.prepareStatement("select * from results order by result_id desc limit 1");
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
	%>
	Score :<%=rs.getInt("score") %>
	<%
	}
	%>
	<br><br>
	
	<a href="dashboard.jsp">Back to Dashboard</a>
	</div>
	
</body>
</html>