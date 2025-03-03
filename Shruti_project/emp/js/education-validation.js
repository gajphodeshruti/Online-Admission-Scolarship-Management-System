// $("#btn").hide();
	function validExamName() {
	var UserName=document.getElementById("examname").value;
	if(UserName=="") {
		           $("#examname").css("border","1px solid red");
				document.getElementById("examnameMsg").innerHTML="Enter Your Exam/Standerd";
				document.getElementById("examnameMsg").setAttribute("style","color:red;font-size:13px;");
				return false;
	}
	/*if(UserName.length!=10)
				{
					document.getElementById("validname").innerHTML="Enter 10 Digit Number";
					document.getElementById("validname").setAttribute("style","color:red;font-size:12px;");
					return false;
				}*/
	else {
		return true;
	}
}
function clearvalidExamName() {
	document.getElementById("validExamName").innerHTML="";
}



$(document).ready(function(){
	
	$("#examname").keyup(function(){
     validateExamname();
});
function validateExamname(){
 	var examname=$("#examname").val();
 	if (examname.length == '')
	 {
	 	$("#examname").css("border","1px solid red");
     	//$("#fnameMsg").html("<p class='text-danger h5'>Please Fill The First Name</p>");
     	document.getElementById("examnameMsg").innerHTML="Enter Your Exam/Standerd";
		document.getElementById("examnameMsg").setAttribute("style","color:red;font-size:14px;");
      return false;
	}
	else
	{

     	$("#examname").css("border","1px solid green");
     	$("#examnameMsg").html("<p class='text-success'></p>");
		return true;
	}
 }

 $("#year").keyup(function(){
     validateYear();
 });

 function validateYear(){
 	var year=$("#year").val();
 	if (year.length == '')
	 {
	 	$("#year").css("border","1px solid red");
     	//$("#lnameMsg").html("<p class='text-danger h5'>Please Fill The Last Name</p>");
     	document.getElementById("yearMsg").innerHTML="Enter Your Exam Year";
		document.getElementById("yearMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#year").css("border","1px solid green");
     	//$("#lnameMsg").html("<p class='text-success h5'></p>");
     	document.getElementById("yearMsg").innerHTML="";
		document.getElementById("yearMsg").setAttribute("style","color:green;font-size:13px;");
		return true;
	}
 }

  $("#board").keyup(function(){
     validateBoard();
 });
function validateBoard(){
 	var board=$("#board").val();
 	if (board.length == '')
	 {
	 	$("#board").css("border","1px solid red");
     	//$("#addrMsg").html("<p class='text-danger h5'>Please Fill The Address</p>");
     	document.getElementById("boardMsg").innerHTML="Enter Your Board/University";
		document.getElementById("boardMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#board").css("border","1px solid green");
     	$("#boardMsg").html("<p class='text-success h5'></p>");
		return true;
	}
 }


 $("#schoolname").keyup(function(){
     validateSchoolName();
 });
function validateSchoolName(){
 	var schoolname=$("#schoolname").val();
 	if (schoolname.length == '')
	 {
	 	$("#schoolname").css("border","1px solid red");
     	//$("#addrMsg").html("<p class='text-danger h5'>Please Fill The Address</p>");
     	document.getElementById("schoolMsg").innerHTML="Enter Your School/College";
		document.getElementById("schoolMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#schoolname").css("border","1px solid green");
     	$("#schoolMsg").html("<p class='text-success h5'></p>");
		return true;
	}
 }

$("#percentage").keyup(function(){
     validatePercentage();
 });
 function validatePercentage(){
 	var percentage=$("#percentage").val();
 	if (percentage.length == '')
	 {
	 	$("#percentage").css("border","1px solid red");
     	//$("#userMsg").html("<p class='text-danger h5'>Please fill the user name</p>");
     	document.getElementById("percentageMsg").innerHTML="Enter Your Percentage";
		document.getElementById("percentageMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#percentage").css("border","1px solid green");
     	$("#percentageMsg").html("<p class='text-success'></p>");
		return true;
	}
 }


 

$("#submit").click(function(){
 validateExamname();
  validateYear();
   validateBoard();
 validateSchoolName();
  validatePercentage();
  
 if ((validateExamname() == true) &&  (validateYear() == true) && (validateBoard() == true) && (validateSchoolName() == true) && ( validatePercentage() == true))
 {
 	//alert("hello");
 	return true;
 }
 else
 {
 	//alert("haaaaaa");
 	return false;
 }
});

});