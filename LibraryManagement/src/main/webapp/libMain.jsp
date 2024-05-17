<%@page import="com.lib.dao.LibrarianDAOImp"%>
<%@page import="com.lib.dao.LibrarianDAO"%>
<%
if(session.getAttribute("lid")==null)
{
	%>
  <h1>Try Again !</h1>
  <%
  return ;
}
  %>
  <% 
int id =(Integer)session.getAttribute("lid");
LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Library Manage</title>
  <style>
    @charset "UTF-8";
/* Reset styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }
  
  /* Global styles */
  body {
    font-family: 'Times New Roman', Times, serif,Arial, sans-serif;
    background-image: linear-gradient(to right bottom, #f300ff, #eb68ff, #e794ff, #e7b9ff, #ebd9ff, #e0e6ff, #e0f1ff, #ebf9ff, #c9faff, #9efcff, #6afeff, #00fff3);
    background-repeat: no-repeat;
    background-size: 100%;
  }
  
  
  /* styling for button*/
  
       .button-container {
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
			align-items: center;
			height: 30vh;
		
		}

	    .button {
			display: flex;
			align-items: center;
			justify-content: center;
			width: 200px;
			height: 100px;
			margin: 20px; 
			border-radius: 10px;
			background-color: #4CAF50;
			color: white;
			font-size: 2em;
			font-weight: bold;
			text-transform: uppercase;
			text-align: center;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
			cursor: pointer;
			transition: transform 0.2s ease-in-out;
            text-decoration: none;
		}

		.button:hover {
			transform: scale(1.05);
			box-shadow: 0 0 20px rgba(0, 0, 0, 0.4);
		}

		.button:nth-child(2n) {
			background-color: #2196F3;
		}

		.button:nth-child(3n) {
			background-color: #9C27B0;
		}

		.button:nth-child(4n) {
			background-color: #F44336;
		}
		
		
  
  nav {
    background-color: rgb(17, 0, 255);
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    height:90px;
  }
  
  nav label {
    font-size: 30px;
    cursor: pointer;
    display: none;
  }
  
  nav ul {
    display: flex;
    list-style: none;
  }
  
  nav ul li {
    margin: 0 10px;
  }
  
  nav ul li a {
    color: rgb(255, 0, 0);
    text-decoration: none;
    border: 1px solid white;
    background-color: azure;
    padding: 10px;
    border-radius: 5px;
  }
  
  header {
    background-color: #f2f2f2;
    padding: 50px;
    text-align: center;
  }
  
  h1 {
    font-size: 40px;
  }
  
  main {
    margin: 50px;
  }
  
  section {
    border: 1px solid #ddd;
    padding: 20px;
  }
  
  footer {
    background-color: #000000;
    color: white;
    text-align: center;
    padding: 10px;
    position: fixed;
    bottom:0;
    width:100%;
    height:60px;
    
  }
  
  @media screen and (max-width: 768px) {
    nav label {
      display: block;
    }
    
    nav ul {
      display: none;
      flex-direction: column;
      text-align: center;
      width: 100%;
    }
    
    nav ul li {
      margin: 10px 0;
    }
    
    nav label {
      font-size: 20px;
    }
    
    .menu {
      display: none;
      position: absolute;
      top: 50px;
      left: 0;
      width: 100%;
      background-color: #000000;
      text-align: center;
    }
    
    .slider-container {
				height: 300px;
			}
    
    input[type="checkbox"]:checked ~ .menu {
      display: block;
    }
  }
  
  /*css for slider*/
  
      .slider-container {

			position: relative;
			height: 300px;
			overflow: hidden;
		}

		.slider-container img {
			width: 100%;
			height: 90%;
			object-fit: cover;
			position: absolute;
			top: 0;
			left: 0;
			opacity: 0;
			transition: opacity 0.5s ease-in-out;
		}

		.slider-container img.active {
			opacity: 1;
		}

		.slider-container .prev, .slider-container .next {
			position: absolute;
			top: 50%;
			transform: translateY(-50%);
			font-size: 2em;
			font-weight: bold;
			color: #fff;
			cursor: pointer;
			transition: opacity 0.2s ease-in-out;
		}

		.slider-container .prev:hover, .slider-container .next:hover {
			opacity: 0.7;
		}

		.slider-container .prev {
			left: 20px;
		}

		.slider-container .next {
			right: 20px;
		}
  
  
  </style>
</head>
<body>
  <nav>
    <div class="logo"style="margin:20px;">
      <h3><%="Welcome"+" "+name+" !" %></h3>
     
    <script src="js/util.js"></script>
    </div>
    <ul class="menu">
     
      <li><div id="clock"></div></li>
      <li><a href="logout.jsp">Logout</a></li>
      <li></li>
    </ul>
  </nav>
  <header>
    <h1>Welcome to Library :)</h1>
   
  </header>
  <main>
  	<div class="slider-container">
		<img src="img/img2.jpg" class="active">
		<img src="img/img3.jpg">
		<img src="img/img4.jpg">
		<img src="img/img5.jpg">
		<div class="prev">&#10094;</div>
		<div class="next">&#10095;</div>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByTagName("img");
			for (i = 0; i < slides.length; i++) {
				slides[i].classList.remove("active");
			}
			slideIndex++;
			if (slideIndex > slides.length) {slideIndex = 1}
			slides[slideIndex-1].classList.add("active");
			setTimeout(showSlides, 5000); // Change image every 5 seconds
		}

		document.querySelector(".prev").addEventListener("click", function() {
			slideIndex--;
			if (slideIndex < 1) {slideIndex = document.getElementsByTagName("img").length}
			showSlides();
		});

		document.querySelector(".next").addEventListener("click", function() {
			slideIndex++;
			if (slideIndex > document.getElementsByTagName("img").length) {slideIndex = 1}
			showSlides();
		});
	</script>

    <div class="button-container">
		<a href="addstudent.jsp" class="button"><h5>AddStudent</h5></a>
		<a href="addBook.jsp" class="button"><h5>AddBook</h5></a>
		<a href="issuebook.jsp" class="button"><h5>IssueBook</h5></a>
		<a href="checkdue.jsp" class="button"><h5>CheckDue</h5></a>
	
	</div>
	
	<div class="button-container">
		<a href="delstudent.jsp" class="button"><h5>Del-Student</h5></a>
		<a href="delbook.jsp" class="button"><h5>Del-Book</h5></a>
		<a href="allbook.jsp" class="button"><h5>All-Books</h5></a>
		<a href="allstudent.jsp" class="button"><h5>All-Student</h5></a>
	</div>

  </main>
  <footer>
    <p>&copy; 2024 Design & Develop By Umapathy</p>
  </footer>
</body>
</html>
