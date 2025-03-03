      <nav class="navbar navbar-default navbar-fixed-top" role="navigation">            
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" title="PB Dashboard">Student Panel</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active"><a href="users.php"><i class="glyphicon glyphicon-th"></i> Dashboard</a></li>
                     <li><a href="certificate.php?cert_id=<?php echo$_SESSION['id'];?>" target="_blank"> View Certificate </a></li>
                     <li><a href="education.php"> Education Detail </a></li>
                      <li><a href="parents.php">Parents Detail </a></li>
                    <li><a href="change-password.php">Change Password</a></li>
                  
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
<?php
    $user = $_SESSION['username'];
$sql="select * from tbl_registration where contactno='" .$user."'";
 $result =mysqli_query($GLOBALS['conn'],$sql);
 while($row=mysqli_fetch_assoc($result))
{
 ?>              
                    <li class="dropdown user-dropdown">
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> 
                        <?php echo ucwords($row['fname']) ?>
                        <b class="caret"></b></a>
 <?php
 }
   ?>                
                       <ul class="dropdown-menu">
                           <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                           <li><a href="change-password.php"><i class="fa fa-gear"></i> Change Password</a></li>
                           <li class="divider"></li>
                           <li><a href="" data-toggle="modal" data-target="#logoutModal"><i class="fa fa-power-off"></i> Log Out</a></li>
                       </ul>
                   </li>
                </ul>
            </div>
        </nav>
          

<!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
     
           <form action="logout.php" method="POST"> 
           <button type="submit" name="logout" class="btn btn-primary">Logout</button>
       
           </form>
        </div>
      </div>
    </div>
  </div>

        <div id="page-wrapper">