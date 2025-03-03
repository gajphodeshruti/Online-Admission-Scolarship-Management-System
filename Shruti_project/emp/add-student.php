<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php"); 
 include('includes/header.php'); 
include('includes/navbar.php'); 

if(@$_REQUEST['submit']=='SignUp'){
 $fname=$_POST['fname'];
  $address=$_POST['address'];
  $contactno=$_POST['contactno'];
  $gender=$_POST['gender'];
   $statename=$_POST['statename'];
  $districtname=$_POST['districtname'];
  $cityname=$_POST['cityname'];
  $enquriy=$_POST['enquiryfor'];
  $password=$_POST['pass'];
  $target='../img/profile/';
   
   $filename = uniqid().$_FILES['uploadfile']['name'];
   
  $filetempname = $_FILES['uploadfile']['tmp_name'];
 $folder ='../img/profile/';
  //$target1=$target.basename(@$_FILES['uploadfile']['name']);
 $role="student";
  move_uploaded_file($filetempname, $folder.$filename);
   $role="student";
   $res=$dbobj->cgs("tbl_employee","emp_id","contactno='" .$user."'");
    $row=mysqli_fetch_assoc($res);
    $emp_id=$row['emp_id'];
  $tbl="tbl_registration";
  $field="fname,address,contactno,gender,stateid,districtid,cityid,enquiryid,password,imagename,role,addedby";
  $values="'$fname','$address','$contactno','$gender','$statename','$districtname','$cityname','$enquriy','$password','$filename','$role','$emp_id'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
    if($res)
  {
    header('location:index.php');
  }
  else
  {
    echo "<script>alert('Data not inserted');</script>";
  }
 }

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
//$res=$dbobj->cgu($tbl,$field,$values,"id=".$_GET['operator'],"");
 $_SESSION['msg']="Operator Updated....";
 header('location:index.php'); 

} 
?>
<div id="content-wrapper">
     <div class="row">

 <div class="col-md-2 col-sm-2 col-xs-12"></div>
            <div class="col-md-8 col-sm-8 col-xs-12"> 

    <form class="well form-horizontal" action=" " method="post"  id="contact_form"  enctype="multipart/form-data">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Student Details</b></h2></center></legend><br>

<!-- Text input-->
<input type="hidden" name="id" id="id" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo $row['id'];?>"/>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Name</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
  <input type="text"  class="form-control" id="fname" name="fname" placeholder="Name" onblur="return validName()" onfocus="tooltip.pop(this, 'Please <br />Enter your  Name...');" value="<?php echo @$row["fname"]; ?>">                     
                      <div id="fnameMsg"></div>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Address</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
   <textarea class="form-control"  id="address" name="address"  placeholder="Please Enter a Address" onfocus="tooltip.pop(this, 'Please <br />Enter your address...');"><?php echo @$row["address"] ?></textarea>
                    <div id="addrMsg"></div>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Contact Number</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
       <input type="text" id="contactno" name="contactno" class="form-control " placeholder="Contact Number" value="<?php echo @$row["contactno"]; ?>" onfocus="tooltip.pop(this, 'Please <br />Enter your Contact Number...');">
                      <br>
                     <div id="conMsg"></div>
  </div>
</div>
</div>

<!-- Text input-->
 <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Gender</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>&nbsp;&nbsp;
      <input type="radio" name="gender" value="male" <?php
             if(@$row["gender"]=='male')
                {
                 echo "checked";
                }  
           ?>
          checked> Male
          &nbsp;
           <input type="radio" name="gender" value="female"
             <?php
             if(@$row["gender"]=='female')
                 {
                   echo "checked";
                 }  
             ?>
           > Female
  </div>
