<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
include('includes/header.php'); 
include('includes/navbar.php');

  if(@$_GET['a322']!='')
  {
    extract($_GET);
    $del_sql="update tbl_registration set isdeleted=1 where id='$a322'";
    $del_res=@$dbobj->custom_query($del_sql);

    $del_sql1="update tbl_educationdetails set edu_isdeleted=1 where id='$a322'";
    $del_res1=@$dbobj->custom_query($del_sql1);

    $del_sql2="update tbl_parentsdetails set p_isdeleted=1 where id='$a322'";
    $del_res2=@$dbobj->custom_query($del_sql2);
 }
?>

<div id="content-wrapper">


 <h1 class="text-primary" style="font-family:times New Roman;"><i class="fa fa-user"></i>Student Details</h1>
<ol class="breadcrumb" style="font-family:times New Roman;">

    <div class="row">
     <div class="col-md-8">
 
           <form action="" method="POST" id="search_frm" name="search_frm">
                   <div class="content-wrapper">
                    <div class="row">
                      <div class="col-md-9 col-sm-9 col-xs-12">
                  <input type="text" name="search_cnt" id="search_cnt" class="input_bg"  style="width:40%;margin-left:20px; border-radius: 0 5px 5px 0;"><input type="submit" name="search" id="search" value="Search" style="  border-radius: 0 5px 5px 0;"></div>
                 <div class="col-md-3 col-sm-3 col-xs-12">
                  &nbsp; &nbsp; &nbsp; &nbsp;
                 <button type="button" style="border-radius: 5px 5px 5px 5px;" onclick="window.location.href='add-student.php';">
                  <img src="../img/add-user24.png">
                  Add User
                </button>
               
                  </div> 
                  </div>
                  </div>
                  </form>
                  <br />
          <div class="table-responsive">
                  <table class="table table-bordered " id="dataTable" width="100%" cellspacing="0">
                <thead class="thead-dark" bgcolor="#4063ad">
          
          
         <th style="text-align:center;font-family:times New Roman;color:white;">No.</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Student Name</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Contact No.</th>
  <th style="text-align:center;font-family:times New Roman;color:white;">Address</th>
  
<th style="text-align:center;font-family:times New Roman;color:white;">Action</th>
</thead>
         <?php
                    $tbl="tbl_registration";
                    
                    $result_per_page =50; // results per page
                    $page   = intval(@$_GET['page']);
                    $tpages = (@$_GET['tpages']) ? intval($_GET['tpages']) : 5; // by default
                    $adjacents  = intval(@$_GET['adjacents']);
                    if($page<=0){  
                            $page  = 1;
                          }
                    if($adjacents<=0) 
                    $adjacents = 4;
                    $reload = $_SERVER['PHP_SELF'] . "?tpages=" . $tpages . "&amp;adjacents=" . $adjacents . "div_disp=false";
                    
                    $field="*";
                    if(@$_POST['search']!='')
                    {
                      extract($_POST);
                      $con="fname like '%$search_cnt%' OR contactno like '%$search_cnt%' OR address like '%$search_cnt%' order by id desc";
                    }
                    else
                  {
                    $con="1 order by id desc";
                    }
                    
                    $res=$dbobj->cgs($tbl,$field,$con,"");
                    $tcount = @mysqli_num_rows($res);
                    $flag1=0;
                    $rowcount=1;
                    
                    /*-----------pagination start--------------*/
              
                    // count number of pages:
                    $tpages = ($tcount) ? ceil($tcount/$result_per_page) : 1; // total pages, last page number
                    $pageno=$tpages;
                    $count = 0;
                    $i = ($page-1)*$result_per_page;
                  while(($count<$result_per_page) && ($i<$tcount))
                  {
                  mysqli_data_seek($res,$i);
                  $row=mysqli_fetch_assoc($res);
                  $flag1=1;
                 
                  ?>
                  
         <tr style="text-align:center;">
          <?php
          if($row['isdeleted'] == 0)
                      {
                        ?>
         <td style="text-align: center;"><?php echo $i+1;?></td>
            <td style="text-align: center;"><?php echo ucwords($row['fname']);?> <b>(<?php echo ucwords($row['id']);?>)</b></td>
          <td><?php echo $row['contactno'] ?></td>
          <td style="text-align: center;"><?php echo ucwords($row['address']);?></td>
          <?php
          }
          else
                      {
          ?>
          <td style="text-align: center;"><?php echo $i+1;?></td>
            <td style="text-align: center;"><?php echo ucwords($row['fname']);?> <b>(<?php echo ucwords($row['id']);?>)</b></td>
          <td style="color: red;"><?php echo $row['contactno'] ?></td>
          <td style="text-align: center;"><?php echo ucwords($row['address']);?></td>
          <?php
          
          }
          ?>
                     <td>
        <a href="users.php?data=operator&operator=<?php echo $row['id'];?>"><img src="../img/find.png" title="View"></a>
        &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="index.php?data=operator&a322=<?php echo $row['id'];?>"><img src="../img/b_drop.png" onmouseover="tooltip.pop(this, 'Delete')" title="Delete"></a>
         </tr>
           <?php 
            
                  $i++;
                  $count++;
                  }
                  ?>
  
        </table> </div>
         <?php if($tcount > $result_per_page){ ?>
                  <div style="height: 30px;width:auto;margin-top:10px;margin-left:75%;">
                    <?php
                    if(!($pageno=="1"))
                    {
                    include("pagination.php");
                    echo paginate_three($reload, $page, $tpages, $adjacents);
                    }
                  ?>  
                  </div>
                  <?php 
                }

                 ?>
                  
        </div>
    
		
    <div class="col-md-4">
   
       

            </div>

          </div>  
        </div>


</div>
</div>

    </div>

  </div>

		     </div>
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