<!DOCTYPE html>
<html>
<head>
	<title>TravelBuddy</title>
	<link rel="icon" href="icon.png">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?sensor=false&libraries=places&language=en"></script>
	<style type="text/css">
		body{
			background: url("bkg.jpg");
			background-position: initial;
			background-size: cover;
		}	
		.myBlock{
			margin-top: 15%;
			border: solid;
			border-radius: 10px;
			background-color: black;
			opacity: 0.8;
			color: white;
			text-align-last: initial;
		}
		#myForm{
			margin-left: 8%;
		}
		#opac{
			margin-left: 4%;
			margin-right: auto;
		}
		/* Full-width input fields */
		input[type=text], input[type=password] {
		    width: 100%;
		    padding: 12px 20px;
		    margin: 8px 0;
		    display: inline-block;
		    border: 1px solid #ccc;
		    box-sizing: border-box;
		}

		/* Set a style for all buttons */
		button {
		    background-color: #4CAF50;
		    color: white;
		    padding: 14px 20px;
		    margin: 8px 0;
		    border: none;
		    cursor: pointer;
		    width: 100%;
		}

		button:hover {
		    opacity: 0.8;
		}

		/* Extra styles for the cancel button */
		.cancelbtn {
		    width: auto;
		    padding: 10px 18px;
		    background-color: #f44336;
		}

		/* Extra styles for the cancel button */
		.cancelbtn1 {
		  	padding: 14px 20px;
		  	background-color: #f44336;
		}
		/* Float cancel and signup buttons and add an equal width */
		.cancelbtn1,.signupbtn {
			float:left;
			width:50%;
		}
		/* Center the image and position the close button */
		.imgcontainer {
		    text-align: center;
		    margin: 24px 0 12px 0;
		    position: relative;
		}

		img.avatar {
		    width: 20%;
		    height: 35%;
		    border-radius: 50%;
		}

		.container {
		    padding: 16px;
		}

		span.psw {
		    float: right;
		    padding-top: 16px;
		}

		/* The Modal (background) */
		.modal {
		    display: none; /* Hidden by default */
		    position: fixed; /* Stay in place */
		    z-index: 1; /* Sit on top */
		    left: 0;
		    top: 0;
		    width: 100%; /* Full width */
		    height: 100%; /* Full height */
		    overflow: auto; /* Enable scroll if needed */
		    background-color: rgb(0,0,0); /* Fallback color */
		    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		    padding-top: 60px;
		}

		/* Modal Content/Box */
		.modal-content {
		    background-color: #fefefe;
		    margin: 5px auto; /* 15% from the top and centered */
		    border: 1px solid #888;
		    width: 80%; /* Could be more or less, depending on screen size */
		}

		/* The Close Button */
		.close {
		    /* Position it in the top right corner outside of the modal */
		    position: absolute;
		    right: 25px;
		    top: 0; 
		    color: #000;
		    font-size: 35px;
		    font-weight: bold;
		}

		/* Close button on hover */
		.close:hover,
		.close:focus {
		    color: red;
		    cursor: pointer;
		}

		/* Add Zoom Animation */
		.animate {
		    -webkit-animation: animatezoom 0.6s;
		    animation: animatezoom 0.6s
		}
		.container2 {
  			padding: 16px;
		}
		/* Clear floats */
		.clearfix::after {
		 	content: "";
		  	clear: both;
		  	display: table;
		}
		@-webkit-keyframes animatezoom {
		    from {-webkit-transform: scale(0)} 
		    to {-webkit-transform: scale(1)}
		}

		@keyframes animatezoom {
		    from {transform: scale(0)} 
		    to {transform: scale(1)}
		}
	</style>
	<script type="text/javascript">
		$( document ).ready(function() {
    		console.log( "ready!" );
    		var row_data
    		$( ".tblRows" ).click(function() {
        		row_data = $(this).attr("id");
        		alert("Booking Confirmed for Flight Id:" + row_data);
    		});
		});
	</script>
