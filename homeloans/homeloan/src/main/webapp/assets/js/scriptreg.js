/**
 * 
 */

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
	

	var regex = /^[a-zA-Z ]$/;
	var pwdregex = /^[a-zA-Z0-9$#@]{8,}$/;
	 var emailformat = /^([a-z 0-9\.-]+)@([a-z 0-9-]+).([a-z]{2,8})$/;
	
	var flag=true;
	id1.innerHTML='';
	id1a.innerHTML='';
	id1b.innerHTML='';
	id2.innerHTML='';
	
	if(name==''){
	    id1.innerHTML='Please fill out this field';
	    id1.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag=false;
	  }
	/* else
	if(regex.test(name) == false){
	     id1.innerHTML="Name must be in alphabets only";
	     flag=false;
	  } */
	
	if(name2==''){
	    id1b.innerHTML='Please fill out this field';
	    id1b.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag=false;
	  }
	/* else
	if(regex.test(name2) == false){
	     id1b.innerHTML="Name must be in alphabets only";
	     flag=false;
	  } */
	
	if(pwd==''){
	    id2.innerHTML='! Please fill password';
	    id2.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	else
	if( pwdregex.test(pwd) == false){
	     id2.innerHTML="! Password is invalid";
	     id2.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	     flag= false;
	  }  
	if(pwd1==''){
	    id4.innerHTML='! Please fill out this field';
	    id4.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	
	if (pwd != pwd1) { 
		 id4.innerHTML='! Password did not match';
		 id4.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
        return false; 
    } 

  
	
	if(pass==''){
	    id3.innerHTML='! Please fill out this field';
	    id3.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	    flag= false;
	  }
	else
	if(emailformat.test(pass) == false){
	     id3.innerHTML="! Please enter valid email ID";
	     id3.innerHTML.style.cssText = "color: red; font-size: 13px; font-family: arial";
	     flag= false;
	  }  

	return flag;
	}