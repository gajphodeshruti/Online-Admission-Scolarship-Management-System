<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
include('includes/header.php'); 
include('includes/navbar.php'); 

$user = $_SESSION['username'];
$res=$dbobj->cgs("tbl_registration","*","contactno='" .$user."'","");
if(@$_REQUEST['submit']=='Upload')
{
  $filename = uniqid().$_FILES['uploadfile']['name'];
  $filetempname =$_FILES['uploadfile']['tmp_name'];
  $folder ='../img/profile/';
  move_uploaded_file($filetempname, $folder.$filename);
 $tbl="tbl_registration";
$field="imagename";
$values="'$filename'"; 
$res=$dbobj->cgu($tbl,$field,$values,"contactno='" .$user."'","");
header('location:users.php');

}

if(@$_GET['a321']!='')
  {
    extract($_GET);
    $del_sql="update tbl_educationdetails set edu_isdeleted=1 where edu_id='$a321'";

    $del_res=@$dbobj->custom_query($del_sql);
   // $_SESSION['msg']=" Mark As Deleted....";  
    
  } 

  if(@$_GET['a322']!='')
  {
    extract($_GET);
    $del_sql="update tbl_parentsdetails set p_isdeleted=1 where parent_id='$a322'";

    $del_res=@$dbobj->custom_query($del_sql);
 }
?>

<div id="content-wrapper">


 <h1 class="text-primary" style="font-family:times New Roman;"><i class="fa fa-user"></i>Student Profile<small>&nbsp;My Profile</small></h1>
