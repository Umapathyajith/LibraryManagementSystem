<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Library Management</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
/* Reset styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Body styles */
body {
	font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif, sans-serif;
	font-size: 16px;
	line-height: 1.5;
    background-image: linear-gradient(to right bottom, #f300ff, #eb68ff, #e794ff, #e7b9ff, #ebd9ff, #e0e6ff, #e0f1ff, #ebf9ff, #c9faff, #9efcff, #6afeff, #00fff3);
    background-repeat: no-repeat;
    background-size: 100%;
}

/* Header styles */
header {
    background-color: violet;
    box-shadow: 10px 10px 45px 10px rgb(255, 0, 221);
	color: #000000;
	padding: 20px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	flex-wrap: wrap;
}
header:hover{
    background-color: violet;
    box-shadow: 10px 10px 45px 10px rgb(255, 0, 221);
    transform: scale(1.05);
    transition: 0.5s;
}

header h1 {
	font-size: 35px;
}

nav ul {
	display: flex;
	list-style: none;
}

nav li {
	margin-right: 20px;
}

nav li:last-child {
	margin-right: 0;
}

nav a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}

/* Main styles */
main {
	padding: 50px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.cta {
    backdrop-filter: blur(10px);
    background-repeat: no-repeat;
    background-size: 100%;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	padding: 50px;
    border-radius: 10px;
	text-align: center;
	max-width: 800px;
	margin-bottom: 50px;
}

.cta:hover{
    box-shadow: 10px 10px 45px 10px rgb(0, 234, 255);
    transform: scale(35px);
    transition: 0.5s;
}

.cta h2 {
	font-size: 36px;
	margin-bottom: 20px;
}

.cta p {
	font-size: 18px;
	margin-bottom: 40px;
}

.btn {
	background-color: #00d9ff;
	color: #000000;
	padding: 10px 20px;
	border-radius: 5px;
	text-decoration: none;
	font-weight: bold;
	transition: background-color 0.3s;
}

.btn:hover {
	background-color: #0026ff;
    color: white;
}

/* Footer styles */
footer {
    
	background-color: #000000;
	color: #fff;
	padding: 20px;
	text-align: center;
    width: 100%;
    position: fixed;
    bottom:0;
   
}


    </style>
</head>
<body>
	<header>
		<marquee behavior="" direction="margin-left"><h1>Library Management System</h1></marquee>
	
	</header>
	<main>
		<section class="cta">
			<h2>Welcome to Library Management Portal</h2>
			<p>Please choose your login type:</p>
			<a href="login.jsp" class="btn">Admin Login</a>
			<a href="userlogin.jsp" class="btn">User Login</a>
            <br>
            <br>
            <br>
            <a href="addstudent.jsp" class="btn">User SignUp</a>
		</section>
	</main>
	<footer>
		<p>&copy; 2024 Library Management System Design By Umapathy</p>
	</footer>
</body>
</html>
