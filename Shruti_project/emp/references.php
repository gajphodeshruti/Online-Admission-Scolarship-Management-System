<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
include('includes/header.php'); 
include('includes/navbar.php'); 

if(@$_REQUEST['submit']=='Submit'){
  $reff_name=$_POST['reff_name'];
  $contactno=$_POST['contactno'];
  $address=$_POST['address'];
  $statename=$_POST['statename'];
  $districtname=$_POST['districtname'];
  $cityname=$_POST['cityname'];
  $occupation=$_POST['occupation'];
  $other=$_POST['other'];
  $res=$dbobj->cgs("tbl_employee","emp_id","contactno='" .$user."'");
  $row=mysqli_fetch_assoc($res);
  $emp_id=$row['emp_id'];
$tbl="tbl_reff";
$field="reff_name,contact,address,stateid,districtid,cityid,occupation,other,addedby";
$values="'$reff_name','$contactno','$address','$statename','$districtname','$cityname','$occupation','$other','$emp_id'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
   header('location:referencesdetail.php');     
 }

 if(@$_REQUEST['data']=='operator')
  {
    
    $res=$dbobj->cgs("tbl_reff","*","reff_id=".$_GET['operator'],"");
    $row=mysqli_fetch_assoc($res);
  }

  if(@$_POST['submit']!='' && @$_POST['submit']=='Update')
  {
   extract($_POST);
    $reff_name=$_POST['reff_name'];
  $contactno=$_POST['contactno'];
  $address=$_POST['address'];
$statename=$_POST['statename'];
  $districtname=$_POST['districtname'];
  $cityname=$_POST['cityname'];
  $occupation=$_POST['occupation'];
  $other=$_POST['other'];
   $res=$dbobj->cgs("tbl_employee","emp_id","contactno='" .$user."'");
  $row=mysqli_fetch_assoc($res);
  $emp_id=$row['emp_id'];
  $tbl="tbl_reff";
$field="reff_name,contact,address,stateid,districtid,cityid,occupation,other,updatedby";
$values="'$reff_name','$contactno','$address','$statename','$districtname','$cityname','$occupation','$other','$emp_id'";
$res=$dbobj->cgu($tbl,$field,$values,"reff_id =".@$_REQUEST['reff_id'],"");
// $_SESSION['msg']="Operator Updated....";
           /* $stmt->close();*/
  header('location:referencesdetail.php'); 

} 
?>
<div id="content-wrapper">

    <div class="row">

 
 <div class="col-md-2 col-sm-2 col-xs-12"></div>
            <div class="col-md-8 col-sm-8 col-xs-12"> 

    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>References</b></h2></center></legend><br>

<!-- Text input-->
<input type="hidden" name="reff_id" id="reff_id" value="<?php if((@$_REQUEST['data']=='operator')&& @isset($row)) echo $row['reff_id'];?>"/>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Name</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  name="reff_name" id="reff_name" placeholder="Name" class="form-control" type="text" onblur="return validName()" onfocus="tooltip.pop(this, 'Please <br />Enter Name...');" value="<?php echo @$row["reff_name"]; ?>">
   <span id="rnameMsg"></span>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Contact Number</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
  <input type="text" id="contactno" name="contactno" class="form-control " placeholder="Contact Number" onfocus="tooltip.pop(this, 'Please <br />Enter your Contact Number...');" value="<?php echo @$row["contact"]; ?>">
   <span id="contactnoMsg"></span>
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Address</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
   <textarea class="form-control"  id="address" name="address"  placeholder="Please Enter a Address" onfocus="tooltip.pop(this, 'Please <br />Enter your address...');"><?php echo @$row["address"] ?></textarea>
      <div id="addressMsg"></div>
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
                    $sql="select * FROM tbl_district,tbl_reff where tbl_district.districtid=tbl_reff.districtid AND reff_id='".$_GET['operator']."'";
                     $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowx = @mysqli_fetch_assoc($result))  
                          //$sql= "SELECT * FROM tbl_district";
                          //$records = mysql_query($sql);
                          //while($rowx = mysql_fetch_assoc($records))
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
 </div>  </div>  </div> 
 
  <div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">City/Taluka</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
   <select id="city-list" class="form-control" name="cityname">
                    <option value="">Select City</option>
                    <?php
                     $sql="select * FROM tbl_city,tbl_reff where tbl_city.cityid=tbl_reff.cityid AND reff_id='".$_GET['operator']."'";
                      $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowx= @mysqli_fetch_assoc($result))
                  
                            {
                    ?>
                     <?php
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
  <label class="col-md-4 control-label" style="font-family:times new roman;">Occupation</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
         <input type="text" id="occupation" name="occupation" class="form-control " placeholder="Occupation" onfocus="tooltip.pop(this, 'Please <br />Enter Occupation...');" value="<?php echo @$row["occupation"];?>">
         <span id="occupationMsg"></span>
  </div>
</div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Other Information</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-leaf"></i></span>
  <input  name="other" id="other" placeholder="Other Information" class="form-control"  type="text" value="<?php echo @$row["other"];?>">
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
<script type="text/javascript" src="js/references-validation.js"></script>
 <?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>