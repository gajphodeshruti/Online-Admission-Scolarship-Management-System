<?php
//include 'common.php';
//global $GLOBALS['conn'];
class DBfunction{
 	/*insert function*/
	public function connect()
		{
			include 'common.php';
			$GLOBALS['conn']=new mysqli($dbHost,$dbUser,$dbPass,$dbName) or die("Error in Connection ");
			
			$GLOBALS['conn']->query("SET character_set_results=utf8");  
			mb_language('uni');  
			mb_internal_encoding('UTF-8');  
			$GLOBALS['conn']->query("SET NAMES utf8");
		}
	function cgi($tbl,$field,$values,$prn) 
	{
		$sql=("insert into $tbl($field)values($values)");
		if($prn=='1')
		{
			echo $sql;
			exit;
		}
		$GLOBALS['conn']->query("SET character_set_client=utf8");  
		$GLOBALS['conn']->query("SET character_set_connection=utf8");  
		$result=$GLOBALS['conn']->query($sql);
		return 1;
	}
	 
	/*Select  function*/ 
	function cgs($tbl,$field,$cnd,$prn) 
	{
		//include 'common.php';
		//$conn=new mysqli($dbHost,$dbUser,$dbPass,$dbName) or die("Error in Connection ");
		if($cnd=="")
			{
				$sql=("select $field from $tbl");
					if($prn=='1')
						{
							echo $sql;
							exit;
						}
			}
		else
			{
				$sql=("select $field from $tbl where $cnd");
					if($prn=='1')
						{
							echo $sql;
							exit;
						}
			}
			//echo $sql;echo "<br>";
			
		$result=$GLOBALS['conn']->query($sql);
		
		return $result;
	       
	}

	function get_value($tbl,$field,$cnd,$prn) 
	{
		//include 'common.php';
		//$conn=new mysqli($dbHost,$dbUser,$dbPass,$dbName) or die("Error in Connection ");
		if($cnd=="")
			{
				$sql=("select $field from $tbl");
					if($prn=='1')
						{
							echo $sql;
							exit;
						}
			}
		else
			{
				$sql=("select $field from $tbl where $cnd");
					if($prn=='1')
						{
							echo $sql;
							exit;
						}
			}
			//echo $sql;echo "<br>";
			
		$result=$GLOBALS['conn']->query($sql);
		$row=mysqli_fetch_assoc($result);
		return $row;
	       
	}
	   
	function cgu($tbl,$field,$values,$cnd,$prn) 
	{
		
		$f = explode(',', $field);
		$f = preg_split('/,/', $field);

		
		$v = explode(",", $values);
		$v = preg_split('/,/', $values);

		
		$sql="update $tbl set ";
		
		$len=count($f);
		
		for($i=0;$i<$len-1;$i++)
		 {
		  $sql=$sql."$f[$i]=$v[$i],";
		 }
		$len--;
		$sql=$sql."$f[$len]=$v[$len]";
		
		$sql=$sql." where $cnd";
				
			if($prn=='1')
			{
				echo $sql;
				exit;
			}
		
		$result=$GLOBALS['conn']->query($sql);
		return $result;
		}

	function cdel($tbl,$cnd,$prn) 
	{
		
		$sql="delete from $tbl where $cnd";
			if($prn=='1')
				{
					echo $sql;
					exit;
				}
		$result=$GLOBALS['conn']->query($sql);
		
		return $result;
	          
	}
	function custom_query($que)
	{
		$result=$GLOBALS['conn']->query($que);
	}

	function gj($tbl,$field,$cnd,$ob,$srt,$prn) 
	{
	
		if($cnd=="")
			{
				if($ob=="" && $srt=="")
				{
					$sql=("select $field from $tbl where 1");
				}
				else
				{
				$sql=("select $field from $tbl where 1 order by $ob $srt");
				}
					if($prn=='1')
						{
							echo $sql;
							exit;
						}
			}
				
			
		else
			{
				if($ob=="" && $srt=="")
				{
					$sql=("select $field from $tbl where $cnd");
				}
				else
				{
				$sql=("select $field from $tbl where $cnd order by $ob $srt");
				}
				if($prn=='1')
				{
					echo $sql;
					exit;
				}
			
			}
			
		$result=$GLOBALS['conn']->query($sql);
		return $result;
	}
	
function close()
	{
		mysqli_close($GLOBALS['conn']);
	}

function check_exist($tbl_name,$field,$value)
	{
	
	echo $tbl_name;echo "<br>";
	print_r($field);echo "<br>";
	print_r($value);
	$checkUserID = mysql_query("SELECT * from $tbl_name");
	echo $checkUserID;exit;
	}
	function Test($contact)
	{
		echo "hi";
		exit;
	}

	function sendmail($to, $from , $subject, $message )
			{
				/*$headers = "MIME-Version: 1.0" . "\r\n";
				$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
				$headers .= 'From: ' . $from . "\r\n";
				$subject .= 'Subject: ' . $subject . "\r\n";
				
				$result = mail($to,$subject,$message,$headers);
				
				if ($result) return 1;
				else return 0;*/
				return 1;
			}
    function str_limit($srt,$limit)
  {
	$temp_str="";
	$temp_str=substr($srt,0,$limit);
	$temp_pos= strrpos ($temp_str , " ");
	$temp_str =substr( $temp_str , 0 ,$temp_pos );
	return $temp_str;
												
  }
  function check_exist_number($tbl_name,$field,$value)
	{
	echo $tbl_name;echo "<br>";
	print_r($field);echo "<br>";
	print_r($value);
	$checkNumber1 = mysql_query("SELECT * from $tbl_name");
	$checkNumber=mysql_fetch_assoc($checkNumber1);
	if($checkNumber>0){
		return 0;
	}
	} 

	function row_count($result)
	 {
		return (mysqli_num_rows($result));
	 }
}
 $dbobj = new DBfunction();
 $dbobj->connect();
 
?>