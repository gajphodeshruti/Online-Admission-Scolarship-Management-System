<?php
include "include/common.php";
include "include/functioni.php"; 
include "include/DbConnect.php"; 
if(isset($_POST['submit']))
{
  $username = $_POST['username'];
  $email = $_POST['email'];
  $subject = $_POST['subject'];
  $comment = $_POST['comment']; 
  $tbl="tbl_contact";
  $field="contact_name,contact_email,contact_subject,contact_message";
  $values="'$username','$email','$subject','$comment'";
  $res=$dbobj->cgi($tbl,$field,$values,"");
  if($res)
  {
   header('location:contact-us.php');
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
              <h2>Contact Us</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li class="active">Contact</li>
            </ul>
          </div>
        </div>
      </div>
    </section>
  <section id="content">
     <div class="container">
        <div class="row">
		 	
    <div class="span4"> 
 <div class="widget">
              <h5 class="widgetheading">Get in touch with us</h5>
              <address>
								<strong>VPASCC Alumni Association Baramati | Reconnecting the disconecteds...</strong><br>
								122 Mhada Colony, Gunawadi Road, Baramati, Dist Pune, 413102(M.S.)<br>
							
					 		</address>
              <p>
                <i class="icon-phone"></i> 770 910 0009 <br>
                <i class="icon-envelope-alt"></i> http://shivskillfoundation.com
              </p>
            </div>	
    <br><br><br>      
	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3791.4473470761345!2d74.57097431436345!3d18.143295085339872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMTjCsDA4JzM1LjgiTiA3NMKwMzQnMjMuNCJF!5e0!3m2!1sen!2sin!4v1613855576514!5m2!1sen!2sin" width="150%" height="380" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
      
    </div>
     <div class="span2">
     </div>
          <div class="span6">
           <h4> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact <strong>Us</strong></h4>

            <form action="" method="post" role="form" class="contactForm">
              <div class="row">
                <div class="span5 form-group">
                  <input type="text" class="form-control" placeholder="Your Name" name="username" id="username">
                      <div id="nameMsg"></div>
                </div>
                <div class="span5 form-group">
                 <input type="email" class="form-control" placeholder="Email" name="email" id="email">
                      <div id="emailMsg"></div>
                </div>
                <div class="span5 form-group">
                  <input type="text" class="form-control" placeholder="Subject" name="subject" id="subject">
                      <span id="subjectMsg"></span>

                </div>
               
                <div class="span5 margintop10 form-group">
                  <textarea placeholder="Message" rows="12" class="form-control" name="comment" id="comment"></textarea>
                      <span id="commentMsg"></span>
                    </div>
                  <p class="text-center">
                    <input type="submit" name="submit" id="submit" class="btn-large btn-theme margintop10" value="Submit message">
                  </p>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
     <footer>
     <?php include "footer.php"; ?>
    </footer>
  </div>
  <a href="#" class="scrollup"><i class="icon-chevron-up icon-square icon-32 active"></i></a>
      </div>
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
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>
  <script src="js/custom.js"></script>
  <script src="js/scontactvalidate.js"></script>
</body>

</html>
