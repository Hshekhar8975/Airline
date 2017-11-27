<?php
	$name=$_POST["uname"];
	$psw=$_POST["psw"];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbase = "airline";

	$conn = mysqli_connect($servername, $username, $password);
	mysqli_select_db($conn , $dbase);

	if (!$conn) {
	    die("Connection failed: " . mysqli_connect_error());
	}
	//echo "Connection successfull.<br/>";

	$sql='SELECT * FROM users where username="'.$name.'" and password="'.$psw.'"';
	$sql .= ";";

	$result=mysqli_query($conn,$sql);

	if (mysqli_num_rows($result) >0) {
	   		echo "<h3>Login successfully</h3><br><br>";
	   		header("Location:plan.html");
	} else 
	{
		echo "<center>Invalid credentials.<br>";
		echo '<h3><a href="index.html">Click Here to continue...</a></h3></center>';
	}
?>