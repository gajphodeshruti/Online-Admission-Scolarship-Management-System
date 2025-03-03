<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php"); 
 include('includes/header.php'); 
include('includes/navbar.php'); 



$user = $_SESSION['username'];
if(isset($_POST['submit']))
{
  $oldpass=$_POST['oldpass'];
  $newpass=$_POST['newpass'];
  $cpwdpass=$_POST['cpwdpass'];

$sql= mysqli_query($GLOBALS['conn'],"select password from tbl_registration where contactno='" .$user."'");
 // $records =mysql_query($sql);
  while($row = mysqli_fetch_assoc($sql)) 
   {
      $pass=$row['password'];

      if($pass == $oldpass)
         {
          if($newpass == $cpwdpass)
            {
                $sql="update tbl_registration set password='$newpass' where contactno='" .$user."'";
                mysqli_query($GLOBALS['conn'],$sql);
                header('location:users.php');  
            }
           else  
             {
           echo "<script>alert('New and conrfirm password not match');</script>";
             }
        }
        else
        {
              echo "<script>alert('old password not match');</script>";
        }
    
    }
}
   
?>


<div id="content-wrapper">

    <div class="row">

    <div class="col-md-2 col-sm-2 col-xs-12"></div>
            <div class="col-md-8 col-sm-8 col-xs-12">

    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Change Password</b></h2></center></legend><br>
<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Old Password</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input type="text" id="oldpass" name="oldpass" class="form-control" placeholder="Old Password" required>
  <br>
  
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">New Password</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
   <input type="password" id="newpass" name="newpass" class="form-control" placeholder="New Password" required>

    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Confirm Password</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
         <input type="password" id="cpwdpass" name="cpwdpass" class="form-control" placeholder="Confrim Password" required>
         
  </div>
</div>
</div>
  


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" name="submit" id="submit" value="Change Password" class="btn btn-success btn-block">
   
  </div>
</div>

</fieldset>
</form>
</div>

    </div><!-- /.container -->
  
     </div>
         <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</div>


  <script type="text/javascript" src="js/jquery.js" charset="utf-8">
  
</script>

  
<script src="js/jquery.min.js"></script>
  
<script type="text/javascript" src="education-validation.js"></script>
  
<?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>
