<?php
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('allow_call_time_pass_reference', 1);
ini_set('allow_url_include', 1);
error_reporting(E_ALL);
$current_directory = dirname(__FILE__);
date_default_timezone_set("Asia/Kolkata");

//define('APPPATH',$_SERVER['DOCUMENT_ROOT']."//");
//define('EXT',".php");
//set_include_path(APPPATH."library");

/*
define('SYSTEM_EMAIL',"successyogi99@gmail.com");
define('SYSTEM_PASS',"successyogi99");
define('SYSTEM_HOST',"smtp.gmail.com");
define('SYSTEM_PORT',587);
define('SYSTEM_SSL','tls');

define('SYSTEM_EMAIL',"successyogi@india.com");
define('SYSTEM_PASS',"successyogi");
define('SYSTEM_HOST',"smtp.india.com");
define('SYSTEM_PORT',25);
define('SYSTEM_SSL','ssl');
*/
if($_SERVER['HTTP_HOST'] == 'localhost')
{
	$dbHost = 'localhost';
	$dbName = 'dtse';
	$dbUser = 'root';
	$dbPass = '';
}else{
	$dbHost = 'localhost';
	$dbName = 'shivskil_neem3';
	$dbUser = 'shivskil_msalunkhe';
	$dbPass = '90asnd8rn&^&EWRgydsf';
}

$tblUser='tbl_user';

?>