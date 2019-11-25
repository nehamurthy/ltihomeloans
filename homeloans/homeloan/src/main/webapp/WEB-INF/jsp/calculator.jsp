<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Apply for a Home Loan</title>

<link rel="stylesheet" href="assets/css/main.css">
<script>
    function myFunction(){
        flag=true;
        var id1=document.getElementById("id1") ;
        var id2=document.getElementById("id2") ;
        id1.innerHTML="";
        id2.innerHTML="";
        var num=document.getElementById("income").value; 
        var num1=document.getElementById("roi").value; 
        if (isNaN(num)){  
          id1.innerHTML="Invalid input";  
          flag=false;
        }
        if (isNaN(num1)){  
          id2.innerHTML="Invalid input";  
          flag=false;
        }
        if(flag) {
           
            eligibility_calculate();
        }
        return flag;  
           
        }  

        function myFunction1(){
        flag=true;
        var id3=document.getElementById("id3") ;
        var id4=document.getElementById("id4") ;
        var id5=document.getElementById("id5") ;
        id3.innerHTML="";
        id4.innerHTML="";
        id5.innerHTML="";
        
        
        var num=document.getElementById("loan").value; 
        var num1=document.getElementById("tenure").value;
        var num2=document.getElementById("roi").value;  
        if (isNaN(num)){  
          id3.innerHTML="Invalid input";  
          flag=false;
        }
        if (isNaN(num1)){  
          id4.innerHTML="Invalid input";  
          flag=false;
        }
        if (isNaN(num2)){  
          id5.innerHTML="Invalid input";  
          flag=false;
        }
        
        if(flag) {
            emi_calculate();
        }
        return flag;  
           
        }  

        function eligibility_calculate() {
           
              var x = 60;
              var y = 0.6;
             
              var z =  document.getElementById("income").value;
               
          
              var cal= x *(y*z);
              
              document.getElementById("e1").innerHTML = "The estimated loan amount is : " +cal;
              

        }

        function emi_calculate() {
           
           var p = document.getElementById("loan").value;
           var n = document.getElementById("tenure").value;
           var r = document.getElementById("roi1").value;

            
           
             var prate = (p * r * Math.pow((1+r),n))/(Math.pow((1+r),n)-1);
             var emi = Math.ceil(prate * 100) / 100;
           
           document.getElementById("e2").innerHTML = "The Estimated EMI Amount is : " +emi;
           

     }
        

        </script>
        

<body>
        
 <div class="container">
      
     <div class="card1"  >
     <div class="front">
            <h1>Eligibility Calculator</h1>
            <form >
                    <center>
					<table cellpadding=9px; class="t1">
                
                        
                    <th > Monthly Income  </th> 
                    <td ><input type="text" min="0"name="income" id="income">
                        <div id="id1"></div>
                    </td>
                    </tr>
                </div> 

                    <tr>
                            <th>Rate Of Interest</th>
                            <td><input type="text" name="roi" id="roi" value="8.5" readonly="readonly">
                                <div id="id2"></div></td>
                            </tr>

                            <tr colspan=2>
                                    <td>
                                    
                                    </td>
                                 
                                    <td><button type="button"  align="center" onclick="myFunction()">Calculate</button>
                                        <div id="cal1">
                                            </div>
                                    </td>
                                     </tr>
                        	 <tr>   
                            <td><div id="e1" ></div> </td>
          							   </tr>
                                    </table>
                                </center>
                            </form>
                            </div>
                            	 </div>
                            	  </div>
                            	  </div>
    
    <div class="container">
        <div class="card2"  >
        <div class="front">
        
                <form>
                        <center>
                            <h1>EMI Calculator</h1>
                        <table cellpadding=7px; >
                        <tr>
                        <th> Loan  </th> 
                        <td><input type="text" name="loan" id="loan">
                            <div id="id3"></div></td></td>
                        </tr>
                        
                        
                        <tr>
                        <th>Tenure</th>
                        <td><input type="text" name="tenure" id="tenure" placeholder="Loan period in months"> <div id="id4"></div></td></td>
                        </tr>
                        
                        

                        <tr>
                        <th>Rate Of Interest</th>
                        <td><input type=""  name="roi" id="roi1" value="8.5" readonly="readonly"> <div id="id5"></div></td></td>
                        </tr>
                        
                        <tr colspan="2" align="center">

                        <td></td>

                       <td> <button type="button"  onclick="myFunction1()">Calculate</button></td>
                  			</tr>
                        <td><div id="e2"></div></td>
                        </tr>
                      
                        </table>
                        
                        </center>
                        </form>
              
        			</div>
        
       				 </div>
       					 </div>
   						 </div>
   						 </body>
    