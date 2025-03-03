<?php
include "include/common.php";
include "include/functioni.php"; 
include "include/DbConnect.php"; 
session_start();
if(@$_REQUEST['submit']=='SignUp'){
 $fname=$_POST['fname'];
  $address=$_POST['address'];
  $contactno=$_POST['contactno'];
  $email=$_POST['email'];
   $faculty=$_POST['faculty'];
  $year=$_POST['year'];
  $cityname=$_POST['cityname'];
  $enquriy=$_POST['enquiryfor'];
  $password=$_POST['pass'];
  $target='img/profile/';
   
   $filename = uniqid().$_FILES['uploadfile']['name'];
   
  $filetempname = $_FILES['uploadfile']['tmp_name'];
 $folder ='img/profile/';
  //$target1=$target.basename(@$_FILES['uploadfile']['name']);
 $role="student";
  move_uploaded_file($filetempname, $folder.$filename);
 // move_uploaded_file(@$_FILES['uploadfile']['tmp_name'],$target1);
  $tbl="tbl_registration";
  $field="fname,contactno,email,faculty,year,password,imagename,role";
  $values="'$fname','$contactno','$email','$faculty','$year','$password','$filename','$role'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
//$query=mysqli_query($con,"insert into tbl_registration(fname,address,contactno,gender,stateid,districtid,cityid,enquiryid,password,imagename,role) values('$fname','$address','$contactno','$gender','$statename','$districtname','$cityname','$enquriy','$password','$filename','student')");
    if($res)
  {
	$_SESSION['msg']="Registration Successfull...";
    header('location:login.php');
  }
  else
  {
    echo "<script>alert('Data not inserted');</script>";
  }
 }
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>VPASCC Alumni Association Baramati | Reconnecting the disconecteds...</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="css/jcarousel.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/news.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link href="skins/red.css" rel="stylesheet" />
  <!-- boxed bg -->
  <link id="bodybg" href="bodybg/bg1.css" rel="stylesheet" type="text/css" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/tooltip.css">
</head>

<body>

<div  class="border">

  <div id="wrapper">

    <!-- start header -->
    <header>
     <?php include "header.php";?>
    </header>
    <!-- end header -->
    <?php include "news.php";?>
    <section id="inner-headline">
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="inner-heading">
              <h2>Registration</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Registration</a><i class="icon-angle-right"></i></li>
            
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
             <h4 class="heading" align="center"><strong>Register</strong>&nbsp;here</h4>
           
            <form action="" method="post" role="form" class="contactForm"  enctype="multipart/form-data">
              <div class="row">

                <div class="span2"></div>
                <div class="span5 form-group">
                 <input type="text"  class="form-control" id="fname" name="fname" placeholder="Name" onblur="return validName()" onfocus="tooltip.pop(this, 'Please <br />Enter your  Name...');" value="<?php echo @$row["name"]; ?>" required/>                     
                      <div id="fnameMsg"></div>
                </div>

                 <div class="span2"></div>
                <div class="span5 form-group">
				<input type="hidden" id="address" name="address" value="address"/>
                <!-- <textarea class="form-control"  id="address" name="address"  placeholder="Please Enter a Address" onfocus="tooltip.pop(this, 'Please <br />Enter your address...');"><?php echo @$row["address"] ?></textarea>-->
                    <div id="addrMsg"></div>
                </div>

                 <div class="span2"></div>
                <div class="span5 form-group">
                    <input type="text" id="contactno" name="contactno" class="form-control " placeholder="Contact Number" value="<?php echo @$row["contactno"]; ?>" onfocus="tooltip.pop(this, 'Please <br />Enter your Contact Number...');" required/>
                      <br>
                     <div id="conMsg"></div>

                </div>
				<div class="span2"></div>
               <div class="span5 form-group">
                    <input type="text" id="email" name="email" class="form-control " placeholder="Email Id" value="<?php echo @$row["email"]; ?>" onfocus="tooltip.pop(this, 'Please <br />Enter your Email...');"/>
                      <br>
                     <div id="emailMsg"></div>

                </div>
                <div class="span2"></div>
                <div class="span5 form-group">

                   <!-- <select id="state-list" onChange="getDistrict(this.value);" class="form-control"  name="statename">
                    <option value="">Select Faculty</option>
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
                    </select>-->
					
					<select id="faculty" class="form-control"  name="faculty" required>
                    <option value="">Select Faculty</option>
                    <option value="B.A.">B.A.</option>
                    <option value="B.Com.">B.Com.</option>
                    <option value="B.Sc.">B.Sc.</option>
                    <option value="B.Sc.(Computer Science)">B.Sc.(Computer Science)</option>
                    <option value="B.Sc.(Biotech)">B.Sc.(Biotech)</option>
                    <option value="B.C.A.(Science)">B.C.A.(Science)</option>
                    <option value="B.B.A.(C.A.)">B.B.A.(C.A.)</option>
                    <option value="B.Voc.(Foodtech)">B.Voc.(Foodtech)</option>
					<option value="M.Sc.">M.Sc.</option>
                    <option value="M.Sc.(Computer Science)">M.Sc.(Computer Science)</option>
                    <option value="M.Sc.(Biotech)">M.Sc.(Biotech)</option>
                    </select>

                </div>
               
                <div class="span2"></div>
                <div class="span5 form-group">
                  <select id="year" class="form-control"  name="year" required>
                    <option value="">Select Class</option>
                    <option value="F.Y.">F.Y.</option>
                    <option value="S.Y.">S.Y.</option>
                    <option value="T.Y.">T.Y.</option>
                   
                    </select>
                     <!--<select id="district-list" onChange="getCity(this.value);" class="form-control" name="districtname">
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
              
                    </select>-->

                </div>

               

              <div class="span2"></div>
                <div class="span5 form-group">
                     <input type="password" id="pass" name="pass" class="form-control" placeholder="Password" value="" onfocus="tooltip.pop(this, 'Please <br />Enter your Password...');" required>
                      
                     <div id="passMsg"></div>

                </div>

                <div class="span2"></div>
                <div class="span5 form-group">
                       <input type="password" id="cpwd" name="cpwd" class="form-control" placeholder="Confirm Password" onfocus="tooltip.pop(this, 'Please <br />Enter your Confirm Password...');" required>
                     
                     <div id="cpwdMsg"></div>

                </div>
                 
                 <div class="span2"></div>
                <div class="span5 form-group">
                     Photo : <input type="file" name="uploadfile" class="form-control">    
                </div>

               <div class="span2"></div>
                <div class="span5 margintop10 form-group">
                   <p class="text-center">
                     Already have an account? <a href="login.php">Sign in</a>
                     <br>
                    <input type="submit" name="submit" id="submit" value="SignUp" class="btn btn-large margintop10 btn-primary btn-theme btn-block btn-lg">
                  </p>

                    </div>
                 
                </div>
              </div>
            </form>
 <div class="span4">
            <aside class="right-sidebar">
             <?php include "rightside.php"; ?>
            </aside>
          </div>
        </div>


          </div>
         
      </div>
    </section>
  <footer>
     <?php include "footer.php"; ?>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
  <!-- javascript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="js/jquery.js"></script>
   <script src="js/jquery.min.js"></script>
 <script type="text/javascript" src="js/tooltip.js" charset="utf-8"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jcarousel/jquery.jcarousel.min.js"></script>
  <script src="js/jquery.fancybox.pack.js"></script>
  <script src="js/jquery.fancybox-media.js"></script>
  <script src="js/google-code-prettify/prettify.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/tweet/jquery.tweet.js"></script>
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>
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
</body>

</html>
