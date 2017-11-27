<?php
	$name=$_POST["uname"];
	$psw=$_POST["psw"];
	$rep_psw=$_POST["psw-repeat"];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbase = "airline";

	$conn = mysqli_connect($servername, $username, $password);
	mysqli_select_db($conn , $dbase);

	if (!$conn) {
	    die("Connection failed: " . mysqli_connect_error());
	}
	echo "Connection successfull.<br/>";

	if($psw===$rep_psw)
	{
		$sql = "INSERT INTO Users VALUES ('$name','$psw')";
		$sql .= ";";
		if ($conn->query($sql) === TRUE) {
	   		echo "<h3>Registered successfully</h3><br><br>";
	   		header("Location:index.html");
		} else {
	   		echo "Error: " . $sql . "<br>" . $conn->error;
		}
	}
	else
	{
		echo "<center><br>Password Mis-matched.";
		echo '<br>Click <a href="index.html">here</a> to continue.</center>';
	}
	mysqli_close($conn);
?>