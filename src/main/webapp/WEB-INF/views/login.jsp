<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>
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
	.part1 {
        position: relative;
    }

    .part1 label {
        position: absolute;
        left: 5px;
        top: 50%;
        transform: translateY(-50%);
    }

    .part1 input {
        padding-left: 25px;
        margin-left: 10px;
    }

    .errorclass {
        color: red;
        margin-top: 5px;
        margin-left: 15px;
    }
    
    .form-group{
	display: flex;
	flex-direction: column;
	margin-top: -15px;
	}
	 .errorclass {
	        margin-top: 5px;
	        position: relative;
	                color: red;
	        
	    }
	.zmdi{
		position: absolute;
	    left: 5px;
	    top: 50%;
	    transform: translateY(-60%);
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
			<a class="navbar-brand" href="/" style="margin-left: 80px">FlyEase</a>
		</div>
	</nav>


	<div class="main" style="height: 100px; margin-top: 0px; background: url('images/login.jpg');">
		<!-- Sing in  Form -->
		<section class="sign-in" style="height: 100px;">
			<div class="container" style="width: 500px; margin-left: 50px; margin-top: -360px; margin-bottom: -100px; opacity: 0.7;">
				<div class="signin-content">
					<div class="signin-form">
						<h2 class="form-title">Login</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<div class="part1">
									<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
									<input type="text" name="username" id="username" placeholder="Username" />
								</div>
								<div class="part2">
									<span class="errorclass" id="erroruser" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="password"><i class="zmdi zmdi-lock"></i></label> 
									<input type="password" name="password" id="password" placeholder="Password" />
									<img class="eye" src="images/eye.png" onclick="showpassword()" alt="My Image">
								</div>
								<div class="part2">
									<span class="errorclass" id="errorpass" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me" class="agree-term" /> <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
							</div>
						</form>
						
						<a href="register" class="signup-image-link" style="margin-left: -120px; margin-top: 20px;">Create an account</a>
						<div class="social-login">
							<span class="social-label">Or login with</span><br>
							<ul class="socials" style="margin-top: 10px;">
								<li><img class="img" src="images/google.png" style="margin-left: 15px; cursor: pointer;"></li>
								<li><img class="img" src="images/outlook.png" style="margin-left: 15px; cursor: pointer;"></li>
								<li><img class="img" src="images/yahoo.png" style="margin-left: 15px; cursor: pointer;"></li>
							</ul>
						</div>
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
	
var status = "${status}";
if (status === "failed") {
    swal("Sorry", "Wrong Username/Password", "error")
        .then(function() {
            window.location.href = "/login";
        });
}

function showpassword() {
    var passwordField = document.getElementById("password");
    if (passwordField.type === "password") {
      passwordField.type = "text";
    } else {
      passwordField.type = "password";
    }
  }
</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>