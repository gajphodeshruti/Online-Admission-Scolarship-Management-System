// $("#btn").hide();
	function validName() {
	var UserName=document.getElementById("fname").value;
	if(UserName=="") {
		           $("#fname").css("border","1px solid red");
				document.getElementById("fnameMsg").innerHTML="Enter Your Name";
				document.getElementById("fnameMsg").setAttribute("style","color:red;font-size:13px;");
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
function clearvalidName() {
	document.getElementById("validname").innerHTML="";
}



$(document).ready(function(){
	
	$("#fname").keyup(function(){
     validateFname();
});
function validateFname(){
 	var fname=$("#fname").val();
 	if (fname.length == '')
	 {
	 	$("#fname").css("border","1px solid red");
     	//$("#fnameMsg").html("<p class='text-danger h5'>Please Fill The First Name</p>");
     	document.getElementById("fnameMsg").innerHTML="Enter Your Name";
		document.getElementById("fnameMsg").setAttribute("style","color:red;font-size:14px;");
      return false;
	}
	else
	{

     	$("#fname").css("border","1px solid green");
     	$("#fnameMsg").html("<p class='text-success'></p>");
		return true;
	}
 }

 

  $("#address").keyup(function(){
     validateAddr();
 });
function validateAddr(){
 	var address=$("#address").val();
 	if (address.length == '')
	 {
	 	$("#address").css("border","1px solid red");
     	//$("#addrMsg").html("<p class='text-danger h5'>Please Fill The Address</p>");
     	document.getElementById("addrMsg").innerHTML="Enter Your Adrress";
		document.getElementById("addrMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#address").css("border","1px solid green");
     	$("#addrMsg").html("<p class='text-success h5'></p>");
		return true;
	}
 }


 
 $("#contactno").keyup(function(){
     validateContact();
     
});
function validateContact(){
	var contactno=$("#contactno").val();
	var regCon=/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
	if (contactno.length == '')
	 {
	 	$("#contactno").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Please fill the Mobile Number</p>");
     	document.getElementById("conMsg").innerHTML="Enter Your Contact Number";
		document.getElementById("conMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}

	
	else if(regCon.test(contactno))
	{
		//$("#contactno").css("border","2px solid green");
     	//$("#conMsg").html("<p class='text-success'>Valid contact number</p>");
   checkcontactAvailability();
     	 return true;	
	}
	else
	{
		$("#contactno").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Invalid contact no</p>");
     	document.getElementById("conMsg").innerHTML="Enter  Valid contact";
		document.getElementById("conMsg").setAttribute("style","color:red;font-size:13px;");
		return false;
	}
}

function checkcontactAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'contactno='+$("#contactno").val(),
type: "POST",
success:function(data){
$("#conMsg").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}

 $("#pass").keyup(function(){

		 validatePass();
	});

function validatePass(){
	var password=$("#pass").val();
	var regpass=/(?=.*\d)(?=.*[A-Z]).{6,}/
	if (password.length == '')
	 {
	 	$("#pass").css("border","1px solid red");
     	//$("#passMsg").html("<p class='text-danger h5'>Please fill the Password</p>");
     	document.getElementById("passMsg").innerHTML="Enter Password";
		document.getElementById("passMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}

	
	else if(regpass.test(password))
	
	{
		$("#pass").css("border","1px solid green");
     	$("#passMsg").html("<p class='text-success'></p>");
     	return true;
	}
	else
	{
		$("#pass").css("border","1px solid red");

    // at least six characters
    document.getElementById("passMsg").innerHTML="Enter one number,one uppercase letter and 6 characters";
		document.getElementById("passMsg").setAttribute("style","color:red;font-size:13px;");
     //	$("#passMsg").html("<p class='text-danger h5'>Please Enter one number,one uppercase letter and 6 characters </p>");
		return false;
	}
}

$("#cpwd").keyup(function(){
     conPassword();
});

function conPassword()
{
	var cpwd=$("#cpwd").val();
	var password=$("#pass").val();
	if (cpwd.length == '')
	 {
	 	$("#cpwd").css("border","1px solid red");
     //	$("#cpwdMsg").html("<p class='text-danger'>Please fill the confrim Password</p>");
       document.getElementById("cpwdMsg").innerHTML="Enter Confrim Password";
		document.getElementById("cpwdMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else if (password == cpwd )
	 {
	 	$("#cpwd").css("border","1px solid green");
     	$("#cpwdMsg").html("<p class='text-success h5'>Match password</p>");
     	return true;
	 	
	}
	else
	{
		$("#cpwd").css("border","1px solid red");
		document.getElementById("cpwdMsg").innerHTML="Password Not match";
		document.getElementById("cpwdMsg").setAttribute("style","color:red;font-size:13px;");
     	//$("#cpwdMsg").html("<p class='text-danger h5'>Not match</p>");
      return false;
	}
}

$("#submit").click(function(){
 validateFname();
  validateLname();
   validateAddr();
 validateEmail();
  validateContact();
  validateUsername();
 validatePass();
 conPassword();

 if ((validateFname() == true)  && (validateAddr() == true) && ( validateContact() == true) && (validatePass() == true) && (conPassword() == true) )
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