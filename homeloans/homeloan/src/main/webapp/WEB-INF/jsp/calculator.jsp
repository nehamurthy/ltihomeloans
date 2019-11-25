<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="assets/css/main.css">
<title>Insert title here</title>
</head>

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
      //
        flag=true;
        var id3=document.getElementById("id3") ;
        var id4=document.getElementById("id4") ;
        var id5=document.getElementById("id5") ;
        id3.innerHTML="";
        id4.innerHTML="";
        id5.innerHTML="";
        
        
        var num=document.getElementById("loan").value; 
        var num1=document.getElementById("roi").value;
        var num2=document.getElementById("tenure").value;  
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
   
    var principal = document.loandata.principal.value;
    var interest = document.loandata.interest.value/100/12;
    var payments = document.loandata.years.value * 12;

   
    var x = Math.pow(1 + interest, payments);
    var monthly = (principal*x*interest)/(x-1);

   
    if (!isNaN(monthly) && 
        (monthly != Number.POSITIVE_INFINITY) &&
        (monthly != Number.NEGATIVE_INFINITY)) {

        document.loandata.payment.value = round(monthly);
        document.loandata.total.value = round(monthly * payments);
        document.loandata.totalinterest.value = 
            round((monthly * payments) - principal);
    }
    /* 
    else {
        document.loandata.payment.value = "";
        document.loandata.total.value = "";
        document.loandata.totalinterest.value = "";
    } */
}


function round(x) {
  return Math.round(x*100)/100;
}
</script>
        

<body>

 
  <div class="nan">
   <div class="a1">  <IMG STYLE="float:right " SRC="assets/img/signup.png" width="80px" height="80px"></div>
            <h1 ><u><center>LTI Home Loans</h1></center></u>
           <p text-align="center"><i>Lending for Real Life</i></p>

     	 </div>
       <ul>
  <li><a class="active" href="home.jsp">Home</a></li>
  <li><a href="includes/AboutUs.html">About Us</a></li>
  <li><a href="calculator.do">Calculator</a></li>
  <li><a href="login.do">Apply Now</a></li>
  <li><a href="register.do">Registration</a></li>
  <li><a href="login.do">Login</a></li>
  <li><a href="includes/faq1.html">FAQ</a></li>
</ul>
       
<br><br><br>
 <!-- <div class="container1"> -->
 		<div class="row">
 		<div class="column">
        <div class="card1">
                <div class="front2"> 
   
            <form >
                    <h1>Eligibility Calculator</h1>
					<table cellpadding=9px; >
                
                        
                    <td> Monthly Income  </td> 
                    <td ><input type="text" min="0"name="income" id="income" onchange="myFunction()">
                        <div id="id1" class="error"></div>
                    </td>
                    </tr>
                </div> 

                    <tr>
                            <td>Rate Of Interest(%)</td>
                            <td><input type="text" name="roi" id="roi" value="8.5" readonly="readonly"">
                                <div id="id2" class="error"></div>
                            <!-- <div id="e1"></td> -->
                            </tr>

                                    <td>
                                    
                                            <div id="e1"></td>
                                    <!-- <td><button type="button" value="compute" onclick="myFunction()">Calculate</button>
                                        <div id="cal1">
                                            </div> -->
                                    </td>
                                     </tr>
                                     
                       <tr>
                       <td colspan=1>
                    <td><h1><input type="button" value="Calculate" class="a" style="font-size:18px" onclick="myFunction()" ></h1></td></td>
       					
                </tr>
                      
                                     
                                     
                        	 <tr>   
                            <td><div id="e1"  ></div> </td>
          							   </tr>
                                    </table>
                               
                            </form>
                            </div>
                            	 </div>
                                  </div>
                             
                            	  </div>
                            	  
                            	 
    
         <!--                                  
            <div class="container2"> -->
            		<!-- <div class="row2"> -->
                    <div class="column2">
                    <div class="card2">
                            <div class="front2">
                
                       

            <form name="loandata">
                    <table>
						<center>
                        <h1>EMI Calculator</h1></center>
                       
                            <td colspan="2">
                      <tr>
                       
                        
                        <td>Amount of the loan</td>
                        <td><input type="text" name="principal" id="loan" size="12" 
                                   onchange="myFunction1();"><div id="id3" class="error"></div></td>
                      </tr>
                      <tr>
                        
                        <td> Rate of interest (%):</td>
                        <td><input type="text" name="interest" value="8.5"  id="roi"readonly="true" size="12" 
                                   onchange="myFunction1();"><div id="id4" class="error"></div></td>
                      </tr>
                      <tr>
                       
                        <td>Tenure(years)</td>
                        <td><input type="text" name="years"id="tenure"size="12" 
                                   onchange="myFunction1();"><div id="id5" class="error"></td>
                      </tr>
               <!--  <tr><td colspan="3">
                            <button class="button button1" value="Calculate" onclick="myFunction1();">Calculate</button>
                        </td></tr>  -->
                            <br><br>
                      <tr><td colspan="10">
                      
                        <h2>EMI Information:</h2>
                       
                      </td></tr>
                     
                      <tr cellpadding="2">
                        
                        <td>Your Monthly EMI will be:</td>
                        <td><input type="text" name="payment" size="12"></td>
                      </tr>
                      <tr>
                        
                        <td>Your Total Loan Amount will be:</td>
                        <td><input type="text" name="total" size="12"></td>
                      </tr>
                      <tr>
                       
                        <td>Your Total Interest on Loan will be:</td>
                        <td><input type="text" name="totalinterest" size="12"></td>
                      </tr>
                      
                   <tr>
                       <td colspan="1">
                    <td><h1><input type="button" value="Calculate" class="b" style="font-size:18px"  onclick="myFunction1();"></h1></td></td>
       
                </tr>
                     
                      
                    </table>
                  </form>
                  
            
        			</div>
        			</div>
       	 			</div>
       
       			 </div>
   				 </div>




</body>
</html>