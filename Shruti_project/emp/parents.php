<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
include('includes/header.php'); 
include('includes/navbar.php'); 

if(@$_REQUEST['data']=='operator')
  {
    
    $res1=$dbobj->cgs("tbl_registration","id","id=".$_GET['operator'],"");
    $row1=mysqli_fetch_assoc($res1);
  }
if(@$_REQUEST['submit']=='Submit'){
  $pname=$_POST['pname'];
  $pcontactno=$_POST['pcontactno'];
  $poccupation=$_POST['poccupation'];
  $aoworking=$_POST['aoworking'];
  $relation=$_POST['department'];
  $id=$row1['id'];
  $res=$dbobj->cgs("tbl_employee","emp_id","contactno='" .$user."'");
    $row=mysqli_fetch_assoc($res);
    $emp_id=$row['emp_id'];
$tbl="tbl_parentsdetails";
$field="parent_name,parent_contact,parent_occupation,area_of_working,rel_id,id,addedby";
$values="'$pname','$pcontactno','$poccupation','$aoworking','$relation','$id','$emp_id'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
  // header('location:users.php'); 
  $url = "users.php?data=operator&operator=". $row1['id'];
  header("Location: $url");    
 } 

 else if(@$_REQUEST['data']=='op')
  {
    
    $res=$dbobj->cgs("tbl_parentsdetails","*","parent_id=".$_GET['op'],"");
    $row=mysqli_fetch_assoc($res);
  }

  if(@$_POST['submit']!='' && @$_POST['submit']=='Update')
  {
   extract($_POST);
   $pname=$_POST['pname'];
  $pcontactno=$_POST['pcontactno'];
  $poccupation=$_POST['poccupation'];
  $aoworking=$_POST['aoworking'];
  $relation=$_POST['department'];
  $res=$dbobj->cgs("tbl_employee","emp_id","contactno='" .$user."'");
  $row=mysqli_fetch_assoc($res);
  $emp_id=$row['emp_id'];
 $tbl="tbl_parentsdetails";
$field="parent_name,parent_contact,parent_occupation,area_of_working,rel_id,lastupdate";
$values="'$pname','$pcontactno','$poccupation','$aoworking','$relation','$emp_id'"; 
$res=$dbobj->cgu($tbl,$field,$values,"parent_id =".@$_REQUEST['parent_id'],"");
 $res1=$dbobj->cgs("tbl_registration","id","id=".$_GET['operator'],"");
 $row1=mysqli_fetch_assoc($res1);
 $url1 = "users.php?data=operator&operator=". $row1['id'];
  header("Location: $url1");
  //header('location:users.php');  
} 
?>
<div id="content-wrapper">

    <div class="row">

 <div class="col-md-2 col-sm-2 col-xs-12"></div>
            <div class="col-md-8 col-sm-8 col-xs-12"> 
    <form class="well form-horizontal" action=" " method="post"  id="contact_form">
<fieldset>

<!-- Form Name -->
<legend><center><h2><b>Parent/Gardian/Teacher Details</b></h2></center></legend><br>

<!-- Text input-->
<input type="hidden" name="parent_id" id="parent_id" value="<?php if((@$_REQUEST['data']=='op')&& @isset($row)) echo $row['parent_id'];?>"/>
<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Name</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input type="text"  class="form-control" id="pname" name="pname" placeholder="Name" onblur="return validPName()" onfocus="tooltip.pop(this, 'Please <br />Enter Your Name...');" value="<?php echo $row['parent_name'];?>">
  <span id="pnameMsg"></span>
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Contact Number</label> 
    <div class="col-md-6 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
  <input type="text" id="pcontactno" name="pcontactno" class="form-control " placeholder="Contact Number" onfocus="tooltip.pop(this, 'Please <br />Enter your Contact Number...');" value="<?php echo $row['parent_contact'];?>">
   <span id="pcontactnoMsg"></span>
    </div>
  </div>
</div>

  <div class="form-group"> 
  <label class="col-md-4 control-label" style="font-family:times new roman;">Occupation</label>
    <div class="col-md-6 selectContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
         <input type="text" id="poccupation" name="poccupation" class="form-control " placeholder="Occupation" onfocus="tooltip.pop(this, 'Please <br />Enter Occupation...');" value="<?php echo $row['parent_occupation'];?>">
         <span id="poccupationMsg"></span>
  </div>
</div>
</div>
  
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Area Of Working</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
  <input type="text" id="aoworking" name="aoworking" class="form-control " placeholder="Area Of Working" onfocus="tooltip.pop(this, 'Please <br />Enter Area Of Working...');" value="<?php echo $row['area_of_working'];?>">
    </div>
  </div>
</div>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" style="font-family:times new roman;">Relation with Student</label>  
  <div class="col-md-6 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-grain"></i></span>
       <select id="department" name="department" class="form-control selectpicker">
                    <option value="">Select Relation</option>
                    <?php
                        $res=$dbobj->cgs("tbl_relation","*","","");
                      while($rowx=mysqli_fetch_assoc($res))
                            {
                    ?>
                         <option value="<?php echo $rowx["rel_id"]; ?>"
                         <?php if(@$row['rel_id'] == $rowx['rel_id'])
                         {
                          echo "selected";
                         }
                         ?> >  <?php echo $rowx["rel_name"]; ?></option>
                    <?php
                            }
                    ?>
                    </select>
 
    </div>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input style=" border-radius: 4px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);" type="submit" class="btn btn-primary btn-lg"  name="submit" id="submit" value="<?php if((@$_REQUEST['data']=='op')&& @isset($row)) echo "Update"; else echo "Submit";?>">
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
<script type="text/javascript" src="js/jquery.js" charset="utf-8"></script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/parentsvalidate.js"></script>

 <?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>