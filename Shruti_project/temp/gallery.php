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
              <h2>Gallery</h2>
            </div>
          </div>
          <div class="span8">
            <ul class="breadcrumb">
              <li><a href="#"><i class="icon-home"></i></a><i class="icon-angle-right"></i></li>
              <li><a href="#">Gallery</a><i class="icon-angle-right"></i></li>
            
            </ul>
          </div>
        </div>
      </div>
    </section>

    <section id="content">
      <div class="container">
        <div class="row">
          <div class="span8">
             <h4 class="heading">Some of recent <strong>Photos</strong></h4>
            <ul id="thumbs" class="portfolio">
           <?php
                   
                    //echo $gallery_type;exit;
                    $tbl="tbl_gallery";
                    $res_per_page =4; // results per page
                    $page   = intval(@$_GET['page']);
                    $tpages = (@$_GET['tpages']) ? intval($_GET['tpages']) :4; // by default
                    $adjacents  = intval(@$_GET['adjacents']);
                    if($page<=0){  
                            $page  = 1;
                          }
                    if($adjacents<=0) 
                    $adjacents =3;
                     $reload = $_SERVER['PHP_SELF'] . "?tpages=" . $tpages . "&amp;adjacents=" . $adjacents . "div_disp=false";
                    
                    $field="*";
                  
                $query = "SELECT * FROM tbl_gallery where gallery_typeid='1'"; 
                   
                    //echo $query;exit;
                    //$res=$dbobj->cgs("tbl_staff_details","*","1","");
            
                    
                    $res=$conn->query($query);
                    //echo $res;exit;
                    $tcount =@$res->num_rows;
                    //echo $tcount;exit;
                    $flag1=0;
                    $rowcount=1;
                    
                    /*-----------pagination start--------------*/
              
                    // count number of pages:
                    $tpages = ($tcount) ? ceil($tcount/$res_per_page) : 1; // total pages, last page number
                    $pageno=$tpages;
                    $count = 0;
                    $i = ($page-1)*$res_per_page;
                  while(($count<$res_per_page) && ($i<$tcount))
                  {
                  @mysqli_data_seek($res,$i);
                  $row=$res->fetch_assoc();
                  //echo "<pre>";print_r($row);exit;
                  $flag1=1;
                  
                  ?>
                  <!-- Item Project and Filter Name -->
                  <li class="item-thumbs span3 design" data-id="id-0" data-type="web">
                    <!-- Fancybox - Gallery Enabled - Title - Full Image -->
                    <?php
              
                   
                    
                      
                      
                      
                          echo "<div class='gal'>";
                           echo "<a href='admin/".$row['image_name']."' class='hover-wrap fancybox' data-fancybox-group='gallery'>";
                          echo  " <span class='overlay-img'></span>";
                              echo "<span class='overlay-img-thumb font-icon-plus'></span>";
                       echo "</a>"; 
                     
                           echo " <img src='admin/".$row['image_name']."' style='height:148px;width:272px;''>";
                           ?>
                          </div>
                      
                  
                    
                
                  </li>
                  <!-- End Item Project -->
             
             
           
                    <?php 
                    $i++;
                    $count++; } ?>
                </ul>
                
             
          </div>
          <div class="span4">
            <aside class="right-sidebar">
             <?php include "rightside.php"; ?>
            </aside>
          </div>
           <div class="span5">
                    <?php if($tcount > $res_per_page){ ?>
                      <div style="height: 30px;width:auto;margin-top:10px;margin-left:200px;">
                        <?php
                        if(!($pageno=="1"))
                        {
                        include("pagination.php");
                        echo paginate_three($reload, $page, $tpages, $adjacents);
                        }
                      ?>  
                      </div>
                      <?php } ?>
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
</body>

</html>