</head>
<body>
	<div id="planBody">
		<div class="myNav">
			<nav class="navbar navbar-default navbar-fixed-top">
	  			<div class="container-fluid">
	    			<div class="navbar-header">
	      				<a class="navbar-brand" href="index1.html">TravelBuddy</a>
	    			</div>
	    			<ul class="nav navbar-nav">
	      				<li><a href="index1.html">Home</a></li>
	      				<li class="active"><a href="plan.html">Plan My Trip</a></li>
	      				<li><a href="offers.html">Offers</a></li>
	    			</ul>
	    			<ul class="nav navbar-nav navbar-right">
	      				<li><a href="#" onclick="document.getElementById('id02').style.display='block'" style="width:auto;"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
	      				<li><a href="#" onclick="document.getElementById('id01').style.display='block'" style="width:auto;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
	    			</ul>
	  			</div>
			</nav>
		</div>
		<div class="container" id="opac">
			<center>
				<div class="container-fluid myBlock" id="myForm">
					<h1>Book a flight</h1>
					<?php
						$origin=$_GET['origin'];
						$dest=$_GET['dest'];
						$date=$_GET['date'];

						$host="localhost";
						$user="root";
						$pass="";
						$db="airline";

						$conn=mysqli_connect($host,$user,$pass,$db);

						if(!$conn)
						{
							die("Connection Failed: ".mysql_connect_error());
						}
						//echo "Connection Successfull.";

						$sql = "SELECT DISTINCT * from flight_details where origin like '%".$origin."%' and destination='".$dest."' and date='".$date."'";
						$sql .= ";";
						$result = mysqli_query($conn, $sql);
		
						$numrows=mysqli_num_rows($result);
						if ($numrows > 0) {
							echo '<center><table border=2 >
								<tr>
									<th style="text-align:center; padding: 10px;">Id</th>	
									<th style="text-align:center">Flight Name</th>
									<th style="text-align:center">Origin</th>
									<th style="text-align:center">Destination</th>
									<th style="text-align:center">Date</th>
									<th style="text-align:center">Fare</th>
									<th style="text-align:center">Book</th>
								</tr>';	
		   					while($row = mysqli_fetch_assoc($result)) {
		    					
		    					$id=$row['Id'];
		    					$name=$row['Name'];
		    					$origin=$row['origin'];
		    					$dest=$row['destination'];
		    					$date=$row['date'];
		    					$fare=$row['fare'];
		        	
		        				echo '
		        				<tr class="tblRows" id="'.$id.'">
		        					<th style="text-align:center" name="id">'.$id.'</th>
		        					<th style="text-align:center" name="name">'.$name.'</th>
		        					<th style="text-align:center" name="origin">'.$origin.'</th>
		        					<th style="text-align:center" name="dest">'.$dest.'</th>
		        					<th style="text-align:center" name="date">'.$date.'</th>
		        					<th style="text-align:center">'.$fare.'</th>
		        					<th style="text-align:center; padding: 10px;">
		        					<input name=id type=hidden value='.$row['Id'].'> 
		        					<input type="submit" class="btn btn-info" placeholder="Book"></input></th>
		        				</tr>';
		    				}
		    				echo "</table></center>";
						} else {
		   					echo "0 results";
						}

						mysqli_close($conn);
					?>
					<h4><a href="plan.html"><u>Search another flight?</u></a></h4>
				</div>
			</center>
		</div>
	</div>	
	<footer class="nav navbar-default navbar-fixed-bottom" style="height: 20px;">
		<center>
			<p>&copy;All rights reserved to Yoothika Mishra</p>
		</center>
	</footer>
	<div id="id01" class="modal">

    	<form class="modal-content animate" action="index.html">

    	  	<div class="imgcontainer">
	        	<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
        		<img src="images.png" alt="Avatar" class="avatar">
      		</div>

      		<div class="container2">		          
        		<button type="submit">Logout</button>
      		</div>
   		</form>
  	</div>
  	<div id="id02" class="modal">
	    <span onclick="document.getElementById('id02').style.display='none'" class="close1" title="close Modal">×</span>
	    <form class="modal-content animate" action="ins.php" method="post">
      		<div class="container2">
        		<form class="col-md-10" id="myForm">
        			<h3>Enter Flight Details:</h3>
        			<div class="form-group col-lg-6">
						<input type="text" class="form-control" name="id" placeholder="Enter Flight Id:" required>
					</div>
					<div class="form-group col-lg-6">
						<input type="text" class="form-control" name="name" placeholder="Enter Flight Name:" required>
					</div>
					<div class="form-group col-lg-6">
						<input type="text" class="form-control" name="origin" placeholder="Origin" required>
					</div>
					<div class="form-group col-lg-6">
						<input type="text" class="form-control" name="dest" placeholder="Destination" required>
					</div>
					<div class="form-group col-lg-6">
						<input type="date" class="form-control" name="date" placeholder="Date(yyyy-mm-dd)" id="date" required>
					</div>
					<div class="form-group col-lg-6">
						<input type="text" class="form-control" name="fare" placeholder="Enter Fare:" required>
					</div>
					
        			<div class="clearfix">
	          			<div class="form-group col-lg-12">
							<input type="submit" class="col-xs-12 btn btn-info btn-load" id="insert"></input>
						</div>
        			</div>
        		</form>
      		</div>
    	</form>
  	</div>
  
	<script>
    	// When the user clicks anywhere outside of the modal, close it
    	window.onclick = function(event) {
    	  	if (event.target == modal) {
	        	modal.style.display = "none";
      		}
    	}

    	// Get the modal
    	var modal = document.getElementById('id01');
    	var modal1 = document.getElementById('id02');

    	// When the user clicks anywhere outside of the modal, close it
    	window.onclick = function(event) {
      		if (event.target == modal) {
        		modal.style.display = "none";
      		}
      		else if (event.target == modal1) {
        		modal1.style.display = "none";
      		}
    	}
      	var origin = document.getElementById('origin');
      	var autocomplete = new google.maps.places.Autocomplete(origin);

	    var destination = document.getElementById('destination');
      	var autocomplete = new google.maps.places.Autocomplete(destination);
    </script>
</body>
</html>