<ol class="breadcrumb" style="font-family:times New Roman;">
<li><a href=""><i class="fa fa-dashboard "></i>Dashboard</a></li>
<li class="active"><i class="fa fa-user"></i>Profile</li>
</ol>
 

    <div class="row">
     <div class="col-md-8">
            <div class="panel with-nav-tabs panel-primary" id="tabs">
                <div class="panel-heading">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab1primary" data-toggle="tab" style="font-family:times New Roman;">Profile</a></li>
                            <li><a href="#tab2primary" data-toggle="tab" style="font-family:times New Roman;">Education Details</a></li>
                            <li><a href="#tab3primary" data-toggle="tab" style="font-family:times New Roman;">Parent/Gardient/Teacher Information</a></li>
                          
                        </ul>
                </div>
                <?php 
 while($row=mysqli_fetch_assoc($res))
 // while($row = mysql_fetch_assoc($records)) 
{
?>  
                <div class="panel-body">
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="tab1primary">
<table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
          
        <tr>
          <td style="font-family:times New Roman;"><b>User Id</b></td>
         <td style="text-align:center;"><?php echo $row['id'] ?></td>
        </tr> 
        <tr>
          <td style="font-family:times New Roman;"><b>Name</b></td>
          <td style="text-align:center;"><?php echo $row['fname'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b>Address</b></td>
          <td style="text-align:center;"><?php echo $row['address'] ?></td>
        </tr> 
        <tr>
          <td style="font-family:times New Roman;"><b> Contact Number</b></td>
          <td style="text-align:center;"><?php echo $row['contactno'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b>Email</b></td>
          <td style="text-align:center;"><?php echo $row['email'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b> Faculty</b></td>
          <td style="text-align:center;"><?php echo $row['faculty'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b> Class</b></td>
          <td style="text-align:center;"><?php echo $row['year'] ?></td>
        </tr>
        
        <tr>
          <td style="font-family:times New Roman;"><b>Role</b></td>
          <?php
                   $sql="select  tbl_enquiry.enquiryid,tbl_enquiry.enquiryname FROM  tbl_enquiry,tbl_registration where  tbl_enquiry.enquiryid=tbl_registration.enquiryid AND contactno= '" .$user."'";
                      $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowz = @mysqli_fetch_assoc($result))  
                    {
                    ?>
          <td style="text-align:center;"><?php echo $rowz['enquiryname'] ?></td>
          <?php
            }
          ?>
        </tr>
        
        </table>
        
        <a href="update-profile.php?data=operator&operator=<?php echo $row['id'];?>" class="btn btn-sm btn-info pull-right">Edit Profile</a>


                          


                        </div>
                        <div class="tab-pane fade" id="tab2primary">
                          <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
                <thead class="thead-dark" bgcolor="#4063ad">
                  <tr>

                    <th style="text-align:center;font-family:times New Roman;color:white;">Exam Name</th>
                       <th style="text-align:center;font-family:times New Roman;color:white;">Exam Year</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Exam Board</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">School</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Percentage</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Action</th>
</tr>
</thead>

             <?php
         
                       
            $sql="select * FROM tbl_educationdetails,tbl_registration where tbl_educationdetails.id=tbl_registration.id AND contactno= '" .$user."'";
            $results =mysqli_query($GLOBALS['conn'],$sql);
                     while($rz = @mysqli_fetch_assoc($results))  
                    {
                      if($rz['edu_isdeleted'] == 0)
                      {
                    ?>
                    <tr style="text-align:center;">
                    <td><?php echo $rz['exams'] ?></td>
                     <td><?php echo $rz['year'] ?></td>
                     <td><?php echo $rz['Board'] ?></td>
                     <td><?php echo $rz['school'] ?></td>
                      <td><?php echo $rz['percentage'] ?></td>
                      <td><a href="education.php?data=operator&operator=<?php echo $rz['edu_id'];?>"><img src="../img/b_edit.png" title="Edit"></a>
        &nbsp;&nbsp;&nbsp;
        <a href="users.php?data=operator&a321=<?php echo $rz['edu_id'];?>"><img src="../img/b_drop.png" onmouseover="tooltip.pop(this, 'Delete')" title="Delete"></a>
       </td>
                        </tr>
          <?php
        }
            }
          ?>
  
                
                  
  </tr> 
  
              </table>
              <a href="education.php" class="btn btn-sm btn-info pull-right">ADD</a>
</div>
                        <div class="tab-pane fade" id="tab3primary"><table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
                <thead class="thead-dark" bgcolor="#4063ad">
  <th style="text-align:center;font-family:times New Roman;color:white;">Parent/Gardient/Teacher Name</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Contact No.</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Occupation</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Area of working</th>
   <th style="text-align:center;font-family:times New Roman;color:white;">Relation</th>
<th style="text-align:center;font-family:times New Roman;color:white;">Action</th>
</thead>
         <?php
            $sql="select * FROM  tbl_parentsdetails,tbl_registration,tbl_relation where tbl_parentsdetails.id=tbl_registration.id and tbl_relation.rel_id= tbl_parentsdetails.rel_id AND contactno= '" .$user."'";
                       $results =mysqli_query($GLOBALS['conn'],$sql);
                     while($rz = @mysqli_fetch_assoc($results)) 
                    {
                      if($rz['p_isdeleted'] == 0)
                      {
                    ?>
                    <tr style="text-align:center;">
                    <td ><?php echo $rz['parent_name'] ?></td>
                     <td><?php echo $rz['parent_contact'] ?></td>
                     <td><?php echo $rz['parent_occupation'] ?></td>
                     <td><?php echo $rz['area_of_working'] ?></td>
                     <td><?php echo $rz['rel_name'] ?></td> 
                     <td><a href="parents.php?data=operator&operator=<?php echo $rz['parent_id'];?>"><img src="../img/b_edit.png" title="Edit"></a>
        &nbsp;&nbsp;&nbsp;
         <a href="users.php?data=operator&a322=<?php echo $rz['parent_id'];?>"><img src="../img/b_drop.png" onmouseover="tooltip.pop(this, 'Delete')" title="Delete"></a>

       </td>
       </tr>
          <?php
             }
            }
          ?>
        
        </table>
        
        <a href="parents.php" class="btn btn-sm btn-info pull-right">ADD</a></div>
                     
                    </div>
                </div>
            </div>
        </div>
    
		
    <div class="col-md-4">
      <?php
     echo "<a href='../img/profile/".$row['imagename']."'><img src='../img/profile/".$row['imagename']."' class='img-thumbnail' width='250' height='250'></a>";
    //  echo "<a href='../".$row['imagename']."'><img src='../".$row['imagename']."' class='img-thumbnail' width='250' height='250'></a>";
     
      ?>
      
        </a>
        
        
      <?php
      }
      ?>
               
<form action="" method="post" enctype="multipart/form-data">
          <div class="content-wrapper">
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <label for="photo" Style="color:black" align="center">Profile Picture</label>
        
          </div>
          <div class="row">
              
              <div class="col-md-4 col-sm-4 col-xs-12">
          <input type="file" name="uploadfile"><br>
          </div>
          </div>
          <div class="row">
              <div class="col-md-1 col-sm-1 col-xs-12"></div>
              <div class="col-md-4 col-sm-4 col-xs-12">
          <input type="submit" name="submit" id="submit" value="Upload" class="btn btn-info btn-sm"/>
          </div>
          </div>
         
          </div>
         </form>
   


                </div>
              </div>

        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</div>



 <?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>