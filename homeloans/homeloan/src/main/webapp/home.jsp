
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="assets/css/home.css"> -->
<style>

        
        .ul1 {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

.li1 {
  float: left;
}

.li1 a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.li1 a:hover {
  background-color: #1abc9c;
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
.table1, .th1, .td1 {
  border: 1px solid black;
  text-align: center;
  
}
.th1 {
  background-color :#1abc9c;
  color:black;
}

tr:nth-child(odd){background-color: #85eed9}

.table1 {
  border-collapse: collapse;
  width: 37%;
  height: 37%;
  margin-left: 10px;
  display: inline-block;
}

.th1 {
  height: 50px;
}
.footer {
  background-color:#1abc9c;
  padding: 10px;
  text-align: right;
}
.main_banner {
            margin: 0px;
            padding: 0px;
            width: 100%;
            background-image: url("assets/img/d.jpg");
            background-position: top;
            background-repeat: no-repeat;
            background-size: cover;
            height: 417px;
        }
       input[type=button], input[type=submit] {
  background-color: #1abc9c; /* Green */
  border: none;
  color: white;
  padding: 8px 16px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

.table2 {

	margin-top: -155px;
	margin-right: 120px;
}

</style>
</head>
<body>
	
     
      <div class="a"><IMG STYLE="float:right; " SRC="assets/img/signup.png" width="80px" height="80px"></div>

        <div class="nan">
           <u><center><h1>LTI Home Loans</h1></center></u>
            <p><i>Lending for Real Life</i></p>
           
        </div>
<ul class="ul1">
  <li class="li1"><a class="active" href="home.jsp">Home</a></li>
  <li class="li1"><a href="includes/AboutUs.html">About Us</a></li>
  <li class="li1"><a href="calculator.jsp">Calculator</a></li>
  <li class="li1"><a href="login.do">Apply Now</a></li>
  <li class="li1"><a href="register.do">Register</a></li>
  <li class="li1"><a href="login.do">Login</a></li>
  <li class="li1"><a href="includes/faq1.html">FAQ</a></li>
  <li class="li1"><a href="adminlogin.do">Admin login</a></li>
</ul>

<div class="main_banner"></div>
<br><br>


<div>
<table class="table1">
  <tr class="tr1">
    <th class="th1">Home Loan Schemes</th>
    <th class="th1">Interest Rate For Women</th>
    <th class="th1">Interest Rate For Others</th>
  </tr>
  <tr class="tr1">
    <td class="td1">Home Loan</td>
    <td class="td1">8.25%-9.75%</td>
    <td class="td1">8.40%-9.80%</td>
  </tr>
  <tr class="tr1">
    <td class="td1">Plot Loan</td>
    <td class="td1">8.55%-9.95%</td>
    <td class="td1">8.60%-10.00%</td>
  </tr>
  <tr class="tr1">
    <td class="td1">Home Improvement Loan</td>
    <td class="td1">8.25%-9.75%</td>
    <td class="td1">8.40%-9.80%</td>
  </tr>
  <tr>
    <td class="td1">Top Up Loan</td>
    <td class="td1">8.30% onwards</td>
    <td class="td1">8.30% onwards</td>
  </tr>
</table>
&nbsp;
<form action="trackapp.do" method="post">
	<table class="table2" cellpadding=6 style="float:right;">
		<tr>
			<th style="background-color:#1abc9c;" colspan=2>Track Your Application</th>
		</tr>
		<tr>
			<td>Application ID</td>
			<td><input type="text" name="appid" id="appid"></td>
		</tr>
		
		<tr style="background-color: white;">
			<td>Date of Birth</td>
			<td><input type="date" name="dob" id="dob"></td>
		</tr>
		
		<tr>
			<td colspan=2 align="center"><input type="submit" value="Track Your Application"></td>
		</tr>
	</table>
</form>
</div>

<br><br><br><br><br><br><br><br>
<div class="footer">
        <p>Contact us: 022-2452656<br>
            Location:Mahape,Navi Mumbai<br>
            Email-Id:sendquery@lntinfotech.com<br>


        </p>
      </div>

</body>

</html>