<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Add Flight</title>
<link rel="icon" type="image/x-icon" href="images/head.png" />

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">

<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link href="css/index-styles.css" rel="stylesheet" />

    <style>
        .container1{
        	display: flex;
        	align-items: horizontal;
        }
        img{
        	width: 300px;
        	height: 300px;
        	margin-left: 30px; 
        	margin-top: 40px;
        }
        .container{
        	width: 470px;
        	height: 470px;
        	border: 2px solid black;
        	margin-top: 30px;
        	background-color: rgb(200, 204, 204);
        	transition: background-color 0.3s ease;
        	box-shadow: 0 48px 48px 0 rgba(0,0,0,0.34), 0 17px 50px 0 rgba(0,0,0,0.19);
       		shadow: 3px black;
        }
        .container:hover{
		    background-color: rgb(154, 156, 156);
		    cursor: pointer;
        	box-shadow: 0 18px 18px 0 rgba(0,0,0,0.34), 0 17px 50px 0 rgba(0,0,0,0.19);
		 }
		      .container:active {
		        background-color: #c2e7f5;
		      }
		
        
        p{
        	font-size: 35px;
		    font-weight: bolder;
		    font-family: Arial, Helvetica, sans-serif;
		    text-align: center;
    		text-decoration: underline;
		    color: black;
		    margin-top: 30px;
		    
        }
        		
    </style>

</head>
<body>
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="abc">
			<a class="navbar-brand" href="/admindashboard" style="margin-left: 80px">FlyEase</a>
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ms-auto">
				<li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="/" style="margin-right: 60px;">Log Out</a></li>	
			</ul>
		</div>
	</nav>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main" style="margin-top: -360px; height: 1400px; background: white;" >
		<!-- Sign up form -->
		<section >
				<div class="container1">	
					<div class="container" onclick="redirectToNextPage()">
				        <img src="images/card1.png" alt="Image" style="width: 350px">
				        <p>ADD NEW FLIGHT</p>
				    </div>
					 <div class="container" onclick="redirectToNextPage1()">
				        <img src="images/card2.png" alt="Image" style="margin-left: 60px;">
				        <p>VIEW ALL USERS</p>
				    </div>
				</div>
			
		</section>

	</div>
	<div class="copyright py-4 text-center text-white">
		<div class="container6" style="background-color: #1a252f">
			<small>Copyright &copy; FlyEase 2023</small>
		</div>
	</div>
	<script>
		function redirectToNextPage() {
			window.location.href = "addflight";
		}
		
		function redirectToNextPage1() {
			window.location.href = "allusers";
		}
    </script>
</body>
</html>