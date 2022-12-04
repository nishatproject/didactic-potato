<!-- Client 3  -->


<?php

include'connection.php';

	    $Name      = $_POST["Name"];
		$client_id      = $_POST["client_id"];
		$Hname          = $_POST["Hname"];
		$Health         = $_POST["Health"];
		$Camount           = $_POST["Camount"];
		$Cdate            = $_POST["Cdate"];
		
		

	$sql = "INSERT INTO claim "."VALUES('$Name', '$client_id', '$Hname', '$Health', '$Camount', '$Cdate')";
	
	if ($conn->query($sql) === true) {
			echo "Your Claim Has been checing";
		} else {
			echo "Error: " . $sql . "<br>" . $conn->error;
		}
	header('location:record.php');
?>