<!-- Page 4 -->
<!-- Backend work for client and agent login -->


<?php
	session_start();
	include 'connection.php';
	
	
	if($_SERVER["REQUEST_METHOD"] == "POST"){ // collect value of input field
	//$_SERVER['REQUEST_METHOD'] fetches the request method used to access the page.
		$username = $_POST["username"];
		$password = $_POST["password"];
	}
	


    //Agents login
	$sql = "SELECT agent_password from agent where agent_id='$username'";
	$result = $conn->query($sql);        
//fetch_assoc() returns an associative array of strings representing the fetched row. NULL if there are no more rows in result-set
    while($row = $result->fetch_assoc()) { //here $row is a array of the elements
		if($password == $row["agent_password"]){
			echo "welcome you have successfully logeed in";
			$_SESSION["username"] = $username; //Session variables are set with the PHP global variable
			header("Location: home.php"); //home.php-> agent home page
			//With header() HTTP functions we can control data sent to the client or browser by the Web server before some other output has been sent.
		}
    }



    //clients login
	$sql = "SELECT client_password from client where client_id='$username'";
	$result = $conn->query($sql);        

    while($row = $result->fetch_assoc()) {
		if($password == $row["client_password"]){
			echo "welcome you have successfully logeed in";
			$_SESSION["username"] = $username;
			header("Location: clientHome.php"); //clientHome.php-> client home page
		}
    }
	
	if(!isset($_SESSION["username"])){
		header("Location: index.php");
	}
?>