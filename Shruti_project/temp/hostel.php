<?php
include "include/common.php";
include "include/functioni.php"; 
include "include/DbConnect.php"; 
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
              <h2>Our Hostel</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Our Hostel</a><i class="icon-angle-right"></i></li>
            
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">

             <h4 class="heading">Our<strong> Hostel </strong></h4>
             <img class="animated bounceInRight infinite" src="img/dummies/blog/hostel1.jpg" alt="" />
              <p>
                    The hostel is truly a  model for nurturing a sound body and steady mind for the students it is self sufficient in all respects and geared to take care of every need of the student the various kinds of service provided for the students
                    It provides best rooms with SOLAR WATER HEATER.
             </p>
 <!-- Portfolio Projects -->
        <div class="row">
          <div class="span8">
            <h4 class="heading">Hostel<strong>Photos</strong></h4>
            <div class="row">
              <section id="projects">
                <ul id="thumbs" class="portfolio">
                                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Batch 1" href="img/solar.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="img/solar.jpg">
                  </li>
                  <!-- End Item Project -->
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <a class="hover-wrap fancybox" data-fancybox-group="gallery" title="Batch 1" href="img/studytables.jpg">
            <span class="overlay-img"></span>
            <span class="overlay-img-thumb font-icon-plus"></span>
            </a>
                    <!-- Thumb Image and Description -->
                    <img src="img/studytables.jpg">
                  </li>
                  <!-- End Item Project -->
                  
                </ul>
              </section>
            </div>
          </div>
        </div>
        <!-- End Portfolio Projects -->

          </div>

          <div class="span4">
            <aside class="right-sidebar">
             <?php include "rightside.php"; ?>
            </aside>
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
  <script src="js/jquery.flexslider.js"></script>
  <script src="js/jquery.nivo.slider.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/jquery.ba-cond.min.js"></script>
  <script src="js/jquery.slitslider.js"></script>
  <script src="js/animate.js"></script>

  <!-- Template Custom JavaScript File -->
  <script src="js/custom.js"></script>
</body>
</html>

