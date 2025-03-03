<html>
<?php
include "../include/common.php";
include "../include/functioni.php"; 
include "../include/DbConnect.php"; 
//mysql_connect("localhost","root",""); 
//mysql_select_db('chanakya');


if(! empty($_POST['stateid']))
{
$countryid=$_POST['stateid'];
$res=$dbobj->cgs("tbl_district","*","stateid='".$_POST["stateid"]."'","");
                     // while($rowx=mysqli_fetch_assoc($res))
//$query ="SELECT * FROM tbl_district where stateid='".$_POST["stateid"]."' ";
//$results = mysql_query($query);
?>
<option value disabled selected>Select District</option>
<?php
//while($row = mysql_fetch_assoc($results))
 while($row=mysqli_fetch_assoc($res))
{
?>
<option value="<?php echo $row["districtid"]; ?>">  <?php echo $row["districtname"]; ?></option>
<?php
}
}
?>
</html>
