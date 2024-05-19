<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.flightticketbookingSystem.models.AllUsers" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>User Details</title>
    <link rel="icon" type="image/x-icon" href="images/head.png" />

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/allusers.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
        rel="stylesheet" type="text/css" />
    <link
        href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
        rel="stylesheet" type="text/css" />
    <link href="css/index-styles.css" rel="stylesheet" />
</head>
<body>
	<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
    <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
        <div class="abc">
            <a class="navbar-brand" href="/admindashboard" style="margin-left: 80px">FlyEase</a>
        </div>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item mx-0 mx-lg-1">
                    <a class="nav-link py-3 px-0 px-lg-3 rounded" href="/" style="margin-right: 60px;">Log Out</a>
                </li>   
            </ul>
        </div>
    </nav>
    
    <div class="flight-page" style="margin-top: 120px">
        <div class="Pagehead">
            <h2 class="form-title" style="margin-left: 75px; margin-bottom: 20px;">Registered Users</h2>
        </div>
        <div class="search-form">
            <form>
                <input type="text" name="query" placeholder="Search..." />
                <input type="submit" value="Search" />
            </form>
        </div>
    </div>
    <br>

    <div>
        <table class="Table">
            <tr>
                <th class="Head1">ID</th>
                <th class="Head2">User Name</th>
                <th class="Head3">Email ID</th>
                <th class="Head4">Contact</th>
                <th class="Head5">Update</th>
                <th class="Head6">Delete</th>
            </tr>
            <%
            List<AllUsers> allUsers = (List<AllUsers>) request.getAttribute("allusers");
            if (allUsers != null && !allUsers.isEmpty()) {
            	int serialNumber = 1;
                for (AllUsers user : allUsers) {
            %>
            <tr>
                <td class="ID"><%= serialNumber %></td>
                <td class="Uname"><%= user.getUname() %></td>
                <td class="Email"><%= user.getUemail() %></td>
                <td class="Mobile"><%= user.getUmobile() %></td>
                <td>
                <button onclick="openEditPopup('<%= user.getId() %>', '<%= user.getUname() %>', '<%= user.getUemail() %>', '<%= user.getUmobile() %>')" class="update-btn">
                    <img class="logo" src="images/update3.png" alt="Edit">
                </button>
            </td>
                <td>
                    <form method="post" action="deleteUser">
                        <input type="hidden" name="userId" value="<%= user.getId() %>">
                        <button type="submit" class="delete-btn">
                            <img class="logo" src="images/delete.png" alt="Delete">
                        </button>
                    </form>
                </td>
            </tr>
            <%    serialNumber ++;            }
        } else {
            %>
            <tr>
                <td colspan="5">No users found</td>
            </tr>
            <%
            }
            %>
        </table>
    </div>
   
<div id="edit-popup" class="modal">
    <div class="modal-content" style="width: 91.5%;">
    	<label class="update-label">Update User Details</label>
    	<span class="close-btn" onclick="closeEditPopup()"><img class="closeicon" src="images/close.png" alt="close"></span>
        <form method="post" action="updateUser">
            <input type="hidden" id="edit-id" name="id">
        <div class="form-content">
            <div class="row">
            	<label class="uname-label">User Name</label>
            	<input type="text" id="edit-uname" name="uname">
            </div>
            <div class="row">
            	<label class="uemail-label">Email ID</label>
            	<input type="text" id="edit-uemail" name="uemail">
            </div>
            <div class="row">
            	<label class="uname-label">Contact</label>
            	<input type="text" id="edit-umobile" name="umobile">
            </div>
            <div class="row-button">
            <button type="submit" class="ok-btn">
                <img class="logo" src="images/ok.png" alt="Update">
            </button></div>
            </div>
        </form>
    </div>
</div>
    <div class="copyright py-4 text-center text-white" style="margin-top: 50px;">
		<div class="container" style="background-color: #1a252f;">
			<small>Copyright &copy; FlyEase 2023</small>
		</div>
	</div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
    	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script type="text/javascript">
       // Check if the status attribute is set to "success"
        var status = "${status}";
        if (status === "success") {
            var message = "${message}";
            swal("Success", message, "success")
                .then(function() {
                    window.location.href = "/allusers";
                });
        }
        
        
        

        function openEditPopup(id, uname, uemail, umobile) {
            var popup = document.getElementById('edit-popup');
            
            var editId = document.getElementById('edit-id');
            var editUname = document.getElementById('edit-uname');
            var editUemail = document.getElementById('edit-uemail');
            var editUmobile = document.getElementById('edit-umobile');
            
            editId.value = id;
            editUname.value = uname;
            editUemail.value = uemail;
            editUmobile.value = umobile;

            popup.style.display = 'block';
        }

        function closeEditPopup() {
            var popup = document.getElementById('edit-popup');
            popup.style.display = 'none';
        }
        
        /* // Handle form submission and display SweetAlert on success
        document.addEventListener('DOMContentLoaded', function() {
            var urlParams = new URLSearchParams(window.location.search);
            if (urlParams.get('updated') === 'true') {
                Swal.fire({
                    icon: 'success',
                    title: 'Updated successfully!',
                    showConfirmButton: false,
                    timer: 1500
                });
            }
        }); */

    </script>
    
</body>
</html>
