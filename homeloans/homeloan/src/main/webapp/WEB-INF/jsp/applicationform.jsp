<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Apply for a Home Loan</title>

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Overpass:300,400,600,800'>
<link rel="stylesheet" href="assets/css/style.css">

<script src="assets/js/script.js"></script>

</head>
<body onload="initTab()">

  <div class="a"><IMG STYLE="  float:right; " SRC="assets/img/signup.png" width="80px" height="80px"></div>

        <div class="nan">
            <h1 ><u><center>LTI Home Loans</h1></center></u>
            <p ><i>Lending for Real Life</p></i>
           
        </div>

	<div class="tabset">
  <!-- Tab 1 -->
  <input type="radio" name="tabset" id="tab1" aria-controls="personaldetails">
  <label for="tab1">Personal Details</label>
  <!-- Tab 2 -->
  <input type="radio" name="tabset" id="tab2" aria-controls="incomedetails">
  <label for="tab2">Income Details</label>
  <!-- Tab 3 -->
  <input type="radio" name="tabset" id="tab3" aria-controls="propertydetails">
  <label for="tab3">Property Details</label>
  <!-- Tab 4 -->
  <input type="radio" name="tabset" id="tab4" aria-controls="loandetails">
  <label for="tab4">Loan Details</label>
  <!-- Tab 5 -->
  <input type="radio" name="tabset" id="tab5" aria-controls="uploaddocuments">
  <label for="tab5">Upload Documents</label>
  
  <div class="tab-panels">
    <section id="personaldetails" class="tab-panel">
      <h2>Personal Details</h2>
		<div class="personaldetails_form">
			<form action="application.do" modelAttribute="applicants" method="post" enctype="multipart/form-data">
				<table cellpadding=10>
					<tr>
						<td>Phone Number</td>
						<td><input type="text" name="phone" id="phone" maxlength=10><div id="error_phone"></div></td>
					</tr>
					<tr>
						<td>Date Of Birth</td>
						<td><input type="date" name="dob" id="dob"><div id="error_dob"></div></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td>
							<input type="radio" name="gender" id="gender" value="male">Male
							<input type="radio" name="gender" id="gender" value="female">Female
						</td>
					</tr>
					<tr>
						<td>Nationality</td>
						<td><input type="text" name="nationality" id="nationality"><div id="error_nat"></div></td>
					</tr>
					<tr>
						<td>Aadhar Number</td>
						<td><input type="text" name="aadharno" id="aadharno"><div id="error_aadhar"></div></td>
					</tr>
					<tr>
						<td>PAN Number</td>
						<td><input type="text" name="panno" id="panno"><div id="error_pan"></div></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="button" value="Next" onclick="return validatePersonal()"></td>
					</tr>
				</table>
			
		</div>
  </section>
    <section id="incomedetails" class="tab-panel">
      <h2>Income Details</h2>
		<div class="personaldetails_form">
			<!-- <form action="income.do"> -->
				<table border=0 cellpadding=10>
					<tr id="toe">
						<td>Type of Employment</td>
						<td>
							<select name="typeofemp" id="typeofemp" onchange="displayFields()">
								<option value="-1">--Select--</option>
								<option value="salaried">Salaried</option>
								<option value="self-employed">Self-Employed</option>
							</select>&nbsp;
							<div id="error_toe"></div>
						</td>
					</tr>
					
					<tr class="f1" id="field1">
						<td>Retirement Age</td>
						<td>
							<select name="retire" id="retire">
								<option value="-1">--Select--</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
								<option value="32">32</option>
								<option value="33">33</option>
								<option value="34">34</option>
								<option value="35">35</option>
								<option value="36">36</option>
								<option value="37">37</option>
								<option value="38">38</option>
								<option value="39">39</option>
								<option value="40">40</option>
								<option value="41">41</option>
								<option value="42">42</option>
								<option value="43">43</option>
								<option value="44">44</option>
								<option value="45">45</option>
								<option value="46">46</option>
								<option value="47">47</option>
								<option value="48">48</option>
								<option value="49">49</option>
								<option value="50">50</option>
								<option value="51">51</option>
								<option value="52">52</option>
								<option value="53">53</option>
								<option value="54">54</option>
								<option value="55">55</option>
								<option value="56">56</option>
								<option value="57">57</option>
								<option value="58">58</option>
								<option value="59">59</option>
								<option value="60">60</option>
								<option value="61">61</option>
								<option value="62">62</option>
								<option value="63">63</option>
								<option value="64">64</option>
								<option value="65">65</option>
								<option value="66">66</option>
								<option value="67">67</option>
								<option value="68">68</option>
								<option value="69">69</option>
								<option value="70">70</option>
							</select>
							<div id="error_rage"></div>
						</td>
					</tr>
					
					<tr class="f1" id="field2">
						<td>Monthly Salary</td>
						<td><input type="text" name="msal" id="msal"><div id="error_sal"></div></td>
					</tr>
					
					<tr class="f1" id="field3">
						<td>Turnover</td>
						<td><input type="text" name="turnover" id="turnover" placeholder="Enter annual turnover"><div id="error_turnover"></div></td>
					</tr>
					
					<tr class="f1" id="field4">
						<td>Nature of Business</td>
						<td>
							<select name="nob" id="nob">
								<option value="-1">--Select--</option>
								<option value="voluntary">Voluntary</option>
								<option value="statutory">Statutory</option>
								<option value="private">Private</option>
							</select>
							<div id="error_nob"></div>
						</td>
					</tr>
					
					<tr class="f1" id="field5">
						<td>Business Vintage</td>
						<td><input type="number" name="vintage" id="vintage"><div id="error_vintage"></div></td>
					</tr>
					
					<!-- <tr class="f1" id="field6">
						<td>Income Tax Return</td>
						<td><input type="text" name="itr" id="itr"></td>
					</tr> -->
					
					<tr class="f1" id="field7">
						<td>Organization Type</td>
						<td>
							<select name="otype" id="otype">
								<option value="-1">--Select--</option>
								<option value="media">Media</option>
								<option value="textile">Textile Industry</option>
								<option value="banking">Banking</option>
								<option value="insurance">Insurance</option>
								<option value="digitalmarketing">Digital Marketing</option>
								<option value="sales">Sales</option>
								<option value="accountancy">Accountancy</option>
								<option value="it">IT</option>
								<option value="automobiles">Automobiles</option>
							</select>&nbsp;
							<div id="error_otype"></div>
						</td>
					</tr>
					
					<!-- <tr class="f1" id="field8">
						<td>Employer Name</td>
						<td><input type="text" name="ename" id="ename"><div id="error_ename"></div></td>
					</tr> -->
					
					<tr>
						
						<td colspan="2" align="center"><input type="button" value="Next" onclick="return validateIncome()"></td>
					</tr>
					
				</table>
			
		</div>
    </section>
    <section id="propertydetails" class="tab-panel">
      <h2>Property Details</h2>
      <div class="personaldetails_form">
			<!-- <form action="Login.html"> -->
				<table border=0 cellpadding=10>
				
					<tr>
					<td>Have you identified a property?</td>
						<td>
							<input type="radio" name="prop" id="prop" value="yes" onclick="displayProps()">Yes
							<input type="radio" name="prop" id="prop" value="no" onclick="displayProps()">No
							<div id="error_toe"></div>
						</td>
					</tr>
					<tr class="f1" id="prop1">
						<td>Property Location</td>
						<td>
							<select name="ploc" id="ploc">
								<option value="-1">--Select--</option>
								<option value="mumbai">Mumbai</option>
								<option value="delhi">Delhi</option>
								<option value="kolkata">Kolkata</option>
								<option value="bengaluru">Bengaluru</option>
								<option value="hyderabad">Hyderabad</option>
								<option value="chennai">Chennai</option>
								<option value="surat">Surat</option>
								<option value="pune">Pune</option>
								<option value="nashik">Nashik</option>
							</select>&nbsp;
							<div id="error_ploc"></div>
						</td>
					</tr>
					<tr class="f1" id="prop2">
						<td>Property Name</td>
						<td><input type="text" name="pname" id="pname"><div id="error_pname"></div></td>
					</tr>
					<tr class="f1" id="prop3">
						<td>Estimated Amount</td>
						<td><input type="text" name="eamt" id="eamt"><div id="error_eamt"></div></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="button" value="Next" onclick="return validateProps()"></td>
					</tr>
				</table>
			
		</div>
    </section>
	 <section id="loandetails" class="tab-panel">
      <h2>Loan Details</h2>
     <div class="personaldetails_form">
			<!-- <form action="Login.html"> -->
				<table cellpadding=10>
				
					<tr>
						<td>Loan Amount</td>
						<td><input type="text" name="lamt" id="lamt"><div id="error_lamt"></div></td>
					</tr>
				
					<tr>
						<td>Down payment required</td>
						<td><input type="text" name="downpayment" id="downpayment"><div id="error_dp"></div></td>
					</tr>
					
					<tr>
						<td>Percentage of down payment required</td>
						<td><input type="text" name="downpayment_pct" id="downpayment_pct"><div id="error_pct"></div></td>
					</tr>
					
					<tr>
						<td>Tenure</td>
						<td><input type="text" name="tenure" id="tenure"><div id="error_tenure"></div></td>
					</tr>
					
					<tr>
						<td colspan="2" align="center"><input type="button" value="Next" onclick="return validateLoan()"></td>
					</tr>
				</table>
			<!-- </form> -->
		</div>
    </section>
	 <section id="uploaddocuments" class="tab-panel">
      <h2>Upload Documents</h2>
      <table cellpadding=10>
      
      	<tr>
      		<td>ID Proof</td>
      		<td><input type="file" name="file" id="idproof"></td>
      	</tr>
      	<tr>
      		<td>Age Proof</td>
      		<td><input type="file" name="file" id="ageproof"></td>
      	</tr>
      	<tr>
      		<td>Address Proof</td>
      		<td><input type="file" name="file" id="addressproof"></td>
      	</tr>
      	<tr>
      		<td>Income Proof</td>
      		<td><input type="file" name="file" id="incomeproof"></td>
      	</tr>
      	<tr>
      		<td>Property Proof</td>
      		<td><input type="file" name="file" id="propertyproof"></td>
      	</tr>
      	<tr>
			<td colspan="2" align="center"><input type="submit" value="Submit"></td>
		</tr>
	</table>
	</form>
      <!-- <p><strong>Overall Impression:</strong> A dark, strong, malty German lager beer that emphasizes the malty-rich and somewhat toasty qualities of continental malts without being sweet in the finish.</p>
      <p><strong>History:</strong> Originated in the Northern German city of Einbeck, which was a brewing center and popular exporter in the days of the Hanseatic League (14th to 17th century). Recreated in Munich starting in the 17th century. The name “bock” is based on a corruption of the name “Einbeck” in the Bavarian dialect, and was thus only used after the beer came to Munich. “Bock” also means “Ram” in German, and is often used in logos and advertisements.</p> -->
    </section>
  </div>
  
</div>
</body>
</html>