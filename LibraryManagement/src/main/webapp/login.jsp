<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    *{
	margin:0;
	padding:0;
}

body{
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif, sans-serif;
   background-image: url(img/loginimage.jpg);
   background-repeat: no-repeat;
   background-size: 100%;
   height: 100vh;
}
h1
{
	color:white;

}
.button{
	 background-color: white;
	 box-shadow: 5px 10px;
	 width:20px;
}
.button:hover {
  background-color: yellow;
}
h3
{
	margin:5px;
	text-decoration:none;
}
.form1{
	position:absolute;
	border-radius: 10px;
	top:20%;
	left:40%;
	width:400px;
	height:400px;
	background-color: transparent;
	backdrop-filter: blur(35px);
}

.form1 h1{
	text-align:center;
	margin:10px;
	padding-bottom:15px;
	border-bottom:1px solid rgb(255, 255, 255);
}
.form1:hover{
	box-shadow: 10px 10px 45px 10px rgb(255, 255, 255);
    transform: scale(35px);
    transition: 0.5s;
}
.card-text
{
	margin:20px;
	justify-content:center;
	position:relative;
	border-bottom:2px solid #ffffff;
	
}
.form1 form
{
	padding:0 40px;
	box-sizing:border-box;
}
.card-text input{
	width:100%;
	padding:0 0px;
	height: 50px;
	font-size:16px;
	border:none;
	background:none;
	outline:none;
	color:#fff;
}
.card-text label{
	position: absolute;
	top:50%;
	left: 5px;
	color:#ffffff;
	font-size: 16px;
}
.card-text input:focus ~label,
.card-text input:valid ~label
{
	top:-5px;
	margin:2px;
	color: #ffffff;
}
input[type="submit"]
{
	width:50%;
	margin-left:80px;
	margin-top: 25px;
	height:50px;
	background-color:rgb(255, 255, 255);
	border: transparent;
	border-radius:25px;
	font-size:18px;
	font-weight:700;
	cursor:pointer;
	outline:none;
	color:#000000;
}
input[type="submit"]:hover
{
	background-color: aqua;
	box-shadow: 5px 5px 25px 5px rgb(39, 230, 255);
    transform: scale(35px);
    transition: 0.5s;
}
.card-pass{
	color:#fff;
	margin:20px;
}
.card-pass:hover{
	text-decoration:underline;
	cursor:pointer;
}
</style>
</head>
<body>
	<div class="form1">
		<h1>Login</h1>
		<form action="Validate" method="post">
			<div class="card-text">
				<input type="text" name="username" required> <label>Login Id</label>
			</div>
			<div class="card-text">
				<input type="password" name="password"  required> <label>Password</label>
			</div>
			<input type="submit" value="Login">
			<!-- <div class="card-pass">forgot password ?</div>  -->
		</form>
	</div>
</body>
</html>