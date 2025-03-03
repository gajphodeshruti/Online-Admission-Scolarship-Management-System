<html>
<?php
include "include/common.php";
include "include/functioni.php"; 
include "include/DbConnect.php";
if (! empty($_POST["districtid"]))
{
$res=$dbobj->cgs("tbl_city","*","districtid='".$_POST["districtid"]."'","");	
//$query ="SELECT * FROM tbl_city where districtid='".$_POST["districtid"]."' ";
//$results = mysql_query($query);
?>
<option value disabled selected>Select City</option>
<?php
//while($row = mysql_fetch_assoc($results))
while($row=mysqli_fetch_assoc($res))
{
?>
<option value="<?php echo $row["cityid"]; ?>">  <?php echo $row["cityname"]; ?></option>
<?php
}
}
?>
</html>
