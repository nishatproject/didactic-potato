<!-- Page 5 -->
<!-- Register page for agents -->


<?php

include 'connection.php';

if(isset($_POST['submit'])){ //if sumbit is used then isset will get 1

//mysqli_real_escape_string- It is used before inserting a string in a database, as it removes any special characters that may interfere with the query operations.
   $agent_id = mysqli_real_escape_string($conn, $_POST['agent_id']);
   //mysqli_real_escape_string(connection, escapestring)
   $agent_password = mysqli_real_escape_string($conn, $_POST['agent_password']);
   $name = mysqli_real_escape_string($conn, $_POST['name']);
   $branch = mysqli_real_escape_string($conn, $_POST['branch']);
   $phone = mysqli_real_escape_string($conn, $_POST['phone']);
   $cpassword = mysqli_real_escape_string($conn, $_POST['confirm_password']);


   //mysqli_query gives a bool value
   $select_users = mysqli_query($conn, "SELECT * FROM `agent` WHERE agent_id = '$agent_id'") or die('query failed'); 
   //mysqli_query(connection, query)

   if(mysqli_num_rows($select_users) > 0){ //mysqli_num_rows() used to return the number of rows present in the result set
      $message[] = 'user already exist!';
   }
   elseif($agent_password!=$cpassword){
      $message[] = 'passwords do not match!';
   }
   else{
      mysqli_query($conn, "INSERT INTO `agent`(agent_id,agent_password,name,branch,phone) VALUES('$agent_id','$agent_password', '$name', '$branch','$phone')") or die('query failed');
      $message[] = 'registration complete!';
      header('location:index.php');
   }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>


   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register</title>
   <link rel="icon" type="image/x-icon" href="/images/favicon.ico">
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="style.css">

</head>
<body>



<?php
if(isset($message)){ //print the messages and remove the message using cross button
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" postion="relati" onclick="this.parentElement.remove();"></i>  
      </div>
      ';
   }
}
?>
   


<div class="form-box">
   <form action="" method="post">
      <h3>register as a agent</h3>
      <!-- Registration form -->
      <input type="text" name="agent_id" placeholder="Enter your id" required class="box">
      <input type="text" name="name" placeholder="Enter your name" required class="box">
      <input type="text" name="branch" placeholder="Enter your branch" required class="box">
      <input type="phone" name="phone" placeholder="Enter your phone" required class="box">
      <input type="password" name="agent_password" placeholder="Enter your password" required class="box">
      <input type="password" name="confirm_password" placeholder="Enter your password again" required class="box">
      <input type="submit" name="submit" value="register now" class="btn">
      <p>Already have an account? <a href="login.php">login now</a></p>
   </form>
</div>



</body>
</html>