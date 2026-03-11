<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .outer{
            background-color: black;
            height: 100vh;
            position: relative;
        }
        .top{
            height: 50vh;
            background-color: blue;
        }
        .bottom{
            height: 50vh;
            background-color: skyblue;
        }
        .center{
            height: 75%;
            width: 80%;
            background-color: white;
            position: absolute;
            left: 50%; 
            top: 50%;  
             transform: translate(-50%,-50%); 
             display: flex;
             box-shadow: 0px 4px 3px black;
        }
        .center>.left{
            flex-basis: 45%;
            /* background-color: red; */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .left>form{
            width: 300px;
            background-color: white;
        }
        .left>h1{
            font-weight: bold;
            text-transform: uppercase;
        }
        form>label{
            text-transform: uppercase;
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 10px;
            display: block;
        }
        form>input{
            width: 100%;
            outline: none;
            border-radius: 7px;
            margin-bottom: 10px;
            padding: 8px;
            display: block;
        }
        form>input:focus{
            border: 2px solid skyblue;
        }
        form>button{
            width: 100%;
            background-color: blue;
            color: white;
            cursor: pointer;
            padding: 12px;
            border: none;
            border-radius: 14px;
            text-transform: uppercase;
            font-weight: bold;
            margin-bottom: 20px;
        }
        form>button:hover{
            text-shadow: 2px 3px 2px black;
            background-color: rgb(11, 11, 143);
        }
        .left>.foot>p{
            display: inline;
            font-weight: bold;
            text-transform:capitalize;
        }
        .foot>a{
            text-transform: uppercase;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
        }
        .center>.right{
            flex-basis: 55%;
            /* background-color: green; */
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
        }
        .right>img{
            height: 60%;
            width: 90%;
            object-fit: cover;
            object-position: top;
        }
        .right>h1{
            font-weight: bold;
            font-size: 25px;
            text-transform: uppercase;
            letter-spacing: 1.7px;
        }
        .right>p{
            font-weight: bold;
        }
        footer{
             width: 100%; 
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
        }
        footer>.line{
            height: 4px;
            width: 120px;
            border-radius: 4px;
            background-color: blue;

        }
</style>
</head>
<body>
	<div class="outer">
        <div class="top"></div>
                <div class="bottom"></div>
    <div class="center">
            <div class="left">
	<form action="LoginServlet" method="post">
		<label>email</label>
		<input type="email" name="email"><br><br>
		<label>password</label>
		<input type="password" name="password"><br><br>
		<input type="submit">
	</form>
	<div class="foot">
                    <p>don't have an an account ?</p>
	<a href="register.jsp">Register</a>
	</div>
	</div>
	<div class="right">
                <img src="https://account.asus.com/img/login_img02.png" alt="">
                <h1>check your Exam progress</h1>
                <p>Online exam portal everyone give your best in the exam</p>
                <footer>
                    <div class="line"></div>
                    <div class="line"></div>
                    <div class="line"></div>
                </footer>
            </div>
	
	  </div>
	</div>
</body>
</html>