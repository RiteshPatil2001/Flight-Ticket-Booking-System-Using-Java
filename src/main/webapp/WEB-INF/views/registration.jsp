<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign up</title>
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
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="abc">
			<a class="navbar-brand" href="/" style="margin-left: 80px">FlyEase</a>
		</div>
	</nav>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="main" style="margin-top: -360px; height: 1350px; background: url('https://media.cntraveler.com/photos/5716998880cf3e034f972cd2/master/w_5256,h_3508,c_limit/GettyImages-158933526.jpg');" >
		<!-- Sign up form -->
		<section class="signup">
			<div class="container" style="width: 700px; margin-left: 300px; opacity: 0.8;">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
					
						<form method="post" action="register" class="register-form"
							id="register-form">
							<div class="form-group">
								<div class="part1">
									<label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
									<input type="text" name="uname" id="name" placeholder="Full Name"/>
								</div>
								<div class="part2">
									<span class="errorclass" id="errorname" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="email"><i class="zmdi zmdi-email"></i></label>
									<input type="email" name="uemail" id="email" placeholder="Your Email"/>
								</div>
								<div class="part2">
									<span class="errorclass" id="erroremail" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label> 
									<input type="text" name="username" id="username" placeholder="Create a Username"/>
								</div>
								<div class="part2">
									<span class="errorclass" id="erroruser" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label> 
									<input type="password" name="upwd" id="pass" placeholder="Create a Password" />
									<img class="eye" src="images/eye.png" onclick="showpassword()" alt="My Image">
								</div>
								<div class="part2">
									<span class="errorclass" id="errorpass" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="re-pass"><i class="zmdi zmdi-lock"></i></label>
									<input type="password" name="re_upwd" id="re_pass" placeholder="Repeat your password"/>
									<img class="eye" src="images/eye.png" onclick="showrepassword()" alt="My Image">
								</div>
								<div class="part2">
									<span class="errorclass" id="errorrepass" style="color: red;"></span>
								</div>
							</div>
							<div class="form-group">
								<div class="part1">
									<label for="contact"><i class="zmdi zmdi-phone"></i></label>
									<input type="text" name="umobile" id="contact" placeholder="Contact no"/>
								</div>
								<div class="part2">
									<span class="errorclass" id="error" style="color: red;"></span>
								</div>						
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term" class="agree-term" required/> <label for="agree-term" class="label-agree-term" ><span><span></span></span>I agree all statements in <a href="#" class="term-service">Terms of service</a></label>
								<span class="errorclass" id="erroragree" style="color: red;"></span>							
							</div>
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup" class="form-submit" value="Register" onclick="validate(event)" />
							</div>
						</form>
						<a href="login" class="signup-image-link" style="margin-left: -160px; margin-top: 20px;">I am already a member</a>
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
        if (status === "success") {
            var message = "${message}";
            swal("Success", message, "success")
                .then(function() {
                    window.location.href = "/login";
                });
        }
        
        
        function showpassword() {
            var passwordField = document.getElementById("pass");
            if (passwordField.type === "password") {
              passwordField.type = "text";
            } else {
              passwordField.type = "password";
            }
          }
        
        function showrepassword() {
            var passwordField = document.getElementById("re_pass");
            if (passwordField.type === "password") {
              passwordField.type = "text";
            } else {
              passwordField.type = "password";
            }
          }
        
        
        function validate(event) {
        	event.preventDefault();
        	
        	
        	var contactInput = document.getElementById('contact');
            var contactError = document.getElementById('error');
            var contactValue = contactInput.value.trim();

            var contactPattern = /^[1-9]\d{9}$/;
            if (!contactPattern.test(contactValue)) {
                contactError.textContent = 'Contact number should be  exactly 10 digits.';
            } else {
                contactError.textContent = '';
            }
            
            
            
            var emailInput = document.getElementById('email');
            var emailError = document.getElementById('erroremail');
            var emailValue = emailInput.value.trim();

           
            var emailPattern = /\S+@\S+\.\S+/;
            if (!emailPattern.test(emailValue)) {
                emailError.textContent = 'Invalid email address.';
            } else {
                emailError.textContent = '';
            }
            
            
            
            
           
            
            
            
            
            var nameInput = document.getElementById('name');
            var nameError = document.getElementById('errorname');
            var nameValue = nameInput.value.trim();

            var namePattern = /^(\w+\s){1,2}\w+$/;
            if (!namePattern.test(nameValue)) {
                nameError.textContent = 'Invalid name. Please enter full name.';
            } else {
                nameError.textContent = '';
            }
            
            
            var userInput = document.getElementById('username');
            var userError = document.getElementById('erroruser');
            var userValue = userInput.value.trim();

            var userPattern = /^[a-zA-Z][a-zA-Z0-9]*$/;
            if (!userPattern.test(userValue)) {
                userError.textContent = 'Invalid username.';
                
            } else {
                userError.textContent = '';
            }
            
            
            var passwordInput = document.getElementById('pass');
            var rePasswordInput = document.getElementById('re_pass');
            var passwordError = document.getElementById('errorpass');
            var rePasswordError = document.getElementById('errorrepass');
            var passwordValue = passwordInput.value.trim();
            var rePasswordValue = rePasswordInput.value.trim();

            if (passwordValue !== rePasswordValue) {
                passwordError.textContent = ' ';
                rePasswordError.textContent = 'Passwords do not match.';
            } else {
                passwordError.textContent = '';
                rePasswordError.textContent = '';
                
            }
                  
            
            var passPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/;
            if (!passPattern.test(passwordValue) || (passwordValue.length < 8 || passwordValue.length > 15)) {
            	passwordError.textContent = 'Invalid Password';
            	
            }
            else {
            	passwordError.textContent = '';
            }
            
           
                     
            
            var agreeTermCheckbox = document.getElementById('agree-term');
            var agreeTermError = document.getElementById('erroragree');

           	if (!agreeTermCheckbox.checked) {
                agreeTermError.textContent = 'You must agree to the Terms of Service.';
            } else {
                agreeTermError.textContent = '';
            }
            
           	
           	
           	
            
            
            var inputs = [contactInput, emailInput, nameInput, userInput, passwordInput, rePasswordInput, agreeTermCheckbox];
            var errors = [contactError, emailError, nameError, userError, passwordError, rePasswordError, agreeTermError];

            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].value.trim() === '') {
                    errors[i].textContent = 'This field should not be blank.';
                }
            }
            
            

            var errors = [contactError, emailError, nameError, userError, passwordError, rePasswordError, agreeTermError];
		    var hasErrors = errors.some(function (error) {
		        return error.textContent !== '';
		    });
		
		    if (!hasErrors) {
		        document.getElementById('register-form').submit();
		    }  
        }
        
        
        
        
        
        

       var contactInput = document.getElementById('contact');
        contactInput.addEventListener('input', function() {
            var contactValue = contactInput.value.trim();
            var contactError = document.getElementById('error');

            var contactPattern = /^[1-9]\d{9}$/;
            if (contactPattern.test(contactValue)) {
                contactError.textContent = '';
            }
        });
       
        
        var emailInput = document.getElementById('email');
        emailInput.addEventListener('input', function() {
            var emailValue = emailInput.value.trim();
            var emailError = document.getElementById('erroremail');

            var emailPattern = /\S+@\S+\.\S+/;
            if (emailPattern.test(emailValue)) {
                emailError.textContent = '';
            }
        });
        
        
        var passwordInput = document.getElementById('pass');
        passwordInput.addEventListener('input', function() {
            var passwordValue = passwordInput.value.trim();
            var passwordError = document.getElementById('errorpass');

            var passPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]+$/;
            if (passPattern.test(passwordValue)) {
            	passwordError.textContent = '';
            }
        });
        
        
        var nameInput = document.getElementById('name');
        nameInput.addEventListener('input', function() {
            var nameValue = nameInput.value.trim();
            var nameError = document.getElementById('errorname');

            var namePattern = /^(\w+\s){1,2}\w+$/;
            if (namePattern.test(nameValue)) {
                nameError.textContent = '';
            }
        });
        
        
        
        var userInput = document.getElementById('username');
        userInput.addEventListener('input', function() {
            var userValue = userInput.value.trim();
            var userError = document.getElementById('erroruser');

            var userPattern = /^[a-zA-Z][a-zA-Z0-9]*$/;
            if (userPattern.test(userValue)) {
                userError.textContent = '';
            }
        });
        
        document.getElementById('agree-term').addEventListener('change', function() {
        	document.getElementById('erroragree').textContent = '';
        });

        
       
    </script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>	