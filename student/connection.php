<?php			
	$user = "root";
	$host = "localhost";
		
	$conn = mysqli_connect($host,$user);
	$db = mysqli_select_db($conn,"lms");
?>