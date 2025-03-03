<?php 

include ("../include/common.php");
include ("../include/functioni.php"); 
include ("../include/DbConnect.php");
//code check email
/*if(!empty($_POST["email"])) {

$result = mysqli_query($con,"SELECT count(*) FROM registration WHERE email='" . $_POST["email"] . "'");
$row = mysqli_fetch_row($result);
$email_count = $row[0];
if($email_count>0)
{ 
	 echo "<script>$('#email').css('border','1px solid red');</script>";
	echo "<span style='color:red'> Email Already Exit .</span>";
	echo "<script>$('#submit').prop('disabled',true);</script>";
}
else 
	{
	echo "<script>$('#email').css('border','1px solid green');</script>";
		echo "<span style='color:green'>Email Available</span>";
		
		echo "<script>$('#submit').prop('disabled',false);</script>";
	}
	
}
// End code check email


//Code check user name
/*if(!empty($_POST["username"])) {
	$result1 = mysqli_query($con,"SELECT count(*) FROM email_availabilty WHERE username='" . $_POST["username"] . "'");
	$row1 = mysqli_fetch_row($result1);
	$user_count = $row1[0];
	if($user_count>0)
	{
		 echo "<span style='color:red'> Username already exit .</span>";
		  echo "<script>$('#submit').prop('disabled',true);</script>";
	}
	else
	{
		 echo "<span style='color:green'> Username Available.</span>";
		 echo "<script>$('#submit').prop('disabled',false);</script>";
	}
}
// End code check username
*/

//Code contact number
if(!empty($_POST["contactno"])) {
		$result1 = mysqli_query($GLOBALS['conn'],"SELECT count(*) FROM tbl_registration WHERE contactno='" . $_POST["contactno"] . "'");
	$row1 = mysqli_fetch_row($result1);
	$user_count = $row1[0];
	if($user_count>0)
	{
		echo "<script>$('#contactno').css('border','1px solid red');</script>";
		echo "<span style='color:red'> contact already exit .</span>";
		//echo "<script>'return false'</script>";
	echo "<script>$('#submit').prop('disabled',true);</script>";
	} 
	else
	{
		 echo "<script>$('#contactno').css('border','1px solid green');</script>";
	    echo "<span style='color:green'>Contact Available</span>";
	 //echo "<script>'return true'</script>";
	    echo "<script>$('#submit').prop('disabled',false);</script>";
	}
}
// End contact no

?>
