<!-- Page 6 -->
<!-- Header for agent pages after login-->



<?php
	session_start();
	include'connection.php';
	$username = $_SESSION["username"];  //session is a way to store information (in variables) to be used across multiple pages.


    
?>


<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top gg" role="navigation" style="margin-bottom: 0; background-color: #191e25;">
	
            <div class="navbar-header">
                	
                <a class="navbar-brand" href="home.php">M&M Insurance</a>
            </div>

            <div class="header-right">
			
                 <a href="<?php echo "logout.php" ?>" class="btn btn-warning" title="Logout"><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>

        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div" style="background-color: #686868;">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">

                                <?php
									if(!isset($_SESSION["username"])){
										header("Location: index.php");
									}else {
										echo "welcome, ".$_SESSION["username"];
									}
								?>
                            <br />
                              
                            </div>
                        </div>

                    </li>


                 <li>
                      <a href="client.php"><i class="fa fa-users "></i>CLIENTS</a >  
                 </li> 
                 <li>
                      <a href="agent.php"><i class="fa fa-life-saver "></i>AGENTS</a>
                            
                 </li>   
                 <li>
                      <a href="policy.php"><i class="fa fa-pencil-square-o "></i>POLICY</a>
                          
                 </li>   
                            
                 <?php    
                    if ($_SESSION["username"]=="admin") {
                    echo '<li><a href="nominee.php"><i class="fa fa-heart "></i>NOMINEE</a></li>';
                    echo '<li><a href="payment.php"><i class="fa fa-credit-card "></i>PAYMENTS</a></li>';
                    echo '<li><a href="ClaimReq.php"><i class=" fa fa-envelope "></i>Claim Request</a></li>';

                    }
                    ?>              
                     
                </ul>

            </div>
		

        </nav>
		 
		  
	
   