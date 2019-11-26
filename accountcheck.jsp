<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="assets/css/account.css">
<title>Insert title here</title>
</head>
<body>

  <div class="nan">
    <IMG STYLE="float:right " SRC="assets/img/signup.png" width="80px" height="80px">
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
       


 <form  method="post" action="accountcheck.do">>
<center>
<table border=0 cellpadding=7px; >

<tr> &nbsp;&nbsp;&nbsp;&nbsp;

<th>Account Number </th> 
<td><input type="number" name="account" id="account"></td>
</tr>

<tr colspan=2>
<td>
</td>
<td> &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="submit" id="submit" value="Check"></td>

 ${message}
</table>
</center>
</form>
</body>

</html>