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
	<div class="main" style="margin-top: -360px; height: 1500px; background: url('images/udav2.jpeg');" >
		<!-- Sign up form -->
		<section class="signup">
			<div class="container" style="width: 700px; margin-left: 300px; opacity: 0.8;">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Add New Flight</h2>
					
						<form method="post" action="addflight" class="register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account-box"></i></label> <input
									type="text" name="flightid" id="flightid" placeholder="Flight ID" required/>
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-flight-takeoff"></i></label> <input
									type="text" name="source" id="source" placeholder="Source" required/>
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-flight-land"></i></label> <input
									type="text" name="destination" id="destination" placeholder="Detination" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-time-interval"></i></label>
								<input type="text" name="timetoreach" id="timetoreach"
									placeholder="Time To Reach" required/>
							</div>
							<div class="form-group">
								<label for="re-pass"><i class="zmdi zmdi-airplane"></i></label>
								<input type="text" name="airline" id="airline"
									placeholder="Airline" required/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-calendar-note"></i></label>
								<input type="text" name="date" id="date"
									placeholder="Flight Date" required/>
							</div>
							
							<div class="form-group">
								<label for="sourcetime"><i class="zmdi zmdi-calendar-note"></i></label>
								<input type="text" name="sourcetime" id="sourcetime"
									placeholder="Source Time" required/>
							</div>
							<div class="form-group">
								<label for="destinationtime"><i class="zmdi zmdi-calendar-note"></i></label>
								<input type="text" name="destinationtime" id="destinationtime"
									placeholder="Destination Time" required/>
							</div>
							
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-money"></i></label>
								<input type="text" name="fprice" id="fprice"
									placeholder="First Class Price" required/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-money"></i></label>
								<input type="text" name="eprice" id="eprice"
									placeholder="Economy Class Price" required/>
							</div>
							<div class="form-group">
								<label for="contact"><i class="zmdi zmdi-money"></i></label>
								<input type="text" name="bprice" id="bprice"
									placeholder="Business Class Price" required/>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Add Flight" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>
	<div class="copyright py-4 text-center text-white">
		<div class="container" style="background-color: #1a252f">
			<small>Copyright &copy; FlyEase 2023</small>
		</div>
	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
<script type="text/javascript">
       // Check if the status attribute is set to "success"
        var status = "${status}";
        if (status === "success") {
            var message = "${message}";
            swal("Success", message, "success")
                .then(function() {
                    window.location.href = "/addflight";
                });
        }
    </script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>