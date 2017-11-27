<?php
	$id=$_POST["id"];
	$name=$_POST["name"];
	$origin=$_POST["origin"];
	$dest=$_POST["dest"];
	$date=$_POST["date"];
	$fare=$_POST["fare"];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbase = "airline";

	$conn = mysqli_connect($servername, $username, $password);
	mysqli_select_db($conn , $dbase);

	if (!$conn) {
	    die("Connection failed: ".mysqli_connect_error());
	}
	echo "Connection successfull.<br/>";
	//Inserting the values
	$sql = "INSERT INTO flight_details VALUES ($id,'$name','$origin','$dest','$date',$fare)";
	$sql .= ";";
	if ($conn->query($sql) === TRUE) {
   		echo "<h3>New record created successfully</h3><br><br>";
   		header("Location:plan.html");
	} else {
   		echo "Error: " . $sql . "<br>" . $conn->error;
	}
	mysqli_close($conn);
?>