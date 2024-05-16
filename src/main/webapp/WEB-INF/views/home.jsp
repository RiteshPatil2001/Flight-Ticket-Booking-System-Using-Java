
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>Booking System</title>
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="images/head.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
	
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
		crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
	<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/index-styles.css" rel="stylesheet" />
	<link href="css/home.css" rel="stylesheet" />
	
    <script>
        
        function gotonextpage() {
            window.location.href = 'flights';
        }
    </script>
    
    
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="home">FlyEase</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1">
			        	<select name="action" class="nav-link py-3 px-0 px-lg-3 rounded" onchange="handleAction(this.value)" style="border:none; font-size: 20px;">
						  <option value="abc">
						    	<div class="nav-link py-3 px-0 px-lg-3 rounded">
									<%
										String username =(String)session.getAttribute("loggedInUser");
										if(username != null){
											%>
											Hello, <%= username %>
									<%
										}
									%>
								</div>
						  </option>
						  <option value="withdraw">Withdraw</option>
						  <option value="withdraw11">Withdraw11</option>
						  <option value="logout">Log Out</option>
						</select>
		        	</li>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="container1">
    	<div class="heading">
	        <div class="video-container">
	            <video autoplay muted loop>
	                <source src="images/homevideo2.mp4" type="video/mp4">
	            </video>
	            <label class="headinglabel">Welcome To FlyEase</label>
			    <button type="submit" name="flightpagebutton" class="flightpagebutton" onclick="gotonextpage()">Click To View Flights <span class="icon"><img class="img" src="images/arrow.png"></i></span></button>
	        </div>
	    </div>
	</div>
	<div class="container2">
  <div class="flex-container">
    <div class="flex-slide home">
      <div class="flex-title flex-title-home" >EXPLORE</div>
      <div class="flex-about flex-about-home">
        <p>Every Dream Has A Destination.</p>
      </div>
    </div>
    <div class="flex-slide about">
      <div class="flex-title">TRAVEL</div>
      <div class="flex-about">
      	<p>Your Dream, Our Priority</p>
      </div>
    </div>
    <div class="flex-slide work">
      <div class="flex-title">OFFERS</div>
      <div class="flex-about">
        <p>Unlock Exclusive Deals to Your Chosen Destination!</p>
      </div>
    </div>
    <div class="flex-slide contact">
      <div class="flex-title" style="margin-top:35px;">FEEDBACK</div>
      <div class="flex-about" style="margin-top: -20px;">
        <p>Use the feedback form below</p>
        <form class="contact-form">
          <p>Email <input type="text" name="email"></p>
          <p>Comment <textarea type="text" name="comment"></textarea></p>
          <input class="btn1" type="submit" name="email" value="Send Message">
        </form>
      </div>
    </div>
  </div>
</div>
	
	<!-- Footer-->
	<footer class="footer text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						Ritesh Patil <br /> Mumbai, Maharashtra
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">About College</h4>
					<p class="lead mb-0">
						Sardar Patel Institue Of Technology<br>
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2023</small>
		</div>
	</div>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://s3-us-west-2.amazonaws.com/s.cdpn.io/769286/jquery.waitforimages.min.js'></script><script  src="./script.js"></script>
<script type="text/javascript">
function handleAction(value) {
    if (value === "logout") {
      // Perform logout functionality here
      window.location.href = "/logout"; // Example: Redirect to logout endpoint
    } else {
      // Handle other actions based on selected value
    }
  }

</script>
</body>
</html>




