<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Booking Form</title>
<link rel="icon" type="image/x-icon" href="images/head.png" />

<link href="css/index-styles.css" rel="stylesheet" />
<link href="css/booking.css" rel="stylesheet" />


<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script src="scripts/payment.js"></script>
 
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
		<div class="abc">
			<a class="navbar-brand" href="" style="margin-left: 80px">FlyEase</a>
		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ms-auto">
        	<li class="nav-item mx-0 mx-lg-1">
	        	<select name="action" class="nav-link py-3 px-0 px-lg-3 rounded" onchange="handleAction(this.value)" style="margin-right: 40px; font-size: 25px;">
				  <option value="abc">
				    	<div class="nav-link py-3 px-0 px-lg-3 rounded">
							<%
								String username =(String)session.getAttribute("loggedInUser");
								if(username != null){
									%>
									Welcome, <%= username %>
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
	</nav>
	<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="booking-form">
			<form method="post" action="booking" class="form" id="booking-form">
			<div class="container1">
				<div class="head1">
					<div class="heading1">
						<label>Personal & Contact Details</label>
					</div>
					<div class="heading2">
						<label>Name should be as per Govt. approved photo-ID<br>
						Flight related information will be sent to the submitted email address/contact number.</label>
					</div>
				</div>
				<div class="line1">
					<div class="input1">
						<label for="title">Title*</label>
						<select name="title" id="title" required style="height: 47px;">
							 <option value="Mrs">Mr.</option>
							 <option value="Mrs.">Mrs.</option>
							 <option value="Miss.">Miss.</option>
						</select>	
					</div>
					<div class="input1">
						<div class="part1">
							<label for="fname">First Name*</label><br>
							<input type="text" name="fname" id="fname" />
							<input type="hidden" name="fname" value="${param.fname}">
						</div>
						<div class="part2">
							<span class="errorclass" id="errorfname" style="color: red;"></span>
						</div>
					</div>
					<div class="input1">
						<div class="part1">
							<label for="lname">Last Name*</label><br>
							<input type="text" name="lname" id="lname" />
							<input type="hidden" name="lname" value="${param.lname}">
							
						</div>
						<div class="part2">
							<span class="errorclass" id="errorlname" style="color: red;"></span>
						</div>
					</div>
					<div class="input1" style="margin-right: -10px;">
						<div class="part1">
							<label for="contact">Contact Number*</label><br>
							<input type="text" name="contact" id="contact"/>
						</div>
						<div class="part2">
							<span class="errorclass" id="errorcontact" style="color: red;"></span>
						</div>
					</div>
				</div>
				<br>
				<div class="line2">
					<div class="input1">
						<div class="part1">
							<label for="email">Email*</label><br>
							<input type="email" name="email" id="email" />
						</div>
						<div class="part2">
							<span class="errorclass" id="erroremail" style="color: red;"></span>
						</div>
					</div>
					<div class="input1">
						<div class="part1">
							<label for="extracontact">Extra Contact Details*</label><br>
							<input type="text" name="extracontact" id="extracontact" />
						</div>
	
						<div class="part2">
							<span class="errorclass" id="errorextracontact" style="color: red;"></span>
						</div>
					</div>
				</div>
				<br><br>
				<div class="head1">
					<div class="heading1" style="margin-bottom: 10px;">
						<label>Other Details</label>
					</div>
				</div>
				<div class="line2">
					<div class="input2">
						<div class="part1">
							<label for="country">Country*</label><br>
							<input type="text" name="country" id="country" />
						</div>
						<div class="part2">
							<span class="errorclass" id="errorcountry" style="color: red;"></span>
						</div>
					</div>
					<div class="input2">
						<div class="part1">
							<label for="state">State*</label><br>
							<input type="text" name="state" id="state" />
						</div>
						<div class="part2">
							<span class="errorclass" id="errorstate" style="color: red;"></span>
						</div>
					</div>
					<div class="input2">
						<div class="part1">
							<label for="city">City*</label><br>
							<input type="text" name="city" id="city" />
						</div>
						<div class="part2">
							<span class="errorclass" id="errorcity" style="color: red;"></span>
						</div>
					</div>
					<div class="input2" style="margin-right: -10px;">
						<div class="part1">
							<label for="pin">Pin-Code*</label><br>
							<input type="text" name="pin" id="pin" />
						</div>
						<div class="part2">
							<span class="errorclass" id="errorpin" style="color: red;"></span>
						</div>
					</div>
				</div>
				<br>
				<div class="line2">
					<div class="input1">
						<div class="part1">
							<label for="aadhar">Aadhar*</label><br>
							<input type="text" name="aadhar" id="aadhar" />
						</div>
						<div class="part2">
							<span class="errorclass" id="erroraadhar" style="color: red;"></span>
						</div>
					</div>
					<div class="input1">
						<div class="part1">
							<label for="dob">Date Of Birth*</label><br>
							<input type="date" name="dob" id="dob" style="width: 200px;"/>
						</div>
						<div class="part2">
							<span class="errorclass" id="errordob" style="color: red;"></span>
						</div>
					</div>
					<div class="input1">
						<label for="age">Age</label><br>
						<input type="text" name="age" id="age" style="margin-top: -24px;" readonly/>
					</div>
				</div>
				<br>
				<div class="agree-term">
					<input type="checkbox" name="agree-term" id="agree-term" /><label for="agree-term" style="margin-top: -15px;">&nbsp; Retain my details for the next visit.</label><br>
					<input type="checkbox" name="agree-term" id="agree-term" /><label for="agree-term" style="margin-top: -15px;">&nbsp; Not to receive future communication and newsletter from SpiceJet over text, WhatsApp or e-mail.</label>													
				</div>
			</div>
			<div class="container2">
				<div class="head2">
					<div class="heading1">
						<label>Trip Summary</label>
					</div>
					<div class="heading2">
							<label>Convenience fee may apply</label>
							<img class="logo4" src="images/info.png" alt="My Image">
							<span class="tooltip-text"><b>A non-refundable convenience fee shall be applicable as below:</b><br><br>
									<ul>
										<li>Rs. 350 per passenger per sector for UPI payments.</li>
										<li>Rs. 350 per passenger per sector for Domestic and Rs. 550 per passenger per sector for International on all other online payment modes.</li>
										<li>Convenience fee will not be applicable for payments made with SpiceCash and SpiceJet Gift Cards & Vouchers.</li>
									</ul></span>
										
					</div>
				</div>
				<div class="line1">
					<div class="abc">
						<div class="l1">
							<label id="source">${param.source}</label>
							<input type="hidden" name="source" id="source" value="${param.source}" />
						</div>
						<div class="l2">
							<img class="logo" src="images/arrow.png" alt="My Image">
						</div> 
						<div class="l3">
							<label class="destination">${param.destination}</label>
							<input type="hidden" name="destination" id="destination" value="${param.destination}" />
						</div>
					</div>
					<div class="l4">
						<img class="logo2" src="images/rupee.png" alt="My Image">
					</div>
					<div class="l5">
						<label id="price">${param.price}</label>
						<input type="hidden" name="price" id="price" value="${param.price}" />
					</div>
				</div>
				<div class="line2">
					<div class="l6">
						<label id="airline">${param.airline}</label> - <label id="flightid">${param.flightId}</label>
						<input type="hidden" name="airline" id="airline" value="${param.airline}" /><input type="hidden" name="flightid" id="flightid" value="${param.flightId}" />
					</div>
					<div class="l7">
						<label id="date">${param.date}</label> <label id="time">${param.time}</label>
						<input type="hidden" name="date" id="date" value="${param.date}" /><input type="hidden" name="time" id="time" value="${param.time}" />
					</div>
				</div>
				<div class="line3">
					<hr>
				</div>
				<div class="line4">
					<div class="line4-1">
						<div class="l8">
							<label id="amount">Payable Amount</label>
						</div>
						<div class="l10">
							<label>(Incl. of taxes)</label>
						</div>					
					</div>
					<div class="line4-1">
						<div class="l9">
							<img class="logo3" src="images/rupee.png" alt="My Image">
							<label style="margin-top: 20px">${param.price}</label>
							<input type="hidden" id="payment_field" value="${param.price}" />
						</div>
					</div>
				</div>
				
				<div class="line5">
					<button type="submit" name="bookticket" id="proceedToPayButton" class="form-submit" />Proceed To Pay <span class="icon"><img class="img" src="images/rightarrow.png"></span></button>
				</div>
					
			</div>
		</form>
	</div>
	
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
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
	
<!-- JS -->

	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>
			$(document).ready(function() {
            // Handle the form submission
            $("#booking-form").submit(function(event) {
            	
                event.preventDefault(); // Prevent the default form submission behavior
                
                // Perform AJAX request to initiate payment
                $.ajax({
                    url: "/create-order",
                    type: "POST",
                    data: JSON.stringify({ "amount": $("#payment_field").val() }), // Pass the payment amount
                    contentType: "application/json",
                    dataType: "json",
                    success: function(response) {
                    	console.log(response);
                        // Handle the response from the server
                        if (response.status === "created") {
                        	var orderId = response.id; 
                            // Redirect to the Razorpay payment form with the order ID
                            var options = {
                            	order_id: orderId,
                                key: "", //enter your razorpay account API ID
                           	    amount: $("#payment_field").val(),
                				currency: "INR",
                				name: "FlyEase",
                				description: "Ticket Payment",
               					image: "https://static.vecteezy.com/system/resources/previews/003/513/751/original/cute-monkey-hanging-tree-cartoon-illustration-free-vector.jpg",
                                handler: function(response) {
                                    // Handle the payment success
                                    alert("Payment successful!");
                                    window.location.href = "ticketdetails";
                                },
                                prefill: {
                                    name: "",
                                    email: "",
                                    contact: "",
                                },
                                notes:{
            						address: "Ritesh",
            					},
                                theme: {
                                    color: "#3399cc",
                                },
                            };
                            var rzp1 = new Razorpay(options);
                            rzp1.on("payment.failed", function(response) {
                                // Handle the payment failure
                                alert("Payment failed.");
                                // You can handle the failure scenario here if needed
                            });
                            rzp1.open();
                        } else {
                            // Handle error from server
                            alert("Error initiating payment.");
                        }
                    },
                    error: function(xhr, status, error) {
                        // Handle the error scenario
                        alert("Error: " + error);
                    }
                });
            });
        });


    document.addEventListener("DOMContentLoaded", function () {
        // Get references to the date of birth and age input fields
        const dobInput = document.getElementById("dob");
        const ageInput = document.getElementById("age");

        // Add an event listener to the date of birth input field
        dobInput.addEventListener("change", function () {
            // Get the selected date of birth from the input field
            const dob = new Date(dobInput.value);

            // Calculate the age
            const age = calculateAgeFromDateOfBirth(dob);

            // Update the age input field with the calculated age
            ageInput.value = age;
        });

        function calculateAgeFromDateOfBirth(dob) {
            const currentDate = new Date();
            const diff = currentDate - dob;
            const ageDate = new Date(diff);
            return Math.abs(ageDate.getUTCFullYear() - 1970);
        }
    });
    
    
    function handleAction(value) {
        if (value === "logout") {
          // Perform logout functionality here
          window.location.href = "/logout"; // Example: Redirect to logout endpoint
        } else {
          // Handle other actions based on selected value
        }
      }
    
    var status = "${status}";
    /* if (status === "success") {
        var message = "${message}";
        swal("Success", message, "success")
            .then(function() {
                /* window.location.href = "/booking"; */
    /*         });
    } */
    
   

	
	function validate(event) {
	    event.preventDefault();

	    var fnameInput = document.getElementById('fname');
	    var fnameError = document.getElementById('errorfname');
	    var fnameValue = fnameInput.value.trim();
	    var fnamePattern = /^[A-Za-z]+$/;
	    if (!fnamePattern.test(fnameValue)) {
	        fnameError.textContent = 'Invalid name. Enter only characters.';
	    } else {
	        fnameError.textContent = '';
	    }

	    
	    var lnameInput = document.getElementById('lname');
	    var lnameError = document.getElementById('errorlname');
	    var lnameValue = lnameInput.value.trim();
	    var lnamePattern = /^[A-Za-z]+$/;
	    if (!lnamePattern.test(lnameValue)) {
	        lnameError.textContent = 'Invalid name. Enter only characters.';
	    } else {
	        lnameError.textContent = '';
	    }

	    
	    var contactInput = document.getElementById('contact');
	    var contactError = document.getElementById('errorcontact');
	    var contactValue = contactInput.value.trim();
	    var contactPattern = /^[1-9]\d{9}$/;
	    if (!contactPattern.test(contactValue)) {
	        contactError.textContent = 'Contact should be exactly 10 digits.';
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
	    
	    
	    var extracontactInput = document.getElementById('extracontact');
	    var extracontactError = document.getElementById('errorextracontact');
	    var extracontactValue = extracontactInput.value.trim();
	    var extracontactPattern = /^[1-9]\d{9}$/;
	    if (!extracontactPattern.test(extracontactValue)) {
	    	extracontactError.textContent = 'Contact should be exactly 10 digits.';
	    } else {
	    	extracontactError.textContent = '';
	    }
	    
	    var countryInput = document.getElementById('country');
	    var countryError = document.getElementById('errorcountry');
	    var countryValue = countryInput.value.trim();
	    var countryPattern = /^[A-Za-z]+$/;
	    if (!countryPattern.test(countryValue)) {
	    	countryError.textContent = 'Enter only characters.';
	    } else {
	    	countryError.textContent = '';
	    }
	    
	    
	    var stateInput = document.getElementById('state');
	    var stateError = document.getElementById('errorstate');
	    var stateValue = stateInput.value.trim();
	    var statePattern = /^[A-Za-z]+$/;
	    if (!statePattern.test(stateValue)) {
	    	stateError.textContent = 'Enter only characters.';
	    } else {
	    	stateError.textContent = '';
	    }
	    
	    
	    var cityInput = document.getElementById('city');
	    var cityError = document.getElementById('errorcity');
	    var cityValue = cityInput.value.trim();
	    var cityPattern = /^[A-Za-z]+$/;
	    if (!cityPattern.test(cityValue)) {
	    	cityError.textContent = 'Enter only characters.';
	    } else {
	    	cityError.textContent = '';
	    }
	    
	    
	    var pinInput = document.getElementById('pin');
	    var pinError = document.getElementById('errorpin');
	    var pinValue = pinInput.value.trim();
	    var pinPattern = /^[1-9][0-9]{5}$/;
	    if (!pinPattern.test(pinValue)) {
	    	pinError.textContent = 'Invalid pin. Enter 6 digits.';
	    } else {
	    	pinError.textContent = '';
	    }
	    
	    
	    var aadharInput = document.getElementById('aadhar');
	    var aadharError = document.getElementById('erroraadhar');
	    var aadharValue = aadharInput.value.trim();
	    var aadharPattern = /^[1-9][0-9]{11}$/;
	    if (!aadharPattern.test(aadharValue)) {
	    	aadharError.textContent = 'Invalid Aadhar details.';
	    } else {
	    	aadharError.textContent = '';
	    }
	    
	    
	    var dobInput = document.getElementById('dob');
	    var dobError = document.getElementById('errordob');
	    var dobValue = dobInput.value.trim();
	    if (dobValue === '') {
	        dobError.textContent = 'Please select a valid date of birth.';
	    } else {
	        dobError.textContent = '';
	    }
	    
	    
	    
	        var contactInput = document.getElementById('contact');
	        var extracontactInput = document.getElementById('extracontact');
	        var contactError = document.getElementById('errorcontact');
	        var extracontactError = document.getElementById('errorextracontact');
	        var contactValue = contactInput.value.trim();
	        var extracontactValue = extracontactInput.value.trim();
	        if (contactValue === extracontactValue) {
	            extracontactError.textContent = 'Contact & Extra Contact must be different.';
	        } else {
	            extracontactError.textContent = '';
	        }
	    
	    
	    
	    /* var inputs = [fnameInput, lnameInput, contactInput, emailInput, extracontactInput, countryInput, stateInput, cityInput, pinInput, aadharInput];
        var errors = [fnameError, lnameError, contactError, emailError, extracontactError, countryError, stateError, cityError, pinError, aadharError];

        for (var i = 0; i < inputs.length; i++) {
            if (inputs[i].value.trim() === '') {
                errors[i].textContent = 'This field should not be blank.';
            }
        } */
        
        

        var errors = [fnameError, lnameError, contactError, emailError, extracontactError, countryError, stateError, cityError, pinError, aadharError, dobError];
	    var hasErrors = errors.some(function (error) {
	        return error.textContent !== '';
	    });
	
	    if (!hasErrors) {
	        document.getElementById('booking-form').submit();
	    }


	}

	
	
/* ---------------------------------------------------------------------------------------------------------	 */
	
		var fnameInput = document.getElementById('fname');
        fnameInput.addEventListener('input', function() {
            var fnameValue = fnameInput.value.trim();
            var fnameError = document.getElementById('errorfname');
            var fnamePattern = /^[A-Za-z]+$/;
            if (fnamePattern.test(fnameValue)) {
                fnameError.textContent = '';
            }
        });
        
        
        
        var lnameInput = document.getElementById('lname');
        lnameInput.addEventListener('input', function() {
            var lnameValue = lnameInput.value.trim();
            var lnameError = document.getElementById('errorlname');
            var lnamePattern = /^[A-Za-z]+$/;
            if (lnamePattern.test(lnameValue)) {
                lnameError.textContent = '';
            }
        });
	
		var contactInput = document.getElementById('contact');
	    contactInput.addEventListener('input', function() {
	        var contactValue = contactInput.value.trim();
	        var contactError = document.getElementById('errorcontact');
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
	    
	    
	    var extracontactInput = document.getElementById('extracontact');
	    extracontactInput.addEventListener('input', function() {
	        var extracontactValue = extracontactInput.value.trim();
	        var extracontactError = document.getElementById('errorextracontact');
	        var extracontactPattern = /^[1-9]\d{9}$/;
	        if (extracontactPattern.test(extracontactValue)) {
	            extracontactError.textContent = '';
	        }
	    });

	    
	    
	    var countryInput = document.getElementById('country');
        countryInput.addEventListener('input', function() {
            var countryValue = countryInput.value.trim();
            var countryError = document.getElementById('errorcountry');
            var countryPattern = /^[A-Za-z]+$/;
            if (countryPattern.test(countryValue)) {
                countryError.textContent = '';
            }
        });
        
        
        var stateInput = document.getElementById('state');
        stateInput.addEventListener('input', function() {
            var stateValue = stateInput.value.trim();
            var stateError = document.getElementById('errorstate');
            var statePattern = /^[A-Za-z]+$/;
            if (statePattern.test(stateValue)) {
                stateError.textContent = '';
            }
        });
        
        
        var cityInput = document.getElementById('city');
        cityInput.addEventListener('input', function() {
            var cityValue = cityInput.value.trim();
            var cityError = document.getElementById('errorcity');
            var cityPattern = /^[A-Za-z]+$/;
            if (cityPattern.test(cityValue)) {
                cityError.textContent = '';
            }
        });
        
        
        var pinInput = document.getElementById('pin');
	    pinInput.addEventListener('input', function() {
	        var pinValue = pinInput.value.trim();
	        var pinError = document.getElementById('errorpin');
	        var pinPattern = /^[1-9][0-9]{5}$/;
	        if (pinPattern.test(pinValue)) {
	            pinError.textContent = '';
	        }
	    });
	    
	    var aadharInput = document.getElementById('aadhar');
	    aadharInput.addEventListener('input', function() {
	        var aadharValue = aadharInput.value.trim();
	        var aadharError = document.getElementById('erroraadhar');
	        var aadharPattern = /^[1-9][0-9]{11}$/;
	        if (aadharPattern.test(aadharValue)) {
	            aadharError.textContent = '';
	        }
	    });
	    
    
	    var dobInput = document.getElementById('dob');
	    dobInput.addEventListener('input', function() {
	        var dobValue = dobInput.value.trim();
	        var dobError = document.getElementById('errordob');
	        if (dobValue !== '') {
	            dobError.textContent = '';
	        }
	    });
	    
	    
	 	// Event listener for contact input field
	    var contactInput = document.getElementById('contact');
	    contactInput.addEventListener('input', function() {
	        validateContacts();
	    });

	    // Event listener for extra contact input field
	    var extracontactInput = document.getElementById('extracontact');
	    extracontactInput.addEventListener('input', function() {
	        validateContacts();
	    });
	    
	    
	    
	    /* ==================================================================================================== */
	    
		/* const paymentstart=() => {
			console.log("Payment Started");
			let amount = $("#payment_field").val();
			console.log(amount);
			if(amout=="" || amount==null){
				alert("Amount is required");
				return;
			}
		}; */
	
	
</script>
</body>
</html>

	