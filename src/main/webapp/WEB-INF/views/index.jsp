
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
	
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
		crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
		rel="stylesheet" type="text/css" />
	<link
		href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
		rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/index-styles.css" rel="stylesheet" />
	
	
    <style>
        .marquee-container {
            width: 100%;
            overflow: hidden;
            white-space: nowrap;
        }

        .marquee-content {
            display: inline-block;
            animation: marquee 13s linear infinite;
            animation-delays: -3s;
        }


        @keyframes marquee {
            0%{transform: translateX(100%);}
            100%{transform: translateX(-100%);}
        }
        
        
        .header-container {
            position: relative;
            overflow: hidden;
            margin-top: 100px;
        }

        .header-slider {
            display: flex;
            width: fit-content;
        }

        .header-slider img {
            width: 100%;
            height: auto;
            opacity: 0;
            transition: opacity 0.5s;
        }

        .header-slider img.active {
            opacity: 10;
        }

        .slider-control {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            color: white;
            font-size: 2rem;
            cursor: pointer;
            z-index: 1;
        }

        .slider-control.left {
            left: 10px;
        }

        .slider-control.right {
            right: 10px;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var slider = document.querySelector('.header-slider');
            var images = document.querySelectorAll('.header-slider img');
            var totalImages = images.length;
            var currentIndex = 0;
            var duration = 3000; // 3 seconds

            function showImage(index) {
                for (var i = 0; i < totalImages; i++) {
                    images[i].classList.remove('active');
                }
                images[index].classList.add('active');
            }

            function slideToNext() {
                showImage(currentIndex);
                setTimeout(function() {
                    images[currentIndex].classList.remove('active');
                    currentIndex = (currentIndex + 1) % totalImages;
                    images[currentIndex].classList.add('active');
                    slider.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
                    slideToNext();
                }, duration);
            }

            slideToNext();

            document.querySelector('.slider-control.left').addEventListener('click', function() {
                images[currentIndex].classList.remove('active');
                currentIndex = (currentIndex - 1 + totalImages) % totalImages;
                images[currentIndex].classList.add('active');
                slider.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
            });

            document.querySelector('.slider-control.right').addEventListener('click', function() {
                images[currentIndex].classList.remove('active');
                currentIndex = (currentIndex + 1) % totalImages;
                images[currentIndex].classList.add('active');
                slider.style.transform = 'translateX(' + (-currentIndex * 100) + '%)';
            });
        });
    </script>
    
    
</head>
<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="/">FlyEase</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">About</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#airlines">Airlines</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Contact</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="adminlogin">Admin Login</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="login">User Login</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- Masthead-->
	<header>
			  <div class="header-container">
			        <div class="header-slider">
			            <img src="images/slider1.jpg" alt="Image 1" class="active">
			            <img src="https://www.flightshopee.com/f-images/slider/flight02.jpg" alt="Image 2">
			            <img src="https://wallpapercosmos.com/w/full/f/7/1/1274632-3840x2160-desktop-4k-aircraft-background-image.jpg" alt="Image 3">
			            <img src="images/slider4.jpg" alt="Image 4">
			            <img src="images/slider5.jpg" alt="Image 5">
			           	<img src="https://wallpapercosmos.com/w/full/3/c/5/1274766-3840x2160-desktop-4k-aircraft-wallpaper-image.jpg" alt="Image 6">
			        </div>
			        <div class="slider-control left">&#8249;</div>
			        <div class="slider-control right">&#8250;</div>
			    </div>
	</header>
	<br><br>
	<!-- About Section-->
	<section class="page-section bg-primary text-white mb-0" id="about">
		<div class="container">
			<!-- About Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-white">About</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- About Section Content-->
			<div class="row">
				<div class="col-lg-4 ms-auto">
					<p class="lead">Welcome to the airline booking app. We developed this project using java, springboot, JSP and servlet. This project is part of JAVA ISE 2 of SEM-II.</p>
				</div>
				<div class="col-lg-4 me-auto">
					<p class="lead">Devloper Details:<br>
						&emsp; Name: Ritesh Upendra Patil<br>
						&emsp; UCID: 2022510042<br>
						&emsp; Batch: C<br>
						&emsp; Department: MCA<br>
						&emsp; Subject: JAVA Mini Project<br>
						&emsp; Submission Date: 05/06/2023<br>
					</p>
				</div>
			</div>
		</div>
	</section>
	
	<section class="page-section" id="airlines">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Airlines</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="marquee-container">
				<div class="marquee-content">
					<img src="https://download.logo.wine/logo/Air_India/Air_India-Logo.wine.png" alt="Image 1" width="500" height="500">
					<img src="https://1000logos.net/wp-content/uploads/2021/07/SpiceJet-Logo.png" alt="Image 2" width="500" height="400" style="margin-top: 100px;">
					<img src="https://seekvectorlogo.com/wp-content/uploads/2022/01/indigo-vector-logo-2022.png" alt="Image 3" width="600" height="300" style="margin-right: 70px;">
					<img src="https://download.logo.wine/logo/Jet_Airways/Jet_Airways-Logo.wine.png" alt="Image 4" width="500" height="500">
					<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/AirAsia_Logo_Red.svg/1280px-AirAsia_Logo_Red.svg.png" alt="Image 5" width="300" height="200" style="margin-left: 70px;">
					<img src="https://logos-download.com/wp-content/uploads/2021/01/Vistara_Logo.png" alt="Image 6" width="600" height="150" style="margin-left: 120px;">
			     </div>
			</div>
				<br><br>
		</div>
	</section>
	
	
	<!-- Contact Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact
				Me</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" data-sb-form-api-token="API_TOKEN">
						<!-- Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">Full name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						<!-- Email address input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="email" type="email"
								placeholder="name@example.com"
								data-sb-validations="required,email" /> <label for="email">Email
								address</label>
							<div class="invalid-feedback" data-sb-feedback="email:required">An
								email is required.</div>
							<div class="invalid-feedback" data-sb-feedback="email:email">Email
								is not valid.</div>
						</div>
						<!-- Phone number input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="phone" type="tel"
								placeholder="(123) 456-7890" data-sb-validations="required" />
							<label for="phone">Phone number</label>
							<div class="invalid-feedback" data-sb-feedback="phone:required">A
								phone number is required.</div>
						</div>
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" id="message" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Message</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								To activate this form, sign up at <br /> <a
									href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
							</div>
						</div>
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl disabled" id="submitButton"
							type="submit">Send</button>
					</form>
					<br><br>
					<br><br>
				</div>
			</div>
		</div>
	</section>
	
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
			<small>Copyright &copy; FlyEase 2023</small>
		</div>
	</div>
	
	<div id="back-to-top" style="bottom: 20px; right: 20px; position: fixed; display: block; z-index: 1; cursor:pointer;" onclick="topFunction()">
	    <img src="images/uparrow.png">
	</div>

	
	<script>
    backtotop = document.getElementById("back-to-top");

      window.onscroll = function() {scrollFunction()};

      function scrollFunction() {
          let threshold_pixel_value=1200;
          if (document.body.scrollTop > threshold_pixel_value || document.documentElement.scrollTop > threshold_pixel_value) {
              backtotop.style.display = "block";
          } else {
              backtotop.style.display = "none";
          }
      }

      function topFunction() {
        document.body.scrollTop = 0; 
        document.documentElement.scrollTop = 0; 
      }
  </script>
	
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
</body>
</html>