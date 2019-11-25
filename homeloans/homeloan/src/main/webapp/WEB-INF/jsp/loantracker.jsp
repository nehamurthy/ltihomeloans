<%-- LoanTracker Template and css by Trupti Mohite --%>
<%-- LoanTracker Validations and linkings by Neha Murthy --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Loan Tracker</title>
<link rel="stylesheet" href="assets/css/loantracker.css">

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
</style>

<!-- <script src="assets/js/loantracker.js"></script> -->
<script>
	function checkProgress() {
	
		var status = '${applicationstatus.status}';
		alert(status);
		if(status === "V") {
			
			document.getElementById("v").className = "active";
		}
		else if(status === "A") {
			
			document.getElementById("a").className = "active";
		}
		else if(status === "AG") {
			
			document.getElementById("ag").className = "active";
		}
	}
</script>
</head>
<body onload="return checkProgress()">
	<%-- ${applicationstatus.status} --%>
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
</ul>

	<form>
		<center><br><br>
		<h4>Application ID: ${appid}</h4>
		<div class="container">
		    <ul class="progressbar">
		       
		        <li id="as" class="active">Application Submitted</li>
		        <li id="v">Verified</li>
		        <li id="a">Approved</li>
		        <li id="ag">Account Generated</li>
		</ul>
			
</body>
</html>