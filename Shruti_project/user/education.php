<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php"); 
 include('includes/header.php'); 
include('includes/navbar.php'); 


if(@$_REQUEST['submit']=='Submit'){
  $examname=$_POST['examname'];
  $year=$_POST['year'];
  $board=$_POST['board'];
  $schoolname=$_POST['schoolname'];
  $percentage=$_POST['percentage'];
     $user = $_SESSION['username'];
     $res = $dbobj->cgs("tbl_registration", "id", "contactno='" . $user . "'", $additionalArgument);
    $row=mysqli_fetch_assoc($res);
    $id=$row['id'];
 // $sql="select id from tbl_registration where contactno='" .$user."' ";
  //$records=mysql_query($sql);
  // while($row = mysql_fetch_assoc($records)) 
  // {
   //  $id=$row['id'];
  // }
$tbl="tbl_educationdetails";
$field="exams,year,Board,school,percentage,id";
$values="'$examname','$year','$board','$schoolname','$percentage','$id'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
   header('location:users.php');     
 }

 if(@$_REQUEST['data']=='operator')
  {
    
    $res=$dbobj->cgs("tbl_educationdetails","*","edu_id=".$_GET['operator'],"");
    $row=mysqli_fetch_assoc($res);
  }

  if(@$_POST['submit']!='' && @$_POST['submit']=='Update')
  {
   extract($_POST);
   $examname=$_POST['examname'];
  $year=$_POST['year'];
  $board=$_POST['board'];
  $schoolname=$_POST['schoolname'];
  $percentage=$_POST['percentage'];
  $tbl="tbl_educationdetails";
$field="exams,year,Board,school,percentage";
$values="'$examname','$year','$board','$schoolname','$percentage'"; 
$res=$dbobj->cgu($tbl,$field,$values,"edu_id =".@$_REQUEST['edu_id'],"");
 //$_SESSION['msg']="Operator Updated....";
           /* $stmt->close();*/
  header('location:users.php'); 

} 
?>


<div id="content-wrapper">
    <div class="row">
       <div class="col-md-2 col-sm-2 col-xs-12"></div>
            <div class="col-md-8 col-sm-8 col-xs-12">
           <form class="well form-horizontal" action=" " method="post"  id="contact_form">
           <fieldset>

<!-- Form Name -->
<legend><center><h2><b>Education Details</b></h2></center></legend><br>

<!-- Text input-->
<input type="hidden" name="edu_id" id="edu_id" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo $row['edu_id'];?>"/>
<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Exams/Standerd</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input type="text" class="form-control" id="examname" name="examname" placeholder="Name" onblur="return validExamName()" onfocus="tooltip.pop(this, 'Please <br />Enter your Exams/Standerd...');" value="<?php echo isset($row) && isset($row['exams']) ? $row['exams'] : ''; ?>">


  <br>
  <span id="examnameMsg"></span>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Year</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input name="year" id="year" placeholder="Year" class="form-control" type="text" onfocus="tooltip.pop(this, 'Please <br />Enter your Year...');" value="<?php echo isset($row['year']) ? $row['year'] : ''; ?>">

   <div id="yearMsg"></div>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Board/University</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
        <input name="board" id="board" placeholder="Board Name" class="form-control" type="text" onfocus="tooltip.pop(this, 'Please <br />Enter your Board/University...');" value="<?php echo isset($row['Board']) ? $row['Board'] : ''; ?>">

         <span id="boardMsg"></span>
  </div>
</div>
</div>
  
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">School/College</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input name="schoolname" id="schoolname" placeholder="School/College" class="form-control" type="text" onfocus="tooltip.pop(this, 'Please <br />Enter your School/College...');" value="<?php echo isset($row['school']) ? $row['school'] : ''; ?>">

  <span id="schoolMsg"></span>
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Percentage</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input name="percentage" id="percentage" placeholder="Percentage" class="form-control" type="text" onfocus="tooltip.pop(this, 'Please <br />Enter your Percentage...');" value="<?php echo isset($row['percentage']) ? $row['percentage'] : ''; ?>">

  <span id="percentageMsg"></span>
    </div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input style=" border-radius: 4px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" type="submit" class="btn btn-primary btn-lg"  name="submit" id="submit" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo "Update"; else echo "Submit";?>">
   
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
  
<script type="text/javascript" src="js/education-validation.js"></script>
  
<?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>
