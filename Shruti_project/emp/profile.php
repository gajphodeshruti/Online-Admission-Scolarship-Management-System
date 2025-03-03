<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
include('includes/header.php'); 
include('includes/navbar.php'); 
$res=$dbobj->cgs("tbl_employee","*","role='employee'","");

?>


<div class="container">
 <div class="center"> 
  <div class="card blue">
    <div class="additional">
      <div class="user-card">
      	   <?php 
            while($row=mysqli_fetch_assoc($res))
            // while($row = mysql_fetch_assoc($records)) 
             {
           ?>  
        <div class="level center">
        <?php echo $row['emp_name'] ?>
        </div>
        
        <br><br><br> <br><br><br><br><br><br>
        <div class="container">
        	 <?php
              // echo "<a href='../img/profile/".$row['imagename']."'><img src='../img/profile/".$row['imagename']."' class='img-thumbnail' width='250' height='250'></a>";
              echo "<a href='../img/profile/".$row['emp_imgname']."'><img src='../img/profile/".$row['emp_imgname']."' width='100' height='100' style='border-radius:50%'></a>";
                //  echo "<a href='../".$row['imagename']."'><img src='../".$row['imagename']."' class='img-thumbnail' width='250' height='250'></a>";     
           ?></a>     
        </div>

        <div class="points center">
          <?php echo $row['contactno'] ?>
        </div>
    </div>
      <div class="more-info">
        <h1> <?php echo $row['emp_name'] ?></h1>
        
          <br>
        <div class="coords">
          <span>Address</span>
          <span><?php echo $row['emp_address'] ?></span>           
        </div>
        <div class="coords">
          <span>Position/Role</span>
          <span><?php echo $row['role'] ?></span>         
        </div>
       

        <div class="stats">
          <div>
            <div class="title">Students</div>
            <i class="fa fa-group"></i>
             <?php
//mysql_connect("localhost","root",""); 
//mysql_select_db('chanakya');
$sql="select * from tbl_registration where role='student'";
$records=mysqli_query($GLOBALS['conn'],$sql);

$num=@mysqli_num_rows($records);
?>
            <div class="value"><?php echo $num; ?></div>
          </div>
          <div>
            <div class="title">Schools </div>
            <i class="fa fa-group"></i>
             <?php
$result1 = mysqli_query($GLOBALS['conn'],"SELECT count(*) FROM tbl_school");
$num=@mysqli_num_rows($result1);
?>
            <div class="value"><?php echo $num; ?></div>
          </div>
          <div>
            <div class="title">Refferences</div>
            <i class="fa fa-group"></i>
                         <?php
$res1= mysqli_query($GLOBALS['conn'],"SELECT count(*) FROM tbl_reff");
$num1=@mysqli_num_rows($res1);
?>
            <div class="value"><?php echo $num1; ?></div>
          </div>          
        </div>

      </div>
    </div>

    <div class="general">

<br><br><br>

      <table class="table" id="dataTable" width="100%" cellspacing="2">
          
        <tr>
          <td style="font-family:times New Roman;"><b>User Id</b></td>
         <td style="text-align:center;"><?php echo $row['emp_id'] ?></td>

        </tr> 
        <tr>
          <td style="font-family:times New Roman;"><b>Name</b></td>
          <td style="text-align:center;"><?php echo $row['emp_name'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b>Address</b></td>
          <td style="text-align:center;"><?php echo $row['emp_address'] ?></td>
        </tr> 
        <tr>
          <td style="font-family:times New Roman;"><b> Contact Number</b></td>
          <td style="text-align:center;"><?php echo $row['contactno'] ?></td>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b>Gender</b></td>
          <td style="text-align:center;"><?php echo $row['emp_gender'] ?></td>
           <?php
            }
          ?>
        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b> State</b></td>
          <?php
         
                  
                    $sql="select states.statename,states.stateid FROM states,tbl_employee where states.stateid=tbl_employee.stateid AND contactno= '" .$user."'";
                     $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowx = @mysqli_fetch_assoc($result)) 
                      {
                       ?>
          <td style="text-align:center;"><?php echo $rowx['statename'] ?></td>
          <?php
            }
          ?>

        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b>District</b></td>
          <?php
          
                    $sql="select tbl_district.districtid,tbl_district.districtname FROM tbl_district,tbl_employee where tbl_district.districtid=tbl_employee.districtid AND contactno= '" .$user."'";
                     $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowy = @mysqli_fetch_assoc($result))  
                    {
                    ?>
          <td style="text-align:center;"><?php echo $rowy['districtname'] ?></td>
          <?php
            }
          ?>

        </tr>
        <tr>
          <td style="font-family:times New Roman;"><b> Taluka</b></td>
          <?php
      
            
                    $sql="select tbl_city.cityid,tbl_city.cityname FROM tbl_city,tbl_employee where tbl_city.cityid=tbl_employee.cityid AND contactno= '" .$user."'";
                      $result =mysqli_query($GLOBALS['conn'],$sql);
                     while($rowz= @mysqli_fetch_assoc($result))  
                    {
                    ?>
          <td style="text-align:center;"><?php echo $rowz['cityname'] ?></td>
          <?php
            }
          ?>
        </tr>
        
        </table>

    </div>

  </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php"><img  src="back.png"></a>

</div>

</div>

<script src="js/jquery.min.js"></script>
 <?php
include('includes/scripts.php');
include('includes/footer.php'); 
?>