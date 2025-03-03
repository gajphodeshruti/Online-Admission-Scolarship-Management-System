<?php
include('security.php');
include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
$res=$dbobj->cgs("tbl_registration","*","id='" .$_GET['cert_id']."'","");
$row=mysqli_fetch_assoc($res);

?>	


<html>
	<head>
    	<title><?php  echo $_GET['cert_id']; ?></title>
        <link rel="stylesheet" type="text/css" media="all" href="reports.css" />
		<link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
        <link href="../../../assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<style>
			
        html,body{
		border:1px;
    height:279mm;
    width:216mm;
    margin: 0; 
	
}




    
			@media print {
			#printButton {
				display: none;
			}
		}
		</style>
    </head>
    
    <body style="border:green; border-width:10px; border-style:outset;">
    	<div >
        	<table width="100%" border="0px" style="padding-top:10px;padding-left:30px;">
				<tr>
					<td colspan="2" align="right">
					<button id="printButton" class="btn btn-info" onClick="window.print();"><i class="fa fa-print"></i> Print</button>
					</td>
				</tr>
				
				<tr>
					<td style="text-align:left; width:33%;"><img src="..\img\logo.png" style="width:150px;"/></td>
					<td style="text-align:center;width:33%;"><img src="..\img\logo_bnp.png" style="width:150px;"/></td>
					<td style="text-align:center;width:33%;"><img src="..\img\logo_vpasc.png" style="width:120px;"/></td>
				</tr>
            	<tr style="margin-top:-20px;">
                	<td style="text-align:center;" colspan="3">
					
						<img style="width:70%;" src="..\img\cert_word.png"/>
                    </td>
                    
                </tr>
				<tr>
					<td style="text-align:center;" colspan="3">
				
						<h3>This certificate is proudly presented to</h3>
                    </td>
				</tr>
				<tr>
					<td style="text-align:center;" colspan="3">
				
						<h2><?php echo $row['fname'];?></h2><?php echo $row['year'].$row['faculty'];?>
                    </td>
				</tr>
				<tr>
					<td style="text-align:center;" colspan="3">
				
						<h4>for participation in <strong>E-Waste Management & Awareness Campaign</strong> jointly organized by Vidya Pratishthan's Arts, Science & Commerce College, Alumni Association and Baramati Nagarparishad, Baramati on April 23, 2023.</h4>
                    </td>
				</tr>
				<tr style="margin-top:-20px;">
                	<td style="text-align:center;" colspan="3">
					
						<img style="margin-left:-30px;width:104%;"src="..\img\ewaste.jpg"/>
                    </td>
                    
                </tr>
				<tr style="margin-top:-20px;">
                	<td style="text-align:center;" colspan="3">
					
						This certificate is valid for one(1) credit.
                    </td>
                    
                </tr>
            </table>

</div><!--reportContainer Ends here.-->
</body>
</html>