</div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">State</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
  <select id="state-list" onChange="getDistrict(this.value);" class="form-control"  name="statename">
                    <option value="">Select State</option>
                    <?php
                   $res=$dbobj->cgs("states","*","","");
                      while($rowx=mysqli_fetch_assoc($res))
                            {
                    ?>
                         <option value="<?php echo $rowx["stateid"]; ?>"
                         <?php if(@$row['stateid'] == $rowx['stateid'])
                         {
                          echo "selected";
                         }
                         ?> >  <?php echo $rowx["statename"]; ?></option>
                    <?php
                            }
                    ?>
                    </select>
 </div> 
</div>
 </div>  
 <div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">District</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
          <select id="district-list" onChange="getCity(this.value);" class="form-control" name="districtname">
                  <option value="">Select District</option>
                    <?php
                          $sql=$dbobj->cgs("tbl_district","*","","");
                          while($rowx = mysqli_fetch_assoc($sql))
                            {
                    ?>
                   
                    <?php
                    if(@$_REQUEST['data']=='operator')
                         {
                          ?>

                          <option value="<?php echo $rowx["districtid"]; ?>"
                         <?php if(@$row['districtid'] == $rowx['districtid'])
                         {
                          echo "selected";
                         }
                         ?> >  <?php echo $rowx["districtname"]; ?></option>
                         <?php
                      }
                    
                            }
                    ?>
              
                    </select>
                     </div> 
                      </div>
                        </div> 
 
  <div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">City/Taluka</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
      <select id="city-list" class="form-control" name="cityname">
                    <option value="">Select City</option>
                   <?php
                         $sql=$dbobj->cgs("tbl_city","*","","");
                
                          while($rowx = mysqli_fetch_assoc($sql))
                            {
                           if(@$_REQUEST['data']=='operator')
                         {
                          ?>

                          <option value="<?php echo $rowx["cityid"]; ?>"
                         <?php if(@$row['cityid'] == $rowx['cityid'])
                         {
                          echo "selected";
                         }
                         ?> >  <?php echo $rowx["cityname"]; ?></option>
                         <?php
                      }
                    
                            }
                    ?>
                    </select>

   </div>
     </div> 
      </div> 
 
<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Enquriy For</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
    <select id="enquriy-list" class="form-control"  name="enquiryfor">
                    <option value="">Select Enquiry</option>
                    <?php
                     $res=$dbobj->cgs("tbl_enquiry","*","","");
                      while($rowx=mysqli_fetch_assoc($res))
                      {
                    ?>
                         <option value="<?php echo $rowx["enquiryid"]; ?>"
                         <?php if(@$row['enquiryid'] == $rowx['enquiryid'])
                         {
                          echo "selected";
                         }
                         ?> >  <?php echo $rowx["enquiryname"]; ?></option>
                    <?php
                            }
                    ?>
                    </select>
   </div>
     </div> 
      </div> 
 

 <div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Password</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
  <input type="password" id="pass" name="pass" class="form-control" placeholder="Password" value="" onfocus="tooltip.pop(this, 'Please <br />Enter your Password...');">
    <div id="passMsg"></div>

    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Confirm Password</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
  <input type="password" id="cpwd" name="cpwd" class="form-control" placeholder="Confirm Password" onfocus="tooltip.pop(this, 'Please <br />Enter your Confirm Password...');">
    <div id="cpwdMsg"></div>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Images</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
     <input type="file" name="uploadfile" class="form-control">   
                      <br>
                     <div id="conMsg"></div>
  </div>
</div>
</div>

<!-- Button -->
<div class="form-group">

  <label class="col-md-4 control-label"></label>
  <div class="col-md-5">
   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input style=" border-radius: 4px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" type="submit" class="btn btn-success btn-block"  name="submit" id="submit" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo "Update"; else echo "SignUp";?>">
  </div>
</div>

</fieldset>
</form>
</div>

    </div><!-- .container -->
     
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
  
<script type="text/javascript" src="js/regvalidate.js"></script>
 <?php
include('includes/scripts.php');

include('includes/footer.php'); 
?>