<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
<script>
function validRegister(){
	var name = document.getElementById('name').value;
	var name1 = document.getElementById('name1').value;
	var name2 = document.getElementById('name2').value;
	
	var pwd = document.getElementById('pwd').value;
	var pwd1 = document.getElementById('pwd1').value;
	 var pass= document.getElementById('eml').value;
	
	
	var id1 = document.getElementById('id1');
	var id1a = document.getElementById('id1a');
	var id1b = document.getElementById('id1b');
	
	var id2 = document.getElementById('id2');
	var id3 = document.getElementById('id3');
	var id4 = document.getElementById('id4');
	

	var regex = /^[a-zA-Z]$/;
	var pwdregex = /^[a-zA-Z0-9$#@]{8,}$/;
	 var emailformat = /^([a-z0-9\.-]+)@([a-z0-9-]+).([a-z]{2,8})$/;
	
	var flag=true;
	id1.innerHTML='';
	id1a.innerHTML='';
	id1b.innerHTML='';
	id2.innerHTML='';
	
	if(name==''){
	    id1.innerHTML='! Please fill out this field';
	    id1.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag=false;
	  }
	
	/*  else
	if(regex.test(name) == false){
	     id1.innerHTML="! Name must be in alphabets only";
	     flag=false;
	  }  */
	
	if(name2==''){
	    id1b.innerHTML='! Please fill out this field';
	    id1b.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag=false;
	  }
	  
	/*  else
	     if(regex.test(name2) == false){
	     id1b.innerHTML="Name must be in alphabets only";
	     flag=false;
	  }  */
	
	if(pwd==''){
	    id2.innerHTML='! Please fill password';
	    id2.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	  
	else
	if( pwdregex.test(pwd) == false){
	     id2.innerHTML="! Password is invalid";
	     id2.style.cssText = "color: red; font-size: 13px; font-family: arial";
	     flag= false;
	  }  
	  
	if(pwd1==''){
	    id4.innerHTML='! Please fill out this field';
	    id4.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	
	if (pwd != pwd1) { 
		 id4.innerHTML='! Password did not match';
		 id4.style.cssText = "color: red; font-size: 13px; font-family: arial";
        flag=false; 
    } 

  
	if(pass==''){
	    id3.innerHTML='! Please fill out this field';
	    id3.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	
	else
	if(emailformat.test(pass) == false){
	     id3.innerHTML="! Please enter valid email ID";
	     id3.style.cssText = "color: red; font-size: 13px; font-family: arial";
	     flag= false;
	  }  

	return flag;
	}
	



</script>
<style>


.error{
    color:#FF0000;
}


h2, h1 {
               /*  width:1px;
                position:absolute;
                top:10%;
              	left:28%;
                transform:transalate(-50%,50%); */
                color:black;
        } 
               
             /*   .error{
              
               padding:0px;
              background:none;
              color:red;
               font-size: 18px;
               } */
               
               #deco h1{
                    float:left;
                    text-align:center;
                    font-size: 30px;
                    border-bottom: 6px solid #4caf50;
                    margin-bottom:10px;
                    padding:0px; 
                    color:white;
                   
                }
                    
                    
                    
                    .a{
                    width:100%;
                    background:none;
                    border:4px solid #4caf50;
                   color:black;
                   
                    font-size: 20px;
                
                    padding:5px;
                    margin:12px;
                    }
                    
                    #deco tr td a
            {
          
                text-align: center;
                text-decoration: none;
                color: black; 
                    display: block;
                    
            }
	.nan {
  background-color: #1abc9c;
  padding: 2px;
  text-align: center;
  font-family:Cambria, Cochin, Georgia, Times, Times New Roman, serif
}
.a{
  margin-right:20px; 

}

</style>


</head>
<body>


  <div class="a"><IMG STYLE="float:right;" SRC="assets/img/signup.png" width="80px" height="80px"></div>

        <div class="nan">
        
            <h1 ><u><center>LTI Home Loans</h1></center></u>
            <p><i>Lending for Real Life</i></p>
           
      	 </div>

<!-- <div id="deco"> -->
<center>
<h1>REGISTRATION</h1>
<form action="register.do" modelAttribute="user" method="post" onsubmit="return validRegister()">
<table border=0 cellpadding=2>

<tr>
<td><h2>First Name</h2></td>
<td><input type='text' id='name' name='firstname'><br>
<div id='id1' class='error'></div></td>
</tr>

<tr>
<td><h2>Middle Name</h2> </td>
<td><input type='text' id='name1' name='middlename'>
<div id='id1a' class='error'></div></td>
</tr>

<tr>
<td><h2>Last Name</h2> </td>
<td><input type='text' id='name2' name='lastname'>
<div id='id1b' class='error'></div></td>
</tr>

<br>


<tr>
<td><h2>Email ID</h2></td>
<td><input type='text' id='eml' name='email'>
<div id='id3' class='error'></div></td>
</tr>
<br> 

<tr>
<td><h2>Password<h2></h2></td>
<td><input type='password' id='pwd' name='password'>
<div id='id2' class='error'></div></td>
</tr>

<tr>
<td><h2>Confirm Password</h2></td>
<td><input type='password' id='pwd1' name='pwd'>
<div id='id4' class='error'></div></td>
</tr>

  
 
 <tr>                 
<td><h2><input type='submit' value='Submit' class="a"></h2></td>
</tr>
</table>

<!-- </div> -->
</form>
</center>
</body>
</html>