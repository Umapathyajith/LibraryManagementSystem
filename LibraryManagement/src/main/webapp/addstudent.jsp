<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Try Again !</h1>
  <%
  return ;
}
    
  %>
<!DOCTYPE html>
<html>
<head>
	<title>User SignUp </title>
	<style>
	body{
	    background-image: linear-gradient(to right bottom, #f300ff, #eb68ff, #e794ff, #e7b9ff, #ebd9ff, #e0e6ff, #e0f1ff, #ebf9ff, #c9faff, #9efcff, #6afeff, #00fff3);
    background-repeat: no-repeat;
    background-size: 100%;
    height: 100vh;
	}
		form {
			max-width: 500px;
			margin: 30px auto auto auto;
			padding: 20px;
			border: 1px solid #ccc;
			border-radius: 5px;
			background-color: #f2f2f2;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
		}

		input[type=text], select {
			width: 100%;
			padding: 12px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
			margin-top: 6px;
			margin-bottom: 16px;
			resize: vertical;
		}

		input[type=submit] {
			background-color: #4CAF50;
			color: white;
			padding: 12px 20px;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
      
        .loginbtn{
           color: white;
           border: 1px solid transparent;
           padding: 12px 20px;
           border-radius: 15px;
           text-decoration: none;
           margin-left: 15rem;
           background-color: #4CAF50;
        }
		input[type=submit]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body>
	<form action="AddStudent">
		<h2>User SignUp</h2>
		<%
		String str1= (String)session.getAttribute("stdstatus");
		if(str1=="success")
		{
			%>
			<h3 style="color:green"> Record Inserted Successfully !! </h3>
			
			<% 
			session.setAttribute("stdstatus", null);
		}
		if(str1=="failure")
		{
			%>
			<h3 style="color:red">Some Error Occur !</h3>
			<% 
		}
		%>
		<label for="name">Name:</label>
		<input type="text" id="name" name="name" placeholder="Enter student's name">

		<label for="email">Email:</label>
		<input type="text" id="email" name="email" placeholder="Enter student's email">
    
		
		<label for="email">Course:</label>
		<input type="text" id="course" name="course" placeholder="Enter student's Course">
    
    
		<label for="email">Phone No:</label>
		<input type="text" id="phoneno" name="phoneno" placeholder="Enter student's phone no">
    

		<label for="enrollment">Enrollment No / Student Id:</label>
		<input type="text" id="sid" name="sid" placeholder="Enter enrollment no.">

		<input type="submit" value="Add Student">
		<a href="userlogin.jsp" class="loginbtn">Login</a>
		
	</form>
</body>
</html>
