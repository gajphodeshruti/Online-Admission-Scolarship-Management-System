// $("#btn").hide();
	function validName() {
	var UserName=document.getElementById("reff_name").value;
	if(UserName=="") {
		           $("#reff_name").css("border","1px solid red");
				document.getElementById("rnameMsg").innerHTML="Enter A Name";
				document.getElementById("rnameMsg").setAttribute("style","color:red;font-size:13px;");
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
	document.getElementById("validName").innerHTML="";
}



$(document).ready(function(){
	
	$("#reff_name").keyup(function(){
     validateRname();
});
function validateRname(){
 	var reff_name=$("#reff_name").val();
 	if (reff_name.length == '')
	 {
	 	$("#reff_name").css("border","1px solid red");
     	//$("#fnameMsg").html("<p class='text-danger h5'>Please Fill The First Name</p>");
     	document.getElementById("rnameMsg").innerHTML="Enter Name";
		document.getElementById("rnameMsg").setAttribute("style","color:red;font-size:14px;");
      return false;
	}
	else
	{

     	$("#reff_name").css("border","1px solid green");
     	$("#rnameMsg").html("<p class='text-success'></p>");
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
     	document.getElementById("contactnoMsg").innerHTML="Enter Your Contact Number";
		document.getElementById("contactnoMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}

	
	else if(regCon.test(contactno))
	{
		$("#contactno").css("border","1px solid green");
		document.getElementById("contactnoMsg").innerHTML="";
     	document.getElementById("contactnoMsg").setAttribute("style","color:green;font-size:13px;");
   //checkcontactAvailability();
     	 return true;	
	}
	else
	{
		$("#contactno").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Invalid contact no</p>");
     	document.getElementById("contactnoMsg").innerHTML="Enter  Valid contact";
		document.getElementById("contactnoMsg").setAttribute("style","color:red;font-size:13px;");
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
     	document.getElementById("addressMsg").innerHTML="Enter Your address";
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

 $("#occupation").keyup(function(){
     validateOccupation();
 });

 function validateOccupation(){
 	var occupation=$("#occupation").val();
 	if (occupation.length == '')
	 {
	 	$("#occupation").css("border","1px solid red");
     	//$("#lnameMsg").html("<p class='text-danger h5'>Please Fill The Last Name</p>");
     	document.getElementById("occupationMsg").innerHTML="Enter Parents Occupation";
		document.getElementById("occupationMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#occupation").css("border","1px solid green");
     	//$("#lnameMsg").html("<p class='text-success h5'></p>");
     	document.getElementById("occupationMsg").innerHTML="";
		document.getElementById("occupationMsg").setAttribute("style","color:green;font-size:13px;");
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