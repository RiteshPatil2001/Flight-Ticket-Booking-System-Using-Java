<%@ page import="java.sql.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.flightticketbookingSystem.models.Flight" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Flights</title>
    <link rel="icon" type="image/x-icon" href="images/head.png" />

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    
    <!-- Main css -->
    <link rel="stylesheet" href="css/flights.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
          rel="stylesheet" type="text/css" />
    <link
            href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
            rel="stylesheet" type="text/css" />
    <link href="css/index-styles.css" rel="stylesheet" />

    <style>

    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="abc">
        <a class="navbar-brand" href="home" style="margin-left: 80px">FlyEase</a>
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

	<div class="flight-page" style="margin-top: 120px">
		<div class="Pagehead">
			<h2 class="form-title" style="margin-left: 75px; margin-bottom: 20px;">Flight Details</h2>
		</div>
		<div class="search-form">
		    <form action="/search" method="GET">
		      <input type="text" name="query" placeholder="Search Source/Destination..." />
		      <input type="submit" value="Search" />
		    </form>
		</div>
	</div>

<div style="min-height: 600px; max-height: fit-content;">
    <% List<Flight> flights = (List<Flight>) request.getAttribute("flights");
    if (flights != null) {
        if (!flights.isEmpty()) {
        	for (Flight flight : flights) {
    %>
    <div>
		<label class="Price">Prices</label><br>
		<label class="Economy">Economy</label><label class="First">First</label><label class="Business">Business</label>
	</div>
	<div class="card1">	
		<div class="container1">
			<input type="hidden" id="time" value="<%= flight.getSourcetime() %>">
			<label class="Sourcetime"><%= flight.getSourcetime() %></label><br>
			<label class="Source"><%= flight.getSource() %></label>	
			<input type="hidden" id="source" value="<%= flight.getSource() %>">	
		</div>
		<div class="container2">
			<img class="logo" src="images/plane-icon.png" alt="My Image"><img class="line1" src="images/line1.png" alt="My Image">
		</div>
		<div class="container3">
			<label class="timetoreach"><%= flight.getTimetoreach() %></label><br>
			<label class="Date"><%= flight.getDate() %></label>
			<input type="hidden" id="date" value="<%= flight.getDate() %>">
		</div>
		<div class="container4">
			<img class="line2" src="images/line2.png" alt="My Image">
		</div>
		<div class="container5">
			<label class="Destinationtime"><%= flight.getDestinationtime() %></label><br>
			<label class="Destination"><%= flight.getDestination() %></label>
			<input type="hidden" id="destination" value="<%= flight.getDestination() %>">
		</div>
		<div class="container6">
			<label class="Flightid"><%= flight.getFlightid() %></label><br>
			<input type="hidden" id="flightId" value="<%= flight.getFlightid() %>">
			<label class="Airline"><%= flight.getAirline() %></label>
			<input type="hidden" id="airline" value="<%= flight.getAirline() %>">
		</div>
		<div class="Prices">
		    <div class="container7">
		        <input class="radio" type="radio" name="price" value="<%= flight.getEprice() %>" id="EClassRadio"><br>
		        <label class="EClass"><%= flight.getEprice() %></label>
		    </div>
		    <div class="container8">
		        <input class="radio" type="radio" name="price" value="<%= flight.getFprice() %>" id="FClassRadio"><br>
		        <label class="FClass"><%= flight.getFprice() %></label>
		    </div>
		    <div class="container9">
		        <input class="radio" type="radio" name="price" value="<%= flight.getBprice() %>" id="BClassRadio"><br>
		        <label class="BClass"><%= flight.getBprice() %></label>
		    </div>
		</div>
		<div class="container10">
		    <a href="#" name="signin" id="signin" class="btn1" style="color: white;" onclick="bookTicket('<%= flight.getFlightid() %>', '<%= flight.getSource() %>', '<%= flight.getDestination() %>', '<%= flight.getDate() %>', '<%= flight.getAirline() %>', '<%= flight.getSourcetime() %>')">Book Ticket</a>
		</div>
		<!-- ... Existing code ... -->
		
		<script>
		    function bookTicket(flightId, source, destination, date, airline, time) {
		        // Get the selected value of the radio button
		        var selectedPrice = document.querySelector('input[name="price"]:checked').value;
		
		        // Construct the new URL with the selected price and other field values
		        var bookingUrl = "booking?flightId=" + flightId + "&source=" + source + "&destination=" + destination + "&date=" + date + "&airline=" + airline + "&price=" + selectedPrice + "&time=" + time;
		
		        // Navigate to the new URL
		        window.location.href = bookingUrl;
		    }
		</script>


	</div>

    <% } } else { %>
    <p class="ErrorMessage">NO FLIGHTS TO DISPLAY</p>
    <% } } else { %>
    <p class="ErrorMessage">NO FLIGHTS TO DISPLAY</p>
    <% } %>
</div>


	<footer class="footer text-center" style="margin-top: 50px;">
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

	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>
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