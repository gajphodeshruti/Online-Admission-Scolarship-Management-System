<?php
//these are the server details
//the username is root by default in case of xampp
//password is nothing by default
//and lastly we have the database named android. if your database name is different you have to change it 
$conn=null;
if($_SERVER['HTTP_HOST'] == 'localhost')
{
	$dbHost = 'localhost';
	$dbName = 'dtse';
	$dbUser = 'root';
	$dbPass = '';
	$conn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);
}else{
	$dbHost = 'localhost';
	$dbName = 'shivskil_neem3';
	$dbUser = 'shivskil_msalunkhe';
	$dbPass = '90asnd8rn&^&EWRgydsf';
	$conn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);
}

//creating a new connection object using mysqli 


//if there is some error connecting to the database
//with die we will stop the further execution by displaying a message causing the error 
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>