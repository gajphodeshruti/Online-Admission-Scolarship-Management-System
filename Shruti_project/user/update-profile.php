<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php"); 
 include('includes/header.php'); 
include('includes/navbar.php'); 
if(@$_REQUEST['data']=='operator')
  {
    
    $res=$dbobj->cgs("tbl_registration","*","id=".$_GET['operator'],"");
    $row=mysqli_fetch_assoc($res);
  }

  if(@$_POST['submit']!='' && @$_POST['submit']=='Update')
  {
   extract($_POST);
   $fname=$_POST['fname'];
  $address=$_POST['address'];
  $contactno=$_POST['contactno'];
  $gender=$_POST['gender'];
   $statename=$_POST['statename'];
  $districtname=$_POST['districtname'];
  $cityname=$_POST['cityname'];
  $enquriy=$_POST['enquiryfor'];
 $tbl="tbl_registration";
$field="fname,address,contactno,gender,stateid,districtid,cityid,enquiryid";
$values="'$fname','$address','$contactno','$gender','$statename','$districtname','$cityname','$enquriy'"; 
$res=$dbobj->cgu($tbl,$field,$values,"id=".$_GET['operator'],"");
 $_SESSION['msg']="Profile Updated....";
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
<legend><center><h2><b>Update Profile</b></h2></center></legend><br>

<!-- Text input-->
<input type="hidden" name="id" id="id" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo $row['id'];?>"/>
<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Name</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input type="text"  class="form-control" id="fname" name="fname" placeholder="Name" onblur="return validName()" onfocus="tooltip.pop(this, 'Please <br />Enter your  Name...');" value="<?php echo $row['fname'];?>">                     
                      <div id="fnameMsg"></div>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Address</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
   <textarea class="form-control"  id="address" name="address"  placeholder="Please Enter a Address" onfocus="tooltip.pop(this, 'Please <br />Enter your address...');"><?php echo @$row["address"] ?></textarea>
      <div id="addrMsg"></div>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Contact Number</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
        <input type="text" id="contactno" name="contactno" class="form-control " placeholder="Contact Number" value="<?php echo @$row["contactno"]; ?>" onfocus="tooltip.pop(this, 'Please <br />Enter your Contact Number...');">
                      <br>
                     <div id="conMsg"></div>
  </div>
</div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Faculty</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>

					<select id="faculty" class="form-control"  name="faculty" required>
                    <option value="">Select Faculty</option>
                    <option value="B.A."  <?php if(@$row['faculty'] == "B.A.")  echo "selected";?>>B.A.</option>
                    <option value="B.Com." <?php if(@$row['faculty'] == "B.Com.")  echo "selected";?>>B.Com.</option>
                    <option value="B.Sc." <?php if(@$row['faculty'] == "B.Sc.")  echo "selected";?>>B.Sc.</option>
                    <option value="B.Sc.(Computer Science)" <?php if(@$row['faculty'] == "B.Sc.(Computer Science)")  echo "selected";?>>B.Sc.(Computer Science)</option>
                    <option value="B.Sc.(Biotech)" <?php if(@$row['faculty'] == "B.Sc.(Biotech)")  echo "selected";?>>B.Sc.(Biotech)</option>
                    <option value="B.C.A.(Science)" <?php if(@$row['faculty'] == "B.C.A.(Science)")  echo "selected";?>>B.C.A.(Science)</option>
                    <option value="B.B.A.(C.A.)" <?php if(@$row['faculty'] == "B.B.A.(C.A.)")  echo "selected";?>>B.B.A.(C.A.)</option>
                    <option value="B.Voc.(Foodtech)" <?php if(@$row['faculty'] == "B.Voc.(Foodtech)")  echo "selected";?>>B.Voc.(Foodtech)</option>
					<option value="M.Sc." <?php if(@$row['faculty'] == "M.Sc.")  echo "selected";?>>M.Sc.</option>
                    <option value="M.Sc.(Computer Science)" <?php if(@$row['faculty'] == "M.Sc.(Computer Science)")  echo "selected";?>>M.Sc.(Computer Science)</option>
                    <option value="M.Sc.(Biotech)" <?php if(@$row['faculty'] == "M.Sc.(Biotech)")  echo "selected";?>>M.Sc.(Biotech)</option>
                    </select>
</div> 
</div>  
</div>  
 

 
 <div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Class</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
    <select id="year" class="form-control"  name="year" required>
                    <option value="">Select Class</option>
                    <option value="F.Y." <?php if(@$row['year'] == "F.Y.")  echo "selected";?>>F.Y.</option>
                    <option value="S.Y." <?php if(@$row['year'] == "S.Y.")  echo "selected";?>>S.Y.</option>
                    <option value="T.Y." <?php if(@$row['year'] == "T.Y.")  echo "selected";?>>T.Y.</option>
                   
                    </select>
 </div>
   </div> 
    </div> 
 
     

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input style=" border-radius: 4px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" type="submit" name="submit" id="submit" value="Update" class="btn btn-primary btn-lg">
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
<script>

function getDistrict(val)
{
 $.ajax({
    method:"POST",
  url:"district.php",
  data:'stateid='+val,
  success : function(data){
  $("#district-list").html(data);
  
  getCity();
  }
  
 });
}

function getCity(val)
{
 $.ajax({
    type:"POST",
  url:"city.php",
  data:'districtid='+val,
  success : function(data){
  $("#city-list").html(data);
  }
  
 });
}

</script>

  
<?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>

