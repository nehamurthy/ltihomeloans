<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<script type="text/javascript">
 
     
     function validate(){
    		
    		var pwd = document.getElementById('pwd').value;
    	
    		 var email= document.getElementById('eml').value;
    		
    		 var id2 = document.getElementById('id2');//password
    			var id3 = document.getElementById('id3');//email
     
    			
    			 var emailformat = /^([a-z 0-9\.-]+)@([a-z 0-9-]+).([a-z]{2,8})$/;
    		
    			 var pwdregex = /^[a-zA-Z0-9$#@]{8,}$/;
    			 
    			 
    			 var flag=true;
    				id2.innerHTML='';
    				id3.innerHTML='';
    				
    				
    				if(pwd==''){
    				    id2.innerHTML='Please fill password';
    				    flag= false;
    				  }
    				else
    				if( pwdregex.test(pwd) == false){
    				     id2.innerHTML="Password is improper";
    				     flag= false;
    				  }  
    			 
    				if(email==''){
    				    id3.innerHTML='Please fill email';
    				    flag= false;
    				  }
    				else
    				if(emailformat.test(email) == false){
    				     id3.innerHTML="Email is improper";
    				     flag= false;
    				  }  
    				
    

    				return flag;
    				}
    			   
    			 
    			 
    			 
    			 
    			 
    			 
</script>
        


 <style>
     
        
        
        body
        {
        margin:0;
        padding:0;
     
        }
        
        #deco table{
          margin:0;
        padding:0px;
        
        }
            #deco tr td a
            {
          
                text-align: center;
                text-decoration: none;
                color: black; 
                    display: block;
                    
            }
                    
                    
                    #deco {
                    width:10px;
                    position:absolute;
                    top:50%;
                    left:40%;
                    transform:transalate(-50%,50%);
                    color:black;
                
                    
                    }
                    
                    #deco h1{
                    float:left;
                    text-align:left;
                    font-size: 40px;
                    border-bottom: 6px solid #4caf50;
                    margin-bottom:30px;
                    padding:0px; 
                    color:black;
                   
                    }
                    
                    .a{
                    width:100%;
                    background:none;
                    border:3px solid #4caf50;
                   color:black;
                   
                    font-size: 20px;
                
                    padding:5px;
                    margin:12px;
                    }
                    
                      
                    .b{
                    width:50%;
                    background:none;
                    border:2px solid #4caf50;
                   color:black;
                   
                    font-size: 18px;
                
                    padding:5px;
                    margin:12px;
                    }
                    
                    
               .error{
              
               padding:0px;
              background:none;
              color:red;
                    font-size: 18px;
               }
               
            .error_login {
            	
            	background-color: #1abc9c;
            	height: 35px;
            	text-color: white;
            	font-size: 20px;
            	font-weight: 500;
            	text-align: center;
            	margin-top: 10px;
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
	  <div class="a"><img style="float: right;" src="assets/img/signup.png" width="80px" height="80px"></div>

        <div class="nan">
            <h1 ><u><center>LTI Home Loans</h1></center></u>
            <p ><i>Lending for Real Life</p></i>
           
        </div><br><br><br><br>
        <form onsubmit="return validate()" method="post" action="login.do">
        	
            <div id="deco">
            <h1>Login</h1>
            <table>
                <tr>
                    <td><h2>Email Id:</h2></td>
                    <td><input type='text' id='eml' name='email'>
                       <div id='id3' class='error'></div></td>
                         </tr>
                
                <tr>
                    <td><h2>Password:</h2></td>
                    <td><input type='password' id='pwd' name='pwd'>
                          <div id='id2' class='error' ></div></td>
                            </tr>
                
                <tr>
                    <td><h2><input type="submit" value="Sign in" class="a" ></h2></td>
       
                    <td> <a href="a5.html"> <img src="assets/img/fp.jpg" height="80" width="80"> <center><font color="white">Forget Password</font></center> </a></td>
                </tr>
                
                 <tr>
                    <td><h3>Not Already Registered?</h3></td>
       
                    <td> <a href="register.do" class="b">  <center><font color="black">Sign Up</font></center> </a></td>
                </tr>
                          
              </table>
            </div>
            
        </form>
        
      
          <div class="error_login">${message}</div>
                
    
</body>
</html>