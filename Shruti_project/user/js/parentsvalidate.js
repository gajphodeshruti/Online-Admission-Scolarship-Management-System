// $("#btn").hide();
	function validPName() {
	var UserName=document.getElementById("pname").value;
	if(UserName=="") {
		           $("#pname").css("border","1px solid red");
				document.getElementById("pnameMsg").innerHTML="Enter Your Parents Name";
				document.getElementById("pnameMsg").setAttribute("style","color:red;font-size:13px;");
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
	document.getElementById("validPName").innerHTML="";
}



$(document).ready(function(){
	
	$("#pname").keyup(function(){
     validatePname();
});
function validatePname(){
 	var examname=$("#pname").val();
 	if (examname.length == '')
	 {
	 	$("#pname").css("border","1px solid red");
     	//$("#fnameMsg").html("<p class='text-danger h5'>Please Fill The First Name</p>");
     	document.getElementById("pnameMsg").innerHTML="Enter Your Parents Name";
		document.getElementById("pnameMsg").setAttribute("style","color:red;font-size:14px;");
      return false;
	}
	else
	{

     	$("#pname").css("border","1px solid green");
     	$("#pnameMsg").html("<p class='text-success'></p>");
		return true;
	}
 }

 $("#pcontactno").keyup(function(){
     validateContact();
     
});
function validateContact(){
	var pcontactno=$("#pcontactno").val();
	var regCon=/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/
	if (pcontactno.length == '')
	 {
	 	$("#pcontactno").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Please fill the Mobile Number</p>");
     	document.getElementById("pcontactnoMsg").innerHTML="Enter Your Contact Number";
		document.getElementById("pcontactnoMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}

	
	else if(regCon.test(pcontactno))
	{
		$("#pcontactno").css("border","1px solid green");
		document.getElementById("pcontactnoMsg").innerHTML="";
     	document.getElementById("pcontactnoMsg").setAttribute("style","color:green;font-size:13px;");
   //checkcontactAvailability();
     	 return true;	
	}
	else
	{
		$("#pcontactno").css("border","1px solid red");
     	//$("#conMsg").html("<p class='text-danger h5'>Invalid contact no</p>");
     	document.getElementById("pcontactnoMsg").innerHTML="Enter  Valid contact";
		document.getElementById("pcontactnoMsg").setAttribute("style","color:red;font-size:13px;");
		return false;
	}
}

 $("#poccupation").keyup(function(){
     validatePoccupation();
 });

 function validatePoccupation(){
 	var poccupation=$("#poccupation").val();
 	if (poccupation.length == '')
	 {
	 	$("#poccupation").css("border","1px solid red");
     	//$("#lnameMsg").html("<p class='text-danger h5'>Please Fill The Last Name</p>");
     	document.getElementById("poccupationMsg").innerHTML="Enter Parents Occupation";
		document.getElementById("poccupationMsg").setAttribute("style","color:red;font-size:13px;");
      return false;
	}
	else
	{

     	$("#poccupation").css("border","1px solid green");
     	//$("#lnameMsg").html("<p class='text-success h5'></p>");
     	document.getElementById("poccupationMsg").innerHTML="";
		document.getElementById("poccupationMsg").setAttribute("style","color:green;font-size:13px;");
		return true;
	}
 }

 
$("#submit").click(function(){
 validatePname();
  validateContact();
   validatePoccupation();
 
 if ((validatePname() == true) &&  (validateContact() == true) && (validatePoccupation() == true))
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