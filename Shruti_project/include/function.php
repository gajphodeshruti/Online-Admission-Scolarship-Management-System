<?php

 @mysql_connect($dbHost,$dbUser,$dbPass) or die("Error in Connection ");
 mysql_select_db("$dbName") or die("Error in select db");
class DBfunction{
 
	/*insert function*/
	function cgi($tbl,$field,$values,$prn) 
	{
		$sql=("insert into $tbl($field)values($values)");
		if($prn=='1')
		{
			echo $sql;
		}
		$result=mysql_query($sql);
		return 1;
	}
	 
	/*Select  function*/ 
	function cgs($tbl,$field,$cnd,$prn) 
	{
		if($cnd=="")
			{
				$sql=("select $field from $tbl");
					if($prn=='1')
						{
							echo $sql;
						}
			}
		else
			{
				$sql=("select $field from $tbl where $cnd");
					if($prn=='1')
						{
							echo $sql;
						}
			}
			//echo $sql;echo "<br>";
		$result=mysql_query($sql);
		
		return $result;
	       
	}
	   
	function cgu($tbl,$field,$values,$cnd,$prn) 
	{
		
		$f=@split(',',$field);
		
		$v=@split(",",$values);
		
		
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
			}
		
		$result=mysql_query($sql);
		return $result;
		}

	function cdel($tbl,$cnd,$prn) 
	{
		$sql="delete from $tbl where $cnd";
			if($prn=='1')
				{
					echo $sql;
				}
		$result=mysql_query($sql);
		
		return $result;
	          
	}
	function custom_query($que)
	{
		$result=mysql_query($que);
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
				}
			
			}
			
		$result=mysql_query($sql);
		return $result;
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
				$headers = "MIME-Version: 1.0" . "\r\n";
				$headers .= "Content-type:text/html;charset=iso-8859-1" . "\r\n";
				$headers .= 'From: ' . $from . "\r\n";
				$subject .= 'Subject: ' . $subject . "\r\n";
				
				$result = mail($to,$subject,$message,$headers);
				//echo $result;exit;
				if ($result) return 1;
				else return 0;
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
}
 $dbobj = new DBfunction();
 
?>