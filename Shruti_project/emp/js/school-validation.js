// $("#btn").hide();
	function validschoolname() {
	var UserName=document.getElementById("schoolname").value;
	if(UserName=="") {
		           $("#schoolname").css("border","1px solid red");
				document.getElementById("schoolnameMsg").innerHTML="Enter School name";
				document.getElementById("schoolnameMsg").setAttribute("style","color:red;font-size:13px;");
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
function clearvalidschoolname() {
	document.getElementById("validschoolname").innerHTML="";
}



$(document).ready(function(){
	
	$("#schoolname").keyup(function(){
     validateschoolname();
});
function validateschoolname(){
 	var schoolname=$("#schoolname").val();
 	if (schoolname.length == '')
	 {
	 	$("#schoolname").css("border","1px solid red");
     	//$("#fnameMsg").html("<p class='text-danger h5'>Please Fill The First Name</p>");
     	document.getElementById("schoolnameMsg").innerHTML="Enter School Name";
		document.getElementById("schoolnameMsg").setAttribute("style","color:red;font-size:14px;");
      return false;
	}
	else
	{

     	$("#schoolname").css("border","1px solid green");
     	$("#schoolnameMsg").html("<p class='text-success'></p>");
		return true;
	}
 }

 $("#contact").keyup(function(){
     validatecontact();
 });

 function validatecontact(){
 	var contact=$("#contact").val();
	var regCon=/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
if (contact.length == '')
	 {
	 	$("#contact").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Please fill the Mobile Number</p>");
     	document.getElementById("contactMsg").innerHTML="Enter Contact Number";
		document.getElementById("contactMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}

	
	else if(regCon.test(contact))
	{
		$("#contact").css("border","1px solid green");
     	$("#contactMsg").html("<p class='text-success'></p>");
  // checkcontactAvailability();
     	 return true;	
	}
	else
	{
		$("#contact").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Invalid contact no</p>");
     	document.getElementById("contactMsg").innerHTML="Enter  Valid contact";
		document.getElementById("contactMsg").setAttribute("style","color:red;font-size:13px;");
		return false;
	}
}
  $("#address").keyup(function(){
     validateaddress();
 });
function validateaddress()
{
 	var address=$("#address").val();
 	if (address.length == '')
	 {
	 	$("#address").css("border","1px solid red");
     	//$("#addrMsg").html("<p class='text-danger h5'>Please Fill The Address</p>");
     	document.getElementById("addressMsg").innerHTML="Enter Address Of School";
		document.getElementById("addressMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#address").css("border","1px solid green");
     	$("#addressMsg").html("<p class='text-success h5'></p>");
		return true;
	}
 }


 $("#principal").keyup(function(){
     validateprincipal();
 });
function validateprincipal(){
 	var principal=$("#principal").val();
 	if (principal.length == '')
	 {
	 	$("#principal").css("border","1px solid red");
     	//$("#addrMsg").html("<p class='text-danger h5'>Please Fill The Address</p>");
     	document.getElementById("principalMsg").innerHTML="Enter A Principal Name";
		document.getElementById("principalMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#principal").css("border","1px solid green");
     	$("#principalMsg").html("<p class='text-success h5'></p>");
		return true;
	}
 }

$("#count").keyup(function(){
     validatecount();
 });
 function validatecount(){
 	var count=$("#count").val();
 	if (count.length == '')
	 {
	 	$("#count").css("border","1px solid red");
     	//$("#userMsg").html("<p class='text-danger h5'>Please fill the user name</p>");
     	document.getElementById("countMsg").innerHTML="Enter count";
		document.getElementById("countMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#count").css("border","1px solid green");
     	$("#countMsg").html("<p class='text-success'></p>");
		return true;
	}
 }


 

$("#submit").click(function(){
 validateschoolname();
  validatecontact();
   validateaddress();
 validateprincipal();
  validatecount();
  
 if ((validateschoolname() == true) &&  (validatecontact() == true) && (validateaddress() == true) && (validateprincipal() == true) && ( validatecount() == true))
